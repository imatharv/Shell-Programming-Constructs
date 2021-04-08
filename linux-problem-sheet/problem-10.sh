#!/bin/bash -x

if [ -z "$usersecret" ]
then
      	echo "\$usersecret is empty"
	echo "setting usersecret"
	export usersecret="myvalue"
else
	echo "\$usersecret is NOT empty"
fi


