#! /usr/bin/awk -f
BEGIN {
    FS="\n"
    RS=""
}
{
    print $1 ", " $2 ", " $3
}

