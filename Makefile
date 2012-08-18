all: extract_subj

%.o: %.cc
	g++ -I/home/clive/Documents/c++/boost_lib/install/include -c $^ -o $@

extract_subj: extract_subj.o
	g++ -o $@ $^ -L/home/clive/Documents/c++/boost_lib/install/lib -lboost_regex
	
clean:
	rm -f *.o extract_subj
