# speakers
The main objective of this repository is to collect information about speakers at Omegapoint.

## Main Structure
The root directory contains

- abstracts
    - The abstracts found in this directory are talks held by speakers at Omegapoint.  
- speakers
    - This directory contains pictures and biographies about each speaker at Omegapoint. 
    
## Usage
To compile speaker and talk information, run

> ./compile_speaker_data.sh <speaker_name_with_underscore_as_separator> [abstracts/<filename>]


or if you only want to compile speaker information

> ./compile_speaker_data.sh <speaker_name_with_underscore_as_separator>

## Known limitations
- The script only accepts one abstract at the time. 
