#!/bin/sh

###
# Compiles speaker and talk information
###

if [ "$#" -eq 0  ]; then
  echo "Error"
  echo "usage: ./compile_speaker_data.sh <speaker_name_with_underscore_as_separator> [abstracts/<filename>]"
  exit 1
fi

SPEAKER=$1
ABSTRACT=$2
PICTURE=speakers/$SPEAKER/picture/primary/$SPEAKER.jpg
BIOGRAPHY=speakers/$SPEAKER/biography/primary/$SPEAKER.txt

# Verify that speaker and talk information can be fetched
test -f $PICTURE || { echo "unable to locate picture for $SPEAKER"; exit 1; }
test -f $BIOGRAPHY || { echo "unable to locate biography for $SPEAKER"; exit 1; }

if [ "$ABSTRACT" ]; then
  test -f $ABSTRACT || { echo "unable to locate abstract: $ABSTRACT"; exit 1; }
fi

# Print speaker and talk information

echo '\n---------\n'
echo Speaker: ${SPEAKER//_/ }'\n'

cat $BIOGRAPHY

echo '\n'Picture: https://github.com/Omegapoint/speakers/blob/master/speakers/$SPEAKER/picture/primary/$SPEAKER.jpg'\n'

if [ "$ABSTRACT" ]; then
  cat $ABSTRACT | sed '1d' # Need to skip the first line because it contains a listing of the speaker(s)
fi

echo '\n---------\n'
