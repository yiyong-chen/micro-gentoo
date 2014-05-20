#!/bin/bash

find ./ |
while read line
do
	link=`readlink $line`
	if [ $link ]
	then
		dirlink=`dirname $link`
		if [ $dirlink != "." ]
		then
			init_dir=`pwd`
			cd `dirname $line` 
			rm -fr `basename $line` 
			cp -rf $link `basename $line`
			cd $init_dir
		fi
	fi
done
