all: generate typeahead


generate: generateLarge.cpp
	g++ -std=c++0x generateLarge.cpp -o generate

typeahead:typeahead_search.cc
	g++ -std=c++0x typeahead_search.cc -o typeahead
clean:
	rm -f generate typeahead
