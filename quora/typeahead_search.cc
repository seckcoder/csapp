


#include <iostream>
#include <sstream>
#include <map>
#include <vector>
#include <set>
#include <cassert>

using namespace std;

enum class ContentType {USER = 0, TOPIC, QUESTION, BOARD};
enum class BoostType {USER = 0, TOPIC, QUESTION, BOARD, USERID };
enum class CommandType {ADD = 0, QUERY, DEL, WQUERY };
inline bool contentBoostTypeEqual(ContentType t1, BoostType t2) {
  return size_t(t1) == size_t(t2);
}

class ParseError : std::exception {
  const char* what() const noexcept {
    return "Parse Error for Command";
  }
};

inline bool isDigit(char c) {
  return c >= '0' && c <= '9';
}

void split(const string &line, char delimiter, vector<string> &res_strs) {
  stringstream stream(line);
  string one_word;
  while (getline(stream, one_word, delimiter)) {
    if (!one_word.empty()) res_strs.push_back(one_word);
  }
}

void matchstring_(const string &line, const string &expected, size_t &start) {
  if (line.length() - start < expected.length()) throw ParseError();
  for (int j = 0;
      start < line.length() && j < expected.length();
      start++, j++) {
    if (line[start] != expected[j]) {
      throw ParseError();
    }
  }
}

void skipSpaces_(const string &line, size_t &start) {
  while (start < line.length() && line[start] == ' ') start++;
}

inline string restStr_(const string &line, size_t &start) {
  size_t tmp = start;
  start = line.length();
  return line.substr(tmp, string::npos);
}

string substrUntil(const string &line, char delimiter, size_t &start) {
  int tmp = start;
  while (start < line.length() && line[start] != delimiter) start += 1;
  return line.substr(tmp, start-tmp);
}

int parseInt_(const string &line, size_t &start) {
  string tmp_str = substrUntil(line, ' ', start);
  int ans = stoi(tmp_str);
  return ans;
}
float parseFloat_(const string &line, size_t &start) {
  string tmp_str = substrUntil(line, ' ', start);
  float ans = std::stof(tmp_str);
  return ans;
}

inline char toLower(char c) {
  if (c >= 'A' && c <= 'Z') {
    return (c - 'A') + 'a';
  }
  return c;
}
// convert line to lower case
void toLower(string &line) {
  for (int i = 0; i < line.length(); i++) {
    line[i] = toLower(line[i]);
  }
}


class Content {
  public:
    ContentType type;
    string id;
    float score;
    vector<string> tokens;
    int time;
    //string data_str;
    void parseContentType(const string &line, size_t &start) {
      string type_v = substrUntil(line, ' ', start);
      if (type_v == "user") {
        type = ContentType::USER;
      } else if (type_v == "topic") {
        type = ContentType::TOPIC;
      } else if (type_v == "question") {
        type = ContentType::QUESTION;
      } else if (type_v == "board") {
        type = ContentType::BOARD;
      } else {
        throw ParseError();
      }
    }
    void parse(const string &line, size_t &start) {
      parseContentType(line, start);
      skipSpaces_(line, start);
      id = substrUntil(line, ' ', start);
      skipSpaces_(line, start);
      score = parseFloat_(line, start);
      skipSpaces_(line, start);
      tokens.clear();
      string rest_s = restStr_(line, start); 
      toLower(rest_s);
      split(rest_s, ' ', tokens);
    }
    void copyCompareInfo(const Content &c) {
      type = c.type;
      id = c.id;
      score = c.score;
      time = c.time;
    }
};


class Boost {
  public:
    BoostType type;
    string id;
    float boost;
    void parseType(const string &line, size_t &cur) {
      string type_v = substrUntil(line, ':', cur);
      if (type_v == "user") {
        type = BoostType::USER;
      } else if (type_v == "topic") {
        type = BoostType::TOPIC;
      } else if (type_v == "question") {
        type = BoostType::QUESTION;
      } else if (type_v == "board") {
        type = BoostType::BOARD;
      } else {
        type = BoostType::USERID;
        id = type_v;
      }
    }
    void parse(const string &line, size_t &cur) {
      if (line.empty()) throw ParseError();
      parseType(line, cur);
      cur += 1; // skip ':'
      boost = parseFloat_(line, cur);
    }
};


class Node {
  public:
    typedef map<char, Node *> BranchMap;
    bool empty() const {
      // no ids and no branches
      return ids.empty() && branches.empty();
    }
    void insert(const string &data, const string &id) {
      insertRec(data, 0, id);
    }
    void insertRec(const string &data, int cur, const string &id) {
      ids.insert(id);
      if (cur >= data.length()) {
        return;
      }
      BranchMap::iterator it = branches.find(data[cur]);
      if (it == branches.end()) {
        Node *pn = new Node();
        branches.insert(std::pair<char, Node*>(data[cur], pn));
        pn->insertRec(data, cur+1, id);
      } else {
        it->second->insertRec(data, cur+1, id);
      }
    }
    void remove(const string &data, const string &id) {
      removeRec(data, 0, id);
    }
    void removeRec(const string &data, int cur, const string &id) {
      ids.erase(id);
      if (cur >= data.length()) {
        return ;
      }
      // the id to be removed surely exist
      Node *pn = branches.find(data[cur])->second;
      pn->removeRec(data, cur+1, id);
      // delete when empty
      if (pn->empty()) {
        delete pn;
        branches.erase(data[cur]); // remove the node
      }
    }
    // given a query return a matching node
    Node *query(const string &query) const {
      return queryRec(query, 0);
    }
    Node *queryRec(const string &query, int cur) const {
      BranchMap::const_iterator const_it = branches.find(query[cur]);
      if (const_it == branches.end()) {
        return NULL;
      }
      Node *pn = const_it->second;
      if (cur == query.length() - 1) {
        // if cur is last character, return the matching node.
        return pn;
      } else {
        return pn->queryRec(query, cur+1);
      }
    }

    void free() {
      // delete memory
      for (BranchMap::iterator it = branches.begin();
          it != branches.end();
          it++) {
        it->second->free();
        delete (it->second);
      }
    }
    
    set<string> ids;

  private:
    BranchMap branches;
};

inline bool compContent(
    const Content &content1,
    const Content &content2) {
  return (content1.score > content2.score ||
      (content1.score == content2.score &&
       content1.time > content2.time));
}


class Trie {
  public:
    Trie() : _timer(0) {}
    ~Trie() {
      root.free();
    }
    Node root;
    typedef map<string, Content> ContentMap;
    ContentMap content_map;
    void add(const Content &content) {
      if (content_map.find(content.id) != content_map.end()) return;
      content_map[content.id] = content;
      content_map[content.id].time = _timer;
      _timer += 1;
      for (int i = 0; i < content.tokens.size(); i++) {
        root.insert(content.tokens[i], content.id);
      }
    }
    void del(const string &id) {
      if (content_map.find(id) == content_map.end()) return;
      Content &content = content_map[id];
      for (int i = 0; i < content.tokens[i].size(); i++) {
        root.remove(content.tokens[i], content.id);
      }
      content_map.erase(id);
    }
    // given a query, return the node that match the query
    Node *query(const string &query) const {
      assert(!query.empty());
      return root.query(query);
    }

    // given tokens, return ids that match the query tokens
    void query(const vector<string> &tokens, vector<string> &query_ids) const {
      vector<Node *> nodes;

      // get all matching nodes for given query
      for (int i = 0; i < tokens.size(); i++) {
        Node *pn = query(tokens[i]);
        if (!pn) return; // can't find node for the token, directly break
        nodes.push_back(pn);
      }
      assert(!nodes.empty());

      query_ids.clear();
      Node *pn0 = nodes[0];
      for (set<string>::const_iterator const_it0 = pn0->ids.begin();
          const_it0 != pn0->ids.end();
          const_it0++) {
        bool match_for_all = true;
        for (int i = 1; i < nodes.size(); i++) {
          Node *pni = nodes[i];
          if (pni->ids.find(*const_it0) == pni->ids.end()) {
            // no match for pni
            match_for_all = false;
            break;
          }
        }
        if (match_for_all) query_ids.push_back(*const_it0);
      }
      if (!query_ids.empty()) sortQueryIds(query_ids);
    }


    // sort query ids according to content map info
    void sortQueryIds(vector<string> &query_ids) const {
      vector<Content> query_infos(query_ids.size());
      for (int i = 0; i < query_ids.size(); i++) {
        query_infos[i].copyCompareInfo(content_map.find(query_ids[i])->second);
      }
      std::sort(query_infos.begin(), query_infos.end(), compContent);
      for (int i = 0; i < query_infos.size(); i++) {
        query_ids[i] = query_infos[i].id;
      }
    }


    void sortQueryIdsBoosted(const vector<Boost> &boosts,
        vector<string> &query_ids) const {
      vector<Content> query_infos(query_ids.size());
      for (int i = 0; i < query_ids.size(); i++) {
        query_infos[i].copyCompareInfo(content_map.find(query_ids[i])->second);
        //query_infos[i] = content_map.find(query_ids[i])->second;
        Content &content = query_infos[i];
        for (int j = 0; j < boosts.size(); j++) {
          switch (boosts[j].type) {
            case BoostType::USERID:
              if (content.id == boosts[j].id) {
                content.score *= boosts[j].boost;
              }
              break;
            default:
              if (contentBoostTypeEqual(content.type, boosts[j].type)) {
                content.score *= boosts[j].boost;
              }
              break;
          }
        }
      }
      std::sort(query_infos.begin(), query_infos.end(), compContent);
      for (int i = 0; i < query_infos.size(); i++) {
        query_ids[i] = query_infos[i].id;
      }
    }
    void wquery(const vector<string> &tokens,
        const vector<Boost> &boosts, vector<string> &res_ids) const {
      query(tokens, res_ids);
      sortQueryIdsBoosted(boosts, res_ids);
    }

  private:
    int _timer;
};


class CommandBase {
  public:
    virtual void parse(const string &line) {
      _cur = 0;
    };
    void matchString(const string &line, const string &expected) {
      matchstring_(line, expected, _cur);
    }
    void skipSpaces(const string &line) {
      skipSpaces_(line, _cur);
    }
    int parseInt(const string &line) {
      return parseInt_(line, _cur);
    }
    float parseFloat(const string &line) {
      return parseFloat_(line, _cur);
    }
    string restStr(const string &line) {
      return restStr_(line, _cur);
    }
  protected:
    size_t _cur;
};

class CommandAdd : public CommandBase {
  public:
    Content content;
    void parse(const string &line) {
      CommandBase::parse(line);
      matchString(line, "ADD");
      skipSpaces(line);
      content.parse(line, _cur);
    }
};

class CommandQuery: public CommandBase {
  public:
    int num_res;
    vector<string> tokens;
    virtual void parse(const string &line) {
      CommandBase::parse(line);
      tokens.clear();
      matchString(line, "QUERY");
      skipSpaces(line);
      num_res = parseInt(line);
      skipSpaces(line);
      string rest_s = restStr(line);
      toLower(rest_s);
      split(rest_s, ' ', tokens);
    }
};

class CommandDel: public CommandBase {
  public:
    string id;
    virtual void parse(const string &line) {
      CommandBase::parse(line);
      matchString(line, "DEL");
      skipSpaces(line);
      id = restStr(line);
    }
};


class CommandWQuery: public CommandBase {
  public:
    vector<Boost> boosts;
    int num_res;
    vector<string> tokens;
    virtual void parse(const string &line) {
      CommandBase::parse(line);
      matchString(line, "WQUERY");
      skipSpaces(line);
      num_res = parseInt(line);
      skipSpaces(line);
      int num_boost = parseInt(line);
      skipSpaces(line);
      if (num_boost > 0) {
        boosts.resize(num_boost);
        for (int i = 0; i < num_boost; i++) {
          boosts[i].parse(line, _cur);
          skipSpaces(line);
        }
      }
      string rest_s = restStr(line);
      toLower(rest_s);
      split(rest_s, ' ', tokens);
    }
};

class Command {
  public:
    void parse(ifstream &ifs) {
      string type;
      ifs >> type;
      if (type == "ADD") {
        cmd_add.parse(ifs);
      }
    }
    CommandAdd cmd_add;
    CommandQuery cmd_query;
    CommandDel cmd_del;
    CommandWQuery cmd_wquery;
};

void execute(
    const CommandAdd &cmd_add, Trie &trie) {
  trie.add(cmd_add.content);
}
void execute(
    const CommandDel &cmd_del, Trie &trie) {
  trie.del(cmd_del.id);
}
void execute(
    const CommandQuery &cmd_query, const Trie &trie) {
  vector<string> ids;
  trie.query(cmd_query.tokens, ids);
  /* for (int i = 0; i < ids.size() && i < cmd_query.num_res; i++) { */
  /*   printf("%s ", ids[i].c_str()); */
  /* } */
  /* printf("\n"); */
}

void execute(
    const CommandWQuery &cmd_wquery, const Trie &trie) {
  vector<string> ids;
  trie.wquery(cmd_wquery.tokens, cmd_wquery.boosts, ids);
  /* for (int i = 0; i < ids.size() && i < cmd_wquery.num_res; i++) { */
  /*   printf("%s ", ids[i].c_str()); */
  /* } */
  /* printf("\n"); */
}

int main() {
  int cmd_num;
  Command cmd;
  Trie trie;
  scanf("%d\n", &cmd_num);
  string input_line;
  for (int i = 1; i <= cmd_num; i++) {
    //std::getline(std::cin, input_line);
    cmd.parse(std::cin);
    switch (cmd.type) {
      case CommandType::ADD:
        execute(cmd.cmd_add, trie);
        break;
      case CommandType::QUERY:
        execute(cmd.cmd_query, trie);
        break;
      case CommandType::DEL:
        execute(cmd.cmd_del, trie);
        break;
      case CommandType::WQUERY:
        execute(cmd.cmd_wquery, trie);
        break;
    }
  }
  return 0;
}
