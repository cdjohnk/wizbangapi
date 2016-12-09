#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=${(dirname "$SCRIPT"):0:(-4)}
java -cp "$SCRIPTPATH/*:$SCRIPTPATH/../lib/*:$SCRIPTPATH/../config/" -Dapp.path=$SCRIPTPATH org.portland.sqltorest.SqlToRest
