#!/bin/sh

###
# Compiles speaker and talk information
###

SPEAKER=$1
PICTURE=speakers/$SPEAKER/picture/primary/$SPEAKER.jpg
BIOGRAPHY=speakers/$SPEAKER/biography/primary/$SPEAKER.txt
ABSTRACT=abstracts/$2

# Verify that we speaker and talk information can be compiled
test -f $PICTURE || echo "unable to locate picture for $SPEAKER"
test -f $BIOGRAPHY || echo "unable to locate biography for $SPEAKER"
test -f $ABSTRACT || echo "unable to locate abstract with name $2"

# Compile information

echo ---------
echo Speaker: ${SPEAKER//_/ }'\n'
cat $BIOGRAPHY
echo '\n'
echo Picture: https://github.com/Omegapoint/speakers/blob/master/speakers/$SPEAKER/picture/primary/$SPEAKER.jpg
cat $ABSTRACT | sed '1d' # Need to skip the first line because it contains a listing of the speaker(s)
echo ---------
