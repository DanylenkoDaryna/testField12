#!/usr/bin/env bash

. ./setenv.sh

[ ! -x $CATALINA ] && chmod u+x $CATALINA

$CATALINA start
