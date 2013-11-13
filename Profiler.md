## Profiler

### Installation

#### Valgrind 

    $ sudo apt-get install valgrind
	
#### Graphviz (for _dot utility_) 

    $ sudo apt-get install graphviz
	
#### Gprof2dot 

Get from [jrfonseca](http://code.google.com/p/jrfonseca/wiki/Gprof2Dot)

    $ wget http://gprof2dot.jrfonseca.googlecode.com/git/gprof2dot.py

### Usage

#### Collect data

	$ valgrind --tool=callgrind --callgrind-out-file=$CALLGRIND_FILE $EXEC_FILE

#### Convert

    $ gprof2dot.py --format=callgrind --output=$DOT_FILE $CALLGRIND_FILE
    $ dot -Tpng -o $PNG_FILE $DOT_FILE


## Valgrind
	
    $ valgrind -v --leak-check = full --track-origins=yes --show-reachable=yes