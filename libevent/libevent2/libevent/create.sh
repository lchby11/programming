
DIR=/root/programming/libevent/libevent2/libevent
find -L $DIR -name "*.h" -o -name "*.c" > $DIR/cscope_source.files
cscope -bq -i $DIR/cscope_source.files  -f cscope_source.out

