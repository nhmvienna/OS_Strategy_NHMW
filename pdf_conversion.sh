#!/bin/bash
sed -i -e 's/<!--begin-->/<!--beginRedo/g' $1
sed -i -e 's/<!--end-->/3nD-->/g' $1
sed -i -e 's/<!--uncommentbegin/<!--uncommentbeginRedo-->/g' $1
sed -i -e 's/uncommentend-->/<!--uncommentendRedo-->/g' $1

pandoc $1 -o $2

sed -i -e 's/<!--beginRedo/<!--begin-->/g' $1
sed -i -e 's/3nD-->/<!--end-->/g' $1
sed -i -e 's/<!--uncommentbeginRedo-->/<!--uncommentbegin/g' $1
sed -i -e 's/<!--uncommentendRedo-->/uncommentend-->/g' $1
