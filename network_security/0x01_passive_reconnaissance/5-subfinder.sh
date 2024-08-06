#!/bin/bash
subfinder -silent -nW -d $1 -oI | tee >(awk -F',' '{print $1","$2}' > $1.txt) | awk -F',' '{print $1}'
