#!/bin/bash
if test $# -ne 1 
then
  echo "Usage: $1 <fichier ou repertoire>"
  exit 1
fi


if [ -d $1 ]; then
  echo "$1 est un repertoire"
  exit 1
fi


if [ -f $1 ]; then
	echo "$1 est un fichier"

	if [ -x $1 ]; then
	echo "$1 est un fichier executable"
		else
	echo "$1 est un fichier ordinaire"
	fi
exit 0
fi