all: generate typeahead another


generate: generateLarge.cpp
	g++ -std=c++0x generateLarge.cpp -o generate

typeahead:typeahead_search.cc
	g++ -std=c++0x typeahead_search.cc -o typeahead

another:main.cpp
	g++ -std=c++0x main.cpp -o another

clean:
	rm -f generate typeahead
