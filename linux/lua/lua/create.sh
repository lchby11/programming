DIR=`pwd`
find -L $DIR -name "*.h" -o -name "*.c" > $DIR/cscope_source.files
cscope -bkq -i $DIR/cscope_source.files  -f cscope_source.out
