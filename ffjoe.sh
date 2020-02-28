#!/bin/sh
HERE=`dirname $0`
java -jar $HERE/joe.jar $HERE/ffjoe.joe "$@"
