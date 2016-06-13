#!/bin/bash

HOST=`hostname -i`

./ghost-server ${HOST} 80
