#!/bin/bash

in='lingvaro.tsv'

rm -f README.md
touch README.md
cat >> README.md <<EOT
Lingvaro (Cross-language dictionary: Spanish, English, Esperanto, German, Swiss German).  
Copyright (c) 2019, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com

Homepage: https://github.com/lquesada/Lingvaro

lingvaro.tsv contains the tab-separated-value source file and lingvaro.sh contains the script to generate this page from the source file. Download it and add this script to your .bashrc file to be able to query lingvaro from the console:

\`\`\`
EOT

cat bashrc >> README.md
cat >> README.md <<EOT
\`\`\`
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


EOT

cat README.md | grep -v lingvaro.md > lingvaro.md
rm -f tmp.md

echo "# Table of Contents" >> lingvaro.md
echo "" >> lingvaro.md

lastfilesection=''
lastsection=''
cat "$in" | sed s/$'\t\t'/$'\t \t'/g | sed s/$'\t\t'/$'\t \t'/g | grep -v $'^.*\ttitle' | tail -n +2 | sort -g -s -k 1,1 | while IFS=$'\n\r\t' read -r filesection level tab section subsection note case formal es en eo de zt; do
  if [[ "$filesection" != "$lastfilesection" ]];then
    filetext=( $(echo $filesection | tr '_' ' ') )
    filetext="${filetext[@]^}"
    filetext=$( echo $filetext | sed s/'\([0-9]\) '/'\1: '/g )
    lastsection=''
    echo "[$filetext](#$filesection)  " >> lingvaro.md
    echo "" >> tmp.md
    echo "<a name=\"$filesection\">" >> tmp.md
    echo "" >> tmp.md
    echo "## Section $filetext" >> tmp.md
  fi
  if [[ "$section" != "$lastsection" ]];then
    echo "" >> tmp.md
    echo "### $section" >> tmp.md
    echo "| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |" >> tmp.md
    echo "| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |" >> tmp.md
  fi
  lastfilesection="$filesection"
  lastsection="$section"
  # Put together notes
  leveltext=''
  if [[ " " != "$level" ]];then
    leveltext="$level, "
  fi
  formaltext=''
  if [[ " " != "$formal" ]];then
    formaltext="$formal, "
  fi
  casetext=''
  if [[ " " != "$case" ]];then
    casetext="$case, "
  fi
  subsectiontext=''
  if [[ " " != "$subsection" ]];then
    subsectiontext="$subsection, "
  fi
  notetext=''
  if [[ " " != "$note" ]];then
    notetext="$note, "
  fi
  notes=$(echo "$leveltext$formaltext$casetext$subsectiontext$notetext" | sed s/', $'//g)

  echo "| $es | $en | $eo | $de | $zt | $notes |" | sed s/'()'//g >> tmp.md
done

echo "" >> lingvaro.md
echo "# Lingvaro" >> lingvaro.md
echo "" >> lingvaro.md
cat tmp.md >> lingvaro.md
echo "" >> lingvaro.md
echo "End of file" >> lingvaro.md

rm -f tmp.md
