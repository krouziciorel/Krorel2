#!/bin/sh

/home/wanbli/Desktop/Kroužící_orel_2/t3make -d
/home/wanbli/Desktop/Kroužící_orel_2/frob -i plain -k utf8 --no-pause -S -c -e 1000 -R testCommands.txt krorel2.t3 > testOutput.txt
diff -Nru5 testTranscript.orig testTranscript.txt > testTranscript.diff
pluma testTranscript.diff
