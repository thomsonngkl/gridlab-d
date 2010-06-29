#!/bin/bash

export DOCS=`pwd`/../documents/troubleshooting

if [ ! -e $DOCS ]
then
	mkdir $DOCS
fi

cp utilities/troubleshooting.css $DOCS
awk -f ./utilities/troubleshooting.awk */*.{c,cpp} > $DOCS/troubleshooting.html
