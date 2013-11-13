CALLGRIND_FILE=callgrind.out
DOT_FILE=out.dot
PNG_FILE=out.png

if [ x$1 == x ] ; then
    echo "Error: argument expected" 1>&2
    echo "Usage:"
    echo "$0 PATH_TO_EXEC"
    exit -1
fi

valgrind --tool=callgrind --callgrind-out-file=$CALLGRIND_FILE $1
gprof2dot.py --format=callgrind --output=$DOT_FILE $CALLGRIND_FILE
dot -Tpng -o $PNG_FILE $DOT_FILE
