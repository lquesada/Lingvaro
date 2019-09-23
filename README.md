Lingvaro (Cross-language dictionary: Spanish, English, Esperanto, German, Swiss German).  
Copyright (c) 2019, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com

Homepage: https://github.com/lquesada/Lingvaro

lingvaro.tsv contains the tab-separated-value source file and lingvaro.sh contains the script to generate this page from the source file. Download it and add this script to your .bashrc file to be able to query lingvaro from the console:

```
###
# Copyright (c) 2019, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com
# Lingvaro (https://github.com/lquesada/Lingvaro) dictionary lookup by match in any field

# Usage:
# 1. Copy this script to your .bashrc file.
# 2. Set this path to point to your copy of lingvaro.tsv:
PATH_TO_LINGVARO=~/lingvaro.tsv
#
# Use $ lingvaro to lookup the cross-language dictionary by match in text.
# e.g. $ lingvaroall potato
#
# Use $ lingvaroall to lookup the cross-language dictionary by match in text.
# e.g. $ lingvaroall grammar
#
# Doesn’t fit your screen? Adjust the separator size:
LINGVARO_SEPARATOR_SIZE=53

function lingvaro() {
(
  RED='\033[1;31m'
  NC='\033[0m' # No Color
  echo ''
  tabs $LINGVARO_SEPARATOR_SIZE
  printf "${RED}"
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 | tr '[:graph:]ñü' '-'
  printf "${NC}"
  (cat $PATH_TO_LINGVARO;echo '') | cut -f 9-13 | grep -i $1
  echo ''
)
}

function lingvaroall() {
(
  RED='\033[1;31m'
  NC='\033[0m' # No Color
  echo ''
  tabs $LINGVARO_SEPARATOR_SIZE
  printf "${RED}"
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 | tr '[:graph:]ñü' '-'
  printf "${NC}"
  (cat $PATH_TO_LINGVARO;echo '') | grep -v ^title | grep -i $1 | cut -f 9-13
  echo ''
)
}
###
```
Check [lingvaro.md](lingvaro.md) for a Markdown version of the full dictionary that you can open in your browser for preview purposes or quick lookups, but you probably want to import the tsv file from a spreadsheet or use the script above instead.

# Disclaimer
This is the work of a hobbyist. The source is a mix of usage I have learned after years speaking these languages, some lookups in dictionaries and internet, and many clarifications during language lessons.

Some translations may be wrong and some sentences may not be idiomatic. Some of the grouping by section may not make sense to you.

Please note that I am a native Spanish speaker from the south of Spain, I speak (mostly American) English fluently, I can speak reasonable Esperanto and some German and (the Zürich dialect of) Swiss German.

Swiss German has no written form but is often approximated as a phonetic translation, so there's some variation expected.

Feedback is welcome, just propose changes as issues or pull requests via GitHub.

# License
Creative Commons License Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0)

This is a human-readable summary of the Legal Code.

You are free:

*   to Share — to copy, distribute and transmit the work
*   to Remix — to adapt the work

Under the following conditions:

*   Attribution — You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).

*   Noncommercial — You may not use this work for commercial purposes.

*   Share Alike — If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.

With the understanding that:

*   Waiver — Any of the above conditions can be waived if you get permission from the copyright holder.
*   Public Domain — Where the work or any of its elements is in the public domain under applicable law, that status is in no way affected by the license.
*   Other Rights — In no way are any of the following rights affected by the license:
       Your fair dealing or fair use rights, or other applicable copyright exceptions and limitations;
       The author's moral rights;
       Rights other persons may have either in the work itself or in how the work is used, such as publicity or privacy rights.
*   Notice — For any reuse or distribution, you must make clear to others the license terms of this work. The best way to do this is with a link to this web page.

For details and the full license text, see http://creativecommons.org/licenses/by-nc-sa/3.0/


