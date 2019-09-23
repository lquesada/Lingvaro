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


# Table of Contents

[1: Basics](#1_basics)  
[2: Language Specifics](#2_language_specifics)  
[3: Particles](#3_particles)  
[4: Declension](#4_declension)  
[5: Grammar](#5_grammar)  
[6: Conversation](#6_conversation)  
[7: Conjugation](#7_conjugation)  
[8: Alphabet](#8_alphabet)  
[9: Numbers](#9_numbers)  
[10: Vocabulary](#10_vocabulary)  

# Lingvaro


<a name="1_basics">

## Section 1: Basics

### Greetings
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hola | hello / hi | saluton | hallo | grüezi | A1, Informal/Formal |
| hola a todos | hello everybody | saluton al ĉiuj | hallo zusammen | grüezi mitenand | A1, Informal/Formal |
| hola | hi | saluton | hoi | hoi / sali | A1, Informal |
| adios | good bye | adiaŭ | auf wiedersehen | ade / uf widerluege | A1, Formal |
| adios | bye / bye bye | adiaŭ | tschüss | tschau / tschüss | A1, Informal |
| hasta ahora | see you / see you soon | ĝis / ĝis baldau | bis gleich | bis dann | A1, Informal |
| hasta pronto | see you / see you soon | ĝis / ĝis baldau | bis bald | bis bald | A1, Informal |
| hasta la vista | see you / see you soon | ĝis revido | auf wiedersehen | uf widerluege | A1, Informal |
| buenos días | good morning | bonan matenon | guten Morgen | guete Morge | A1, Formal |
| buenas tardes | good afternoon | bonan posttagmezon | guten Nachmittag | guete Namittag | A1, Formal |
| buenas noches (tarde-noche) | good evening | bonan vesperon | guten Abend | guete-n-Aabig | A1, Formal |
| buenas noches | good night | bonan nokton | gute Nacht | guet Nacht | A1, Formal |
| buen día | good day | bonan tagon | guten Tag | guete Taag | A1, Formal |

### Basic conversation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿cómo estás? | how are you? | kiel vi estas? | wie bist du? | wie bisch du? | A1, Informal* |
| ¿cómo te va? | how are you doing? | kiel vi fartas? | wie geht es dir? | wie gaat s dir? / wie gaht s dir? | A1, Informal* |
| estoy bien | I am fine | mi fartas bone | es geht mir gut / mir geht es gut | es gaat mir guet / mir gaat s guet | A1, Informal* |
| me va bien | I am doing fine | mi fartas bone | es geht mir gut / mir geht es gut | es gaat mir guet / mir gaat s guet | A1, Informal |
| ¿quién eres? | who are you? | kiu estas vi? | wer bist du? | wer bisch du? | A1, Informal |
| soy ... | I am ... | mi estas ... | ich bin ... | ich bi ... | A1, Informal |
| ¿cómo te llamas? | what's your name? | kiel vi nomiĝas? | wie heißt du? | wie häissisch du? | A1, Informal* |
| me llamo ... | my name is ... | mi nomiĝas ... | ich heiße ... | ich häisse ... | A1 |
| ¿cuál es tu nombre? | what's your name? | kiu estas via nomo? | was ist dein Name? | wie isch din Name? | A1, Informal* |
| mi nombre es ... | my name is ... | mia nomo estas ... | mein Name ist ... | min Name-n-isch ... | A1 |

### Gratitude, Congratulations, Celebrations
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| gracias | thanks | dankon | danke | danke / merci | A1 |
| gracias por todo | thanks for everything | dankon pro ĉio | danke für alles | danke für alles / merci für alles | A1 |
| te lo agradezco | thank you | mi dankas vin | ich danke dir / ich bedanke mich bei dir | ich danke dir / ich bedanke mich bi dir | A1 |
| se lo agradezco | thank you | mi dankas vin | ich danke Ihnen / ich bedanke mich bei Ihnen | ich danke Ihne / ich bedanke mich bi Ihne | A1 |
| muchas gracias | many thanks / thanks a lot | dankegon | danke vielmals / danke schön | danke villmal / danke schön | A1 |
|  | no problem |  | ist schon gut | isch scho guet | A1, Informal, Reply to "thanks" |
| de nada | you're welcome | nedankinde / ne dankinde | bitte / bitte schön / gern geschehen | bitte / bitte schön / gern gscheh | A1, Formal, Reply to "thanks" |
| ¡felicidades! / ¡enhorabuena! | congratulations! | gratulojn! | Herzlichen Glückwunsch! / Glückwunsche! / Glückwünsche! | Herzliche Glückwunsch! / Glückwunsch! / Glückwünsche! | A1 |
| ¡feliz cumpleaños! | happy birthday! | feliĉan naskiĝtagon! | Alles Gute zum Geburtstag! | Alles gueti zum Geburstag! / Alles gueti zum Geburi! | A1 |
| ¡salud! | cheers! | je via sano! / ni tostu je via sano! | prost! | prost! | A1 |
| ¡suerte! / ¡mucha suerte! / ¡buena suerte! | good luck! | bonŝancon | viel Glück! | viel Glück! | A1 |

### Apologies
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| perdón | sorry | pardonu | entschuldigung / verzeihung | entschuldingung / äxgüsi | A1 |
| lo siento | I am sorry | mi pardonpetas | es tut mir leid | es tuet mir laid | A1 |
| disculpe | excuse me / pardon me | senkulpigu min | entschuldigen Sie / verzeihen Sie | entschuldige Si | A1, Formal |
| mis disculpas | my apologies | miaj pardonpetoj | meine Entschuldigung | entschuldige Si | A1, Formal |
| no pasa nada | it's ok / it's fine / no problem | neniu problemo | kein Problem | käis Problem | A1, Reply to "I broke this" |
| está bien | it's ok / it's fine / no problem | estas bone | ist schon in Ordnung / ist alles in Ordnung | isch scho i-n-Ordnig / isch alles i-n-Ordnig / isch scho guet / scho guet | A1, Informal, Reply to "thanks" |

### Afirmation and negation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sí | yes | jes | ja | ja | A1, Reply |
| sí | yes, <+ clarification e.g. "I do"> | jes | doch | doch / moll | A1, Reply to negative question |
| no | no | ne | nein | näi | A1, Reply |
| no | not | ne | nicht | nöd / nüd | A1, Phrase negation |
| vale | ok | bone | recht / es geht | rächt / s'gaat | A1, Accepting proposal |

### Basic articles
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| el | the | la | der | de | A1, Nominative, Male |
| la | the | la | die | d | A1, Nominative, Female |
| lo | the | la | das | s | A1, Nominative, Neutral |
| los | the | la | die | d | A1, Nominative, Male/Neutral Plural |
| las | the | la | die | d | A1, Nominative, Female Plural |
| un | a / an |  | ein | en | A1, Nominative, Male |
| una | a / an |  | eine | e (*e-n- vor Vokal) | A1, Nominative, Female |
|  | a |  | ein | es | A1, Nominative, Neutral Indeterminate |
| unos | some |  | einige | äinigi | A1, Nominative, Male/Neutral Plural |
| unas | some |  | einige | äinigi | A1, Nominative, Female Plural |
|  | some |  | einige | äinigi | A1, Nominative, Neutral Indeterminate Plural |

### Basic pronouns
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| yo | I | mi | ich | ich | A1, Nominative |
| tú | you | vi | du | du | A1, Informal, Nominative |
| usted | you | vi / (ci) | Sie | Si | A1, Formal, Nominative |
| eso / ello | it | ĝi | es | s / es | A1, Nominative |

### Basic conjunctions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| y | and | kaj | und | und | A1 |
| o | or | aŭ | oder | oder | A1 |
| que | that | ke | dass | dass | A1 |

### Basic question particles
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| quién | who | kiu | wer | wer | A1 |
| cuál | which | kiu | welch (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | wele (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A1 |
| qué | what | kio | was | was | A1 |
| qué clase de | what kind of | kia | was für | was für | A1 |
| dónde | where | kie | wo | wo | A1, Location without direction |
| a dónde | where | kien | wohin | wohii | A1, Location with direction |
| cómo / al igual que | how / just like | kiel | wie / genauso wie | wie / genauso wie | A1 |
| por qué | why | kial | warum / wieso | warum / wieso | A1 |
| cuándo | when | kiam | wann | wänn | A1 |
| cuánto | how much | kiom | wie viel | wievill | A1 |
| cuántos | how many | kiom da | wie viele | wievilli | A1 |
| de quién | whose | kies | wessen |  | A1 |
| (cambio de orden de palabras) | do / does (+word order change) | ĉu | (Änderung der Wortordnung) | (Änderig vo de Wortordnig) | A1 |
| es ..., ¿verdad? / es ..., ¿cierto? | it's ..., isn't it? / it's ..., right? | estas ..., ĉu ne? | es ist ..., oder? | s'isch ..., gäll? / s'isch ..., oder? | A1 |
| no es ..., ¿verdad? / no es ..., ¿cierto? | it's not ..., is it?, it's not ..., right? | ne estas ..., ĉu? | es ist nicht ..., oder? | s'isch nöd ..., gäll? / s'isch nöd ..., oder? | A1 |

### Basic verb conjugation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ser | to be | esti | sein | sii | A1, Infinitive; Constant trait |
| yo soy grande | I am big | mi estas granda / mi grandas | ich bin groß | ich bi grooss | A1, Present |
| tu eres grande | you are big | vi estas granda / vi grandas | du bist groß | du bisch grooss | A1, Informal, Present |
| estar | to be | esti | sein | sii | A1, Infinitive; Transient state |
| yo estoy cansado | I am tired | mi estas laca / mi lacas | ich bin müde | ich bi müed | A1, Present |
| tú estás cansado | you are tired | vi estas laca / vi lacas | du bist müde | du bisch müed | A1, Informal, Present |
| tener | to have | havi | haben | haa | A1, Infinitive |
| yo tengo una manzana | I have an apple | mi havas pomon | ich habe ein Apfel | ich ha-n-en Öpfel | A1, Present |
| tú tienes una manzana | you have an apple | vi havas pomon | du hast ein Apfel | du häsch en Öpfel | A1, Informal, Present |
| yo tengo la manzana | I have the apple | mi havas la pomon | ich habe den Apfel | ich ha de Öpfel | A1, Present |
| tú tienes la manzana | you have the apple | vi havas la pomon | du hast den Apfel | du häsch de Öpfel | A1, Informal, Present |
| saltar | to jump | salti | springen | gumpe | A1, Infinitive |
| yo salto | I jump | mi saltas | ich springe | ich gump(e) | A1, Present |
| tú saltas | you jump | vi saltas | du springst | du gumpsch | A1, Informal, Present |
| comer | to eat | manĝi | essen | ässe | A1, Infinitive |
| yo como | I eat | mi manĝas | ich esse | ich iss(e) | A1, Present |
| tú comes | you eat | vi manĝas | du isst | du issisch | A1, Informal, Present |

### Basic demonstratives
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| esta persona | this one / this person | ĉi tiu | diese Person / dieser Mensch | die Person / de Mänsch | A1, Nominative |
| estas personas | these people | ĉi tiuj | diese Person / diese Mensch | die Persone / die Mänsche | A1, Nominative |
| esa persona | that one / that person | tiu | diese Person / dieser Mensch | die Person / de Mänsch | A1, Nominative |
| esas personas | those people | tiuj | diese Person / diese Mensch | die Persone / die Mänsche | A1, Nominative |
| aquella persona | that one / that person | tiu | diese Person / dieser Mensch | die Person / de Mänsch | A1, Nominative |
| aquellas personas | those people | tiuj | diese Person / diese Mensch | die Persone / die Mänsche | A1, Nominative |
| este (neutro igual, femenino e->a, plural masculino e->os, plural femenino e->as) | this one | ĉi tiu (+pluralo j) | dies (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | de (+deklination F/Pl:e->ie, N:e->as) | A1, Nominative |
| ese (neutro igual, femenino e->a, plural masculino e->os, plural femenino e->as) | that one | tiu (+pluralo j) | das / dies (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A1, Nominative |
| aquel (neutro igual, femenino +la, plural masculino +los, plural femenino +las) | that one | tiu (+pluralo j) | das / jene (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A1, Nominative |
| esto | this thing | ĉi tio | das | das | A1, Nominative |
| eso | that thing | tio | das | das | A1, Nominative |
| aquello | that thing | tio | das / jene (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A1, Nominative |

### Language lesson conversation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿cómo se dice ...? | how do you say ...? / how is ... said? | kiel oni diras ...? | wie sagt man ...? | wie säit mer ...? | A1 |
| ¿cómo se dice ... en Español? | how do you say ... in English? / how is ... said in English? | kiel oni diras ... en Esperanto? | wie sagt man ... auf Deutsch? | wie säit mer ... uuf Zuritüütsch? | A1 |
| se dice ... | it's said ... | oni diras ... | man sagt ... | mer säit ... | A1 |
| en Español se dice ... | it's said ... in English | oni diras ... en Esperanto | man sagt ... auf Deutsch | mer säit ... uuf Zuritüütsch | A1 |
| ¿se dice ...? | is it said ...? | ĉu oni diras ...? | sagt man ...? | säit mer ...? | A1 |
| ¿se puede decir ...? | can you say ... | ĉu oni povas diri ...? | kann man ... sagen? | cha mer ... säge? | A1 |
| ¿se puede decir así? | can you say it that way? | ĉu oni povas diri tion tiel? | kann man es so sagen? | cha mer's soo säge? | A1 |
| ¿cómo se llama esto? | how is this called? | kiel ĉi tio nomiĝas? | wie heißt das? | wie häisst das? | A1 |
| ¿cómo se llama eso? | how is that called? | kiel tio nomiĝas? | wie heißt das? | wie häisst das? | A1 |
| ¿cómo dirías esto? | how would you say this? | kiel vi dirus ĉi tion? | wie würdest du das sagen? | wie wüürsch du das säge? | A1, Informal* |
| ¿cómo podría decir esto? | how could I say this? | kiel mi povus diri ĉi tion? | wie könnte ich das sagen? | wie chönt ich das säge? | A1, Informal* |
| ¿cómo se escribe esto? | how do you write this? / how is this written? | kiel oni skribas tion? | wie schreibt man ...? | wie schriibt mer ...? | A1 |
| se escribe ... | it's written ... | oni skribas ... | man schreibt ... | mer schriibt ... | A1 |
| ¿es esto correcto? / ¿está esto bien? / ¿está bien esto? | is this correct? | ĉu tio ĝustas? / ĉu tio estas ĝusta? | ist das richtig? | isch das richtig? | A1 |
| ¿es esto incorrecto? / ¿está esto mal? / ¿está mal esto? | is this wrong? | ĉu tio malĝustas? / ĉu tio estas malĝusta? | ist das falsch? | isch das falsch? | A1 |
| esto es correcto / esto está bien | this is correct | tio ĝustas / tio estas ĝusta | das ist richtig | das isch richtig | A1 |
| esto es incorrecto / esto está mal | this is wrong | tio malĝustas / tio estas malĝusta | das ist falsch | das isch falsch | A1 |
| si dices esta palabra, la respuesta es correcta | if you say this word, the reply is correct | se vi diras ĉi tiun vorton, la respondo ĝustas | wenn du dieses Wort sagst, ist die Antwort richtig | wänn du das Wort säisch, isch d Antwort richtig | A1 |
| la respuesta es correcta si dices esta palabra | the reply is correct if you say this word | la respondo ĝustas, se vi diras ĉi tiun vorton | die Antwort ist richtig, wenn du dieses Wort sagst | d Antwort isch richtig, wänn du das Wort säisch | A1 |
| ¿cómo? / ¿cómo has dicho? / ¿qué? | what? | kion? / kion vi diras? | wie, bitte? | wie, bitte? | A1, Informal |
| por favor, repite / por favor, dilo otra vez / por favor, vuelve a decirlo | please, repeat that / come again | bonvolu ripeti / bonvole ripetu / bonvolu diri denove / bonvole diru denove | noch einmal, bitte? | no äimal, bitte? / nomal, bitte? | A1, Informal* |
| ¿puedes repetir, por favor? / ¿puedes decirlo otra vez, por favor? / ¿puedes volver a decirlo, por favor? | can you repeat that, please? | ĉu vi povas ripeti tion, bonvole? / ĉu vi povas diri tion denove, bonvole? | kannst du das wieder sagen? | chasch du das nomal säge? | A1, Informal |
| ¿puede repetir, por favor? / ¿puede decirlo otra vez, por favor? / ¿puede volver a decirlo, por favor? | can you repeat that, please? | ĉu vi povas ripeti tion, bonvole? / ĉu vi povas diri tion denove, bonvole? | können Sie das wieder sagen? | chönd Si das nomal säge? | A1, Formal |
| ¿podría repetir eso, por favor? / ¿podría decirlo otra vez, por favor? / ¿podría volver a decirlo, por favor? | could you repeat that, please? | ĉu vi povus ripeti tion, bonvole? / ĉu vi povus diri tion denove, bonvole? | könnten Sie das wieder sagen? | chönted Si das nomal säge? | A1, Formal |
| no lo entiendo | I don't understand that | mi ne komprenas tion | ich verstehe das nicht | ich verstah das nöd | A1 |
| no he entendido eso | I haven't understood that / i didn't understand that | mi ne komprenis tion | ich habe das nicht verstanden | ich ha das nöd verstande | A1 |
| ¿qué idiomas hablas? | what languages do you speak? | kiujn lingvon vi parolas? | welche Sprachen sprichst du? | weli Sprache redsch du? | A1, Informal* |
| ¿hablas ...? | do you speak ...? | ĉu vi parolas ...? | sprichst du ...? | redsch du ...? | A1, Informal* |
| hablo ... | I speak ... | mi parolas ... | ich spreche ... | ich rede ... | A1 |
| ¿qué significa esta palabra? | what does this word mean? | kion signifas ĉi tiu vorto? | was bedeutet dieses Wort? | was bedüütet das Wort? | A1 |
| ¿qué significan estas palabras? | what do these words mean? | kion signifas ĉi tiuj vortoj? | was bedeuten diese Wörter? | was bedüüted die Wörter? | A1 |
| ¿qué significa esa palabra? | what does that word mean? | kion signifas tiu vorto? | was bedeutet dieses Wort? | was bedüütet das Wort? | A1 |
| ¿qué significan esas palabras? | what do those words mean? | kion signifas tiuj vortoj? | was bedeuten diese Wörter? | was bedüüted die Wörter? | A1 |
| ¿qué significa esta frase? | what does this phrase mean? / what does this sentence mean? | kion signifas tiu frazo? | was bedeutet dieser Satz? | was bedüütet das Satz? | A1 |
| hay ... / existe ... | there is ... | estas ... / ekzistas ... | es gibt ... | es git ... | A1, singular |
| hay ... / existen ... | there are ... | estas ... / ekzistas ... | es gibt ... | es git ... | A1, plural |
| ¿cuál es la diferencia entre ... y ...? | what is the difference between ... und ...? | kiu estas la malsamo inter ... kaj ...? | was ist der Unterschied zwischen ... und ...? | was isch de Unterschied zwüsche ... und ...? | A1 |
| ¿encaja esta palabra aquí? | does this word fit here? | ĉu tiu vorto taŭgas tie? | passt dieses Wort da? / passt dieses Wort hierhin? / passt dieses Wort dahin? | passt das Wort da? | A1 |
| ¿cómo se pronuncia ...? | how do you pronounce ...? | kiel oni prononcas ...? | wie spricht man ... aus? | wie spricht mer ... uus? | A1 |
| se pronuncia ... | it's pronounced ... | oni prononcas ĝi tiel: ... / ĝi estas prononcita ... | man spricht das so aus: ... | mer spricht das so uus: ... | A1 |

<a name="2_language_specifics">

## Section 2: Language Specifics

### Español: Contractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| de + el -> del |   |   |   |   | A1 |
| a + el -> al |   |   |   |   | A1 |

### Español: Gender exceptions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| la + a____ -> el + a___ (e.g. la agua -> el agua) |   |   |   |   | A1 |

### English: Contractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   | am -> 'm |   |   |   | A1 |
|   | are -> 're |   |   |   | A1 |
|   | is -> 's |   |   |   | A1 |
|   | has -> 's |   |   |   | A1 |
|   | have -> 've |   |   |   | A1 |
|   | will -> 'll |   |   |   | A1 |
|   | had -> 'd |   |   |   | A1 |
|   | would -> 'd |   |   |   | A1 |

### Esperanto: Contractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   | la itala -> l'itala |   |   | A1 |
|   |   | kanto -> kant' |   |   | A1 |

### Esperanto: Affixes
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   | -o |   |   | A1, noun, Noun, Singular Nominative |
|   |   | -oj |   |   | A1, noun, Noun, Plural Nominative |
|   |   | -on |   |   | A1, noun, Noun, Singular Accusative |
|   |   | -ojn |   |   | A1, noun, Noun, Plural Accusative |
|   |   | -a |   |   | A1, adjective, Adjective, Singular Nominative |
|   |   | -aj |   |   | A1, adjective, Adjective, Plural Nominative |
|   |   | -an |   |   | A1, adjective, Adjective, Singular Accusative |
|   |   | -ajn |   |   | A1, adjective, Adjective, Plural Accusative |
|   |   | -e |   |   | A1, adverb, Adverb |
|   |   | -i |   |   | A1, verb, Verb, Infinitive |
|   |   | -as |   |   | A1, verb, Verb, Present tense |
|   |   | -is |   |   | A1, verb, Verb, Past tense |
|   |   | -os |   |   | A1, verb, Verb, Future tense |
|   |   | -us |   |   | A1, verb, Verb, Conditional tense |
|   |   | -u |   |   | A1, verb, Verb, Imperative |
|   |   | -ant- |   |   | A1, participle, Participle, Present Active |
|   |   | -int- |   |   | A1, participle, Participle, Past Active |
|   |   | -ont- |   |   | A1, participle, Participle, Future Active |
|   |   | -at- |   |   | A1, participle, Participle, Present Passive |
|   |   | -it- |   |   | A1, participle, Participle, Past Passive |
|   |   | -ot- |   |   | A1, participle, Participle, Future Passive |
|   |   | bo- |   |   | A1, general, relative by marriage, in-law |
|   |   | ĉef- |   |   | A1, general, main |
|   |   | dis- |   |   | A1, general, separation, dispersal |
|   |   | ek- |   |   | A1, general, commencement, suddenness |
|   |   | eks- |   |   | A1, general, former |
|   |   | fi- |   |   | A1, general, filthy, disgusting, wicked |
|   |   | ge- |   |   | A1, general, both sexes together |
|   |   | mal- |   |   | A1, general, direct opposite |
|   |   | mis- |   |   | A1, general, wrong |
|   |   | pra- |   |   | A1, general, primordiality, remote relationship |
|   |   | re- |   |   | A1, general, return, repetition |
|   |   | sen- |   |   | A1, general, without |
|   |   | -aĉ- |   |   | A1, general, awful |
|   |   | -ad- |   |   | A1, general, continual or habitual action |
|   |   | -aĵ- |   |   | A1, general, concrete object |
|   |   | -an- |   |   | A1, general, member (of a group), inhabitant |
|   |   | -ar- |   |   | A1, general, collection, group |
|   |   | -ebl- |   |   | A1, general, possible |
|   |   | -ec- |   |   | A1, general, abstract quality/state |
|   |   | -eg- |   |   | A1, general, great in size or degree |
|   |   | -ej- |   |   | A1, general, place where an action occurs |
|   |   | -em- |   |   | A1, general, inclination |
|   |   | -end- |   |   | A1, general, which must be done |
|   |   | -er- |   |   | A1, general, element of homogeneous whole |
|   |   | -estr- |   |   | A1, general, leader |
|   |   | -et- |   |   | A1, general, diminutive |
|   |   | -id- |   |   | A1, general, offspring of living creatures |
|   |   | -ig- |   |   | A1, general, cause to be |
|   |   | -iĝ- |   |   | A1, general, become |
|   |   | -il- |   |   | A1, general, object used to perform an action |
|   |   | -in- |   |   | A1, general, female, feminine |
|   |   | -ind- |   |   | A1, general, worthy of |
|   |   | -ing- |   |   | A1, general, holder for a single item |
|   |   | -ism- |   |   | A1, general, doctrine, movement, theory |
|   |   | -ist- |   |   | A1, general, professional related to the root |
|   |   | -obl- |   |   | A1, general, multiplication |
|   |   | -on- |   |   | A1, general, fraction |
|   |   | -op- |   |   | A1, general, collective numeral, group |
|   |   | -uj- |   |   | A1, general, container, also country |
|   |   | -ul- |   |   | A1, general, individual person |
|   |   | -um- |   |   | A1, general, Esperanto specific, no definite meaning |
|   |   | -ĉj- |   |   | A1, general, male affectionate ending |
|   |   | -nj- |   |   | A1, general, female affectionate ending |

### Deutsch: Pronunciation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   | "st" ist immer "scht" am Wortanfang |   | A1 |
|   |   |   | "sp" ist immer "schp" am Wortanfang |   | A1 |
|   |   |   | Ausnahme: Worter von andere Sprache, e.g. "Sterling" |   | A1 |

### Deutsch: Contractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   | zu + das -> dazu |   | A1, e.g. used for side dish |
|   |   |   | an + das -> daran |   | A1 |
|   |   |   | hin + das -> dahin |   | A1 |
|   |   |   | auf + das -> darauf |   | A1 |
|   |   |   | hin + dort  -> dorthin |   | A1 |
|   |   |   | über + das -> darüber |   | A1 |
|   |   |   | von + das -> davon |   | A1 |
|   |   |   | nach + das -> danach |   | A1 |
|   |   |   | für + das -> dafür |   | A1 |
|   |   |   | mit + das -> damit |   | A1, so that with that, ... can be done |
|   |   |   | mit + was -> womit |   | A1, with which |
|   |   |   | um + das -> darum |   | A1 |
|   |   |   | bei + das -> dabei |   | A1 |

### Zuritüütsch: Pronunciation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   |   | "st" tönt normalerwiis "scht" | A1 |
|   |   |   |   | "sp" tönt normalerwiis "schp" | A1 |
|   |   |   |   | Uusnahme: "sst" tönt "sst" | A1 |
|   |   |   |   | Uusnahme: partizip mit "st" am Ände in Verben ("gräist") tönt "st" | A1 |
|   |   |   |   | Uusnahme: Wort mit s am Ände + Wort mit t am Aafang = "s"+"t" -> "st", e.g. "Huustier", "Nastuechli" | A1 |
|   |   |   |   | Uusnahme: Wort vo anderi Spraach, e.g. "Plastik", "Master", "Sterling" | A1 |
|   |   |   |   | Uusnahme: Wort mit "sch" uff Hochtüütsch, e.g. forsche -> gforscht | A1 |

### Zuritüütsch: Contractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   |   | zue + das -> dezue | A1, e.g. used for side dish |
|   |   |   |   | aa + das -> daraa | A1 |
|   |   |   |   | hii + das -> dehii | A1 |
|   |   |   |   | hii + deet -> deethii | A1 |
|   |   |   |   | uf + das -> druf | A1 |
|   |   |   |   | über + das -> drüber | A1 |
|   |   |   |   | vo + das -> devoo | A1 |
|   |   |   |   | für + das -> dafür | A1 |
|   |   |   |   | mit + das -> damit | A1, so that with that, ... can be done |
|   |   |   |   | mit + was -> womit | A1, with which |
|   |   |   |   | um + das -> darum | A1 |
|   |   |   |   | bii + das -> debii | A1 |
|   |   |   |   | ich laufe, laufe ich -> ich laufe, lauf ich | A1 |

### Zuritüütsch: -n- for fluidity
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   |   | wie isch er? | A1, no -n- after most pronouns, nouns, etc. |
|   |   |   |   | ich ässe | A1, no -n- after most pronouns, nouns, etc. |
|   |   |   |   | dann verstaa-n-ich / dann verstaa ich | A1, -n- can be or not between verbs after ending other than "e" |
|   |   |   |   | jede mal, wo-n-er ... /  jede mal, wo er ... | A1, -n- can be or not between wo and other vowel |

### Zuritüütsch: Verb ending for fluidity
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   |   | ich glaube schon | A1, verb ends with "e" when not followed by vowel |
|   |   |   |   | dann glaub ich ... | A1, verb does not end with "e" when followed by vowel |

<a name="3_particles">

## Section 3: Particles

### Periodicity
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| nunca | never | neniam | nie / noch nie | nie / no nie | A1 |
| a veces | sometimes | kelkfoje | manchmal | mängisch | A1 |
| raramente | rarely | malofte | selten | sälte | A1 |
| constantemente | constantly | konstante | ständig | ständig | A1 |
| generalmente | usually | kutime | gewöhnlich | gwöhnlich | A1 |
| a menudo | often | ofte | oft | oft | A1 |
| siempre | always | ĉiam | immer | imer | A1 |
| diario - diaria | daily | ĉiutage | täglich | täglich | A1, concrete periods |
| semanal | weekly | ĉiusemajne | wöchentlich | wöchentlich | A1, concrete periods |
| mensual | monthly | ĉiumonate | monatlich | monatlich | A1, concrete periods |
| anual | yearly | ĉiujare | jährlich | jährlich | A1, concrete periods |

### Repetition
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| otra vez | once again | denove | noch einmal | nomal | A1 |
| de nuevo | again | denove | wieder | wieder | A1 |

### Moderators
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| un poco / ligeramente | a little / a little bit / somewhat / slightly | iomete | ein bisschen | es bitzli / chlii | A1 |
| apenas | barely | apenaŭ | kaum | chuum | A1 |
| muy | very | tre | sehr | sehr | A1 |
| totalmente | totally | plene | total | total | A1 |
| más bien | rather / more of | pli ĝuste | eher | eher | A1 |
| bastante | quite / fairly / pretty | tre | ziemlich | zimli / zimlich | A1 |
| extremadamente | extremely | ekstreme | äußerst | üsserst | A1 |
| absolutamente | absolutely | absolutely | absolut | absolut | A1, positive |
| absolutamente | absolutely | absolutely | gar | gar | A1, negative |

### Amount
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| un poco - una poca | a little / a little bit | iomete | ein bisschen | es bitzli | A1 |
| mucho | a lot | multe | viel | vil | A1 |
| demasiado | too much | tro | zu viel | z vil | A1 |
| apenas | barely any | apenaŭ | kaum | chuum | A1 |
| a partir de | from | de | ab | ab | A1 |
| por cada uno | apiece | po | pro | pro | A1 |
| cada | each | ĉiuj | jede (+deklination wie Artikel) | jede (+deklination wie Artikel) | A1 |
| entre | between | inter | zwischen | zwüsche | A1 |
| más | more | plu | mehr | meh | A1 |
| más | further | plu | weiter | wiiter | A1 |
| restante | remaining / left | forlasita | übrig | übrig | A1 |
| en su mayoría | mostly | plejparte | meistens | mäistens | A1 |
| todo | whole | tuta | ganz | ganz | A1 |
| mejor que | rather than | prefere ol | eher als | ender als / eener als | A1 |
| tanto como | as much as | tiom kiom | so viel(+dekl) wie | so vil(+dekl) wie | A1 |
| un par de | a pair of | paro de | ein Paar | espaar / paar | A1 |
| unos pocos / unas pocas | a few | kelke da | wenige(/dekl) | wenige(/dekl) | A1 |
| varios / varias | several | plure da | mehrere(/dekl) | mehrere(/dekl) | A1 |
| muchos / muchas | a lot | multe da | viel(+dekl) | vil(+dekl) | A1 |
| suficiente | enough | sufiĉe | genug | gnueg | A1 |
| más o menos | more or less | pli aŭ malpli | mehr oder weniger | mehr oder weniger | A1 |
| aproximadamente / sobre | approximately / about | proksimume | ungefähr / circa / etwa | ungefähr / circa / öppe | A1 |

### Time
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ahora mismo / ya mismo | just now / right now | ĵus (nun) | gerade / sofort | grad | A1, time, just now |
| pronto / en breve | soon | baldaŭ | bald | bald | A1, as in "in a few minutes" |
| todavía no | not yet | ankoraŭ ne | noch nicht | nonig | A1 |
| inmediatamente | immediately | tuj | sofort | sofort | A1 |
| hasta | until / till | ĝis | bis | bis | A1 |
| todavía / aún | still / yet | ankoraŭ | noch / immer noch | no / imer no | A1 |
| hasta ahora | until now | ĝis nun | bis jetzt | bis jetzt | A1 |
| por ahora / de momento | for now | por nun | zur Zeit | zur Ziit | A1 |
| ya no | not anymore | ne plu | nicht mehr | nüme | A1 |
| ya | already | jam | schon / bereits | scho | A1 |
| ahora | now | nun | nun / jetzt | jetzt | A1 |
| temprano / pronto | early | frue | früh | früe | A1 |
| tarde | late | malfrue | spät | spaat | A1 |
| durante | while / during | dum | während | während | A1 |
| antes | before | antaŭe | vor | vor | A1 |
| después | after | poste | nach | nach | A1 |
| antes | before | antaŭe | davor / vorher / zuvor | vorher | A1, relative |
| después | after | poste | danach / nachher | nachher | A1, relative |
| cuando sea / en algún momento | whenever | en ajna momento | wann immer / wann auch immer | wänn imer / wänn au imer | A1 |
| mientras tanto | in the meanwhile | dume | in der Zwischenzeit | i de Zwüscheziit | A1 |
| de hoy | today's | hodiâua | heutig | hüütig | A1 |
| anterior | former | iama | ehemalig | ehemalig | A1 |
| a la vez | at the same time / at once | samtempe | gleichzeitig / zur gleichen Zeit | gliichziitig / zu gliicher Ziit | A1 |

### Relative days
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| anteayer | the day before yesterday | antaŭhieraŭ | vorgestern | vorgester | A1 |
| ayer | yesterday | hieraŭ | gestern | gester | A1 |
| hoy | today | hodiaŭ | heute | hüt | A1 |
| mañana | tomorrow | morgaŭ | morgen | morn | A1 |
| pasado mañana | the day after tomorrow | postmorgaŭ | übermorgen | übermorn | A1 |

### Time in a day
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| de madrugada | in the morning | tagiĝe | am Morgen | am Morge | A1 |
| por la mañana | in the morning | matene | am Morgen | am Morge | A1 |
| al mediodía | in the midday | tagmeze | am Mittag | am Mittag | A1 |
| por la tarde | in the afternoon | posttagmeze | am Nachmittag | am Namittag | A1 |
| por la tarde | in the evening | vespere | am Abend | am Abend | A1 |
| por la noche | in the night | nokte | in der Nacht | i de Nacht | A1 |
| en las madrugadas | in the mornings | en la tagiĝoj | morgens | jede Morge | A1 |
| en las mañanas | in the mornings | en la matenoj | morgens | jede Morge | A1 |
| en los mediodías | in the middays | en la tagmezoj | mittags | jede Mittag | A1 |
| en las tardes | in the afternoons | en la posttagmezoj | nachmittags | jede namittag | A1 |
| en las tardes | in the evenings | en la vesperoj | abends | jede Abend | A1 |
| en las noches | in the nights | en la noktoj | nachts | jedi Nacht | A1 |

### Conjunctions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| y | and | kaj | und | und | A1 |
| o | or | aŭ | oder | oder | A1 |
| que | that | ke | dass | dass | A1 |
| pero | but | sed | aber | aber | A1 |
| si | if | se | wenn | wänn | A1 |
| si no | else | alie | sonst | suchst | A1 |
| por lo demás | otherwise | alie | ansonsten |  | A1 |
| porque | because | ĉar | weil / denn / da | will | A1 |
| cuando | when | kiam | als | wo | A1, past |
| entonces / pues / así que | so | do | dann / also | dänn / also | A1 |
| aunque | though | tamen | obwohl | obwohl | A1 |
| sin embargo | however | tamen | aber | aber | A1 |
| mientras que / sin embargo | whereas / while | tamen | aber | aber | A1, expressing contrast |
| desde | since | ekde | seit | sit | A1 |
| hasta | until / till | ĝis | bis | bis | A1 |
| si | whether | ĉu | ob | ob | A1 |
| a pesar de que | although / even though | kvankam | obwohl | obwohl | A1 |
| una vez que | once | tuj kiam | sobald | sobald | A1, once something happens, then ... |
| a no ser que / si no / a menos que | unless / except if | krom se | es sei denn / wenn nicht / außer wenn | es sei denn / wänn nöd / ussert wänn | A1 |
| excepto | except | escepte / krom | außer | ussert | A1 |
| siempre que | provided / implied | kondiĉe | vorausgesetzt | voruusgsetzt | A1 |
| como si | as if / as though | kvazaŭ | als ob | als ob | A1 |
| casi | almost | preskaŭ | fast | fast | A1 |
| siempre que | provided that | kondiĉe ke | unter der Voraussetzung, dass | unter de Voruussetzig, dass | A1 |
| mientras que / en tanto que / siempre y cuando | as long as / inasmuch | kondiĉe ke | solange / solange wie | solang / solang wie | A1 |
| para que | so that | por ke | so dass | so dass | A1 |
| tan pronto como | as soon as | tuj kiam | sobald | sobald | A1 |
| suponiendo que | supposing | supozante | vorausgesetzt | voruusgsetzt | A1 |
| asumiendo que | assuming | supozante | vorausgesetzt | voruusgsetzt | A1 |
| incluso | even | eĉ | sogar | sogar | A1 |
| incluso si | even if | eĉ se | selbst wenn | sälbst wänn | A1 |
| si solo | if only | se nur | wenn nur | wänn nur | A1 |
| en tanto que / siempre y cuando | inasmuch | tiel longe kiel | so lange wie | so lang wie | A1 |
| para que no | lest | por ke ne | damit ... nicht | damit ... nöd / dass ... nöd | A1 |
| aparte | besides | krom | ansonsten |  | A1 |
| sobre todo | especially | speciale | vor allem / insbesondere | vor allem / psunders | A1 |
| en principio | at first | unue | grundsätzlich | grundsätzlich | A1 |
| fundamentalmente | fundamentally | fundamente | grundsätzlich | grundsätzlich | A1 |

### Comparative
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| más | more | pli | mehr | meh | A1 |
| menos | less | malpli | weniger | weniger | A1 |
| que | than | ol | als | als | A1 |

### Relative
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| con | with | kun | mit | mit | A1 |
| sin | without | sen | ohne | ooni | A1 |
| en lugar de | instead of | anstataŭ | statt | statt | A1 |
| y demás | and so on | kaj tiel plu | und so weiter | und so wiiter | A1 |
| además de | besides / on top of | krome | außerdem | usserdem | A1 |
| aparte de | apart from / other than | krom | außer | ussert | A1 |
| según | according to | laŭ | laut | luut | A1 |
| a pesar de | despite | malgraŭ | trotz | trotz | A1 |
| mismo | -self | mem | selbst | sälbst | A1 |
| mediante / por medio de | with, by means of | per | durch | dure | A1 |
| para | for | por | für | für | A1 |
| a causa de | because of | pro | wegen | wäge | A1 |
| solo / solamente | only | nur | nur | nur / nume | A1 |
| ambos - ambas | both | ambaŭ | beide | bäidi | A1 |
| alrededor de | around | ĉirkaŭ | um | um | A1 |
| también / además | also / too | ankaŭ | auch | au | A1 |
| incluso | even | eĉ | sogar | sogar | A1 |
| contra | against | kontraŭ | gegen | gegen | A1, against someone |
| quien sea | whoever | kiu ajn | wer immer / wer auch immer | wer imer / wer au imer | A1 |
| opuesto de | opposite of | kontraŭa de | gegenüber | gägenüber | A1 |
| contrario a | contrary to | kontraŭe al | wider | wider | A1 |

### Location
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| alrededor de | around | ĉirkaŭ | um / um ... herum | um / um ... ume | A1 |
| contra | against | kontraŭ | gegen | gäge | A1 |
| fuera | out | ekstere | raus | use | A1 |
| afuera | outside | ekstere | draußen | dusse / verrusse | A1 |
| dentro | inside | ene | innerhalb | innerhalb | A1 |
| adentro | in | ene | drinnen | dine | A1 |
| sobre | over | super | über | über | A1 |
| encima | above | supre | oberhalb / darüber | drüber | A1 |
| bajo | under | sub | unter | under | A1 |
| debajo | below | sube | unterhalb / darunter | drunter | A1 |
| lejos | away | for | weg | wäg | A1 |
| entre | between | inter | zwischen | zwüsche | A1 |
| cerca de / próximo a | next to / close to | apud | neben | näbe | A1 |
| al lado | close / close by | apude | daneben / drüben | däne / denäbe | A1 |
| a través de | through | tra | durch | dure | A1 |
| a lo largo de | along | laŭ | entlang | entlang | A1 |
| a través de / de punta a punta | across | trans | durch | dure | A1 |
| de vuelta | back | revene | züruck | zrugg | A1 |
| para | to | al | zu | z | A1 |
| de / fuera de | out | el | aus | us | A1 |
| en / dentro de | in | en | in | i / z | A1 |
| dentro | in | ene | darin | drin / dine | A1 |
| en / sobre / encima de | on | sur | auf | uf | A1 |
| bajo / debajo de | under | sub | ab | ab | A1 |
| en | at | al | an | a | A1 |
| en | at | ĉe | bei | bi | A1 |
| a | to | al | nach | nach | A1 |
| donde sea / en algún lugar | wherever | en ajna loko | wo immer / wo auch immer | wo imer / wo au imer | A1 |
| izquierda | left | maldekstre | links | links | A1 |
| derecha | right | dekstre | rechts | rächts | A1 |
| arriba | up | supre | oben | obe | A1 |
| abajo | down | malsupre | unten | une | A1 |
| frente a / en frente de / delante de | in front of | antaŭ | vor | vor | A1 |
| delante / enfrente | in front | antaŭe | davor / vorne | davorne | A1 |
| tras / detrás de | behind | malantaŭ | hinter | hinder | A1 |
| detrás | behind | malantaŭe | dahinter | dahine | A1 |
| norte (M) | north | nordo | Nord (M) | Nord (M) | A2 |
| sur (M) | south | sudo | Süd (M) | Süd (M) | A2 |
| este (M) | west | okcidento | West (M) | West (M) | A2 |
| oeste (M) | east | oriento | Ost (M) | Ost (M) | A2 |
| en casa | home / at home | hejme | zuhause | dihäi | A1, at home |
| a casa | home | hejmen | nach Hause | häi | A1, towards home |

### Movement
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hacia la izquierda | to the left | maldekstren | links | links | A2 |
| hacia la derecha | to the right | dekstren | rechts | rächts | A2 |
| hacia arriba | upwards | supren | oben | ufe | A2 |
| hacia abajo | downwards | malsupren | unten | abe | A2 |
| recto / hacia delante | straight ahead / forwards | rekte antaŭen | geradeaus | graduus | A2 |
| hacia atrás | backwards | malantaŭen | rückwärts | hinderschii | A2 |
| al norte | to the north | nordo | Nord (M) | Nord (M) | B1 |
| al sur | to the south | sudo | Süd (M) | Süd (M) | B1 |
| al este | to the west | okcidento | West (M) | West (M) | B1 |
| al oeste | to the east | oriento | Ost (M) | Ost (M) | B1 |

### Conversational
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ciertamente | certainly | certe | bestimmt | bestimmt | A2 |
| probablemente | probably / likely | verŝajne | wahrscheinlich | wahrschiinlich | A2 |
| aparentemente | apparently | ŝajne | anscheinend | anschiinend | A2 |
| particularmente | particularly | aparte | besonders | bsunders | A2 |
| ojalá | hopefully | espereble | hoffentlich | hoffentlich | A2 |
| obviamente / evidentemente | obviously / evidently | evidente | offensichtlich | offesichtlich | A2 |
| realmente | really | vere | wirklich | würkli / würklich | A2 |
| necesariamente | necessarily | nepre | unbedingt | unbedingt | A2 |
| posiblemente | possibly | eble | möglicherweise | möglicherwiis | A2 |
| en efecto | indeed | ja | tatsächlich / allerdings | tatsächlich / allerdings | A2 |
| por supuesto | of course | kompreneble | natürlich / selbstverständlich | natürlich / sälbstverständlich | A2 |
| por cierto / a propósito | by the way | parenteze | apropos / übrigens | apropo / übrigens | A2 |
| es decir / esto es | that is | tio estas | das heißt | das heisst | A2 |
| en otras palabras | in other words | alinome | mit anderen Worten | mit andere Wort | A2 |
| tal vez / quizás / a lo mejor / puede ser | maybe / perhaps / could be | eble | vielleicht / könnte sein | villicht / chönt sii | A2 |
| al menos / por lo menos | at least | almenaŭ | mindestens / wenigstens / zumindest | mindestens / wenigstens / zumindest | A2 |
| bueno... | well... | nu... | na ja, ... | na ja, ... | A2 |
| además | besides / on top of that | ankaŭ | außerdem | usserdem | A2 |
| en primer lugar | in the first place | en la unua loko | an erster Stelle | a erster Stell | A2 |
| por último | lastly | laste | endlich | ändlich | A2 |
| finalmente | finally | fine | endlich | ändlich | A2 |
| por tanto | therefore | sekve | deswegen / darum / deshalb | deswäge / drum / deshalb | A2 |
| por ejemplo | for example | ekzemple | zum Beispiel | zum Bispiil | A2 |
| actualmente | currently | nuntempe / hodiaŭe | heutzutage | hützutags | A2 |
| recientemente | recently | lastatempe | in letzter Zeit | in letster Ziit | A2 |
| de hecho | in fact | fakte | in der Tat | tatsächlich | A2 |
| especialmente | specially | speciale | insbesondere | bsunders | A2 |
| en particular | in particular | aparte | insbesondere | bsunders | A2 |
| exceptionally | especially / exceptionally | escepte | außergewöhnlich | ussergwöhnlich | A2 |
| en realidad | actually | efektive | eigentlich | eigentlich | A2 |
| a la larga / al final | eventually | fine | schließlich | schliesslich | A2, will happen at some point |
| eventualmente / posiblemente | possibly | eble | möglicherweise | möglicherwiis | A2, may happen, depends on other event |
| exactamente | exactly | ĝuste | genau | genau | A2 |
| efectivamente | effectively | efektive | effektiv | effektiv | A2 |
| aparentemente | apparently | ŝajne | anscheinend | anschiinend | A2 |
| por casualidad / casualmente / por coincidencia | by chance / by coincidence | hazarde | zufällig | zuefällig | A2 |
| de todas formas / en cualquier caso | anyway / anyhow / in any case | ĉiuokaze | sowieso / jedenfalls / auf jeden Fall | sowieso / jedefalls / uuf jede Fall | A2 |
| accidentalmente | accidentally | akcidente | versehentlich / aus Versehen | versehentli / uus versehe | A2 |
| en general | in general | ĝenerale | überhaupt |  | A2 |
| generalmente | generally | ĝenerale | überhaupt | überhaupt | A2 |
| desafortunadamente | unfortunately | bedaŭrinde | leider | laider | A2 |
| antes de nada / primero de todo | first of all | unua | vor allem | vor allem | A2 |
| de antemano | beforehand | antaŭe | vorher | vorher | A2 |

### Abbreviations
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| p.ej. | e.g. | ekz. | z.B. | z.B. | A2, por ejemplo |
| etc. | etc. | ktp. | usw. | usw. | A2, Etcetera |
| i.e. | i.e. | t.e. | d.h. | d.h. | A2, That is |

### Correlative conjunctions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tanto ... como ... | both ... and ... | kaj ... kaj ... | sowohl ... als auch ... | sowohl ... als au ... | A2 |
| ni ... ni ... | neither ... nor ... | nek ... nek ... | weder ... noch ... | weder ... noch ... | A2 |
| o ... o ... | either ... or ... | aŭ ... aŭ ... | entweder ... oder ... | entweder ... oder ... | A2 |
| a más ..., más ... | the more ..., the more ... | ju ... des ... | je ..., desto ... | je ..., desto ... | A2 |
| no sólo ..., sino también ... | not only ..., but also ... | ne nur ..., sed ankaŭ ... | nicht nur ..., sondern auch ... | nöd nur ..., sondern au ... | A2 |
| bien es cierto que ..., aunque ... / sí, ..., aunque ... | yes, ..., but ... | jes, ..., sed ... | zwar ... aber ... | zwar ... aber ... | A2 |

### Other determiners
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| otro - otra | other | alia | andere | andere | A1 |
| otro - otra | another | alia | ein andere / noch ein / ein weitere | en andere / nomal es andere | A1 |
| cierto - cierta | certain | certa | gewiss | gwüsse | A2 |
| primer | first | unua | erst | erst | A2 |
| último - ültima | last | lasta | letzt | letst | A2 |
| tal | such | tia | so | so | A2 |

### Phrasal determiners
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| quiero el grande - quiero la grande | I want the big one | mi volas la grandan | ich will den große - ich will die große - ich will das große | ich wott de großi - ich wott d großi - ich wott s große | B1 |
| uno y el otro - una y la otra | one and the other | unu kaj la alia | der eine und der andere - die eine und die andere - das eine und das andere | de äint und der ander - di äint und di ander - s äint und s ander | B1 |

### Correlatives
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| quién | who | kiu | wer | wer | A2, person |
| quien | who | kiu | wer | wer | A2, person, Relative adverb (e.g. _how much_ you've bought is fine) |
| esta persona | this one / this person | ĉi tiu | diese Person / dieser Mensch | die Person / de Mänsch | A2, Nominative, person |
| esa persona | that one / that person | tiu | diese Person / dieser Mensch | die Person / de Mänsch | A2, Nominative, person |
| aquella persona | that one / that person | tiu | diese Person / dieser Mensch | die Person / de Mänsch | A2, Nominative, person |
| alguien | someone | iu | jemand (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | öpper | A2, person |
| cualquier otra persona | someone else | iu alia | jemand anderes | öpper anders | A2, person |
| nadie | nobody | neniu | niemand (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | niemert | A2, person |
| nadie en absoluto | nobody at all | neniu ajn | gar niemand | gar niemert | A2, person |
| todas las personas / todo el mundo | everyone / everybody | ĉiu | alle / jedermann / jede (+deklination wie Artikel) | jede (+deklination wie Artikel) | A2, person |
| absolutamente todas las personas / absolutamente todo el mundo | absolutely everyone / absolutely everybody | ĉiu ajn | jede (+deklination wie Artikel) einzelne | jede (+deklination wie Artikel) einzelne | A2, person |
| cada una de esas personas | each of those people | ĉiuj | jede (+deklination wie Artikel) einzelne | jede (+deklination wie Artikel) einzelne | A2, person |
| cuál | which | kiu | welch (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | wele (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, thing out of a group |
| cual | which | kiu | welch (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | wele (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, thing out of a group, Relative adverb (e.g. _how much_ you've bought is fine) |
| este (neutro igual, femenino e->a, plural masculino e->os, plural femenino e->as) | this one | ĉi tiu (+pluralo j) | dies (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | de (+deklination F/Pl:e->ie, N:e->as) | A2, Nominative, thing out of a group |
| ese (neutro igual, femenino e->a, plural masculino e->os, plural femenino e->as) | that one | tiu (+pluralo j) | das / dies (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A2, Nominative, thing out of a group |
| aquel (neutro igual, femenino +la, plural masculino +los, plural femenino +las) | that one | tiu (+pluralo j) | das / jene (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A2, Nominative, thing out of a group |
| alguno / cualquier - cualquiera | some one | iu | einige | epaar / espaar / paar / äinigi / etli | A2, thing out of a group |
| unos cuantos | some | iuj / kelke | einige | epaar / espaar / paar / äinigi / etli | A2, thing out of a group |
| ninguno | no one | neniu | keins / keines | käis / käs | A2, Nominative, thing out of a group, Neutral |
| ninguno en absoluto | no one at all | neniu ajn | gar keins / gar keines | gar käis / gar käs | A2, thing out of a group |
| todos | every one | ĉiu | alle | alli | A2, thing out of a group |
| absolutamente todos | absolutely every one | ĉiu ajn | jede (+deklination wie Artikel) einzelne | jede (+deklination wie Artikel) einzelne | A2, thing out of a group |
| cada uno de esos | each of those | ĉiuj | jede (+deklination wie Artikel) einzelne | jede (+deklination wie Artikel) einzelne | A2, thing out of a group |
| qué | what | kio | was | was | A2, thing, unknown |
| que | what | kio | was | was | A2, thing, unknown, Relative adverb (e.g. _how much_ you've bought is fine) |
| esto | this thing | ĉi tio | das | das | A2, Nominative, thing, unknown |
| eso | that thing | tio | das | das | A2, Nominative, thing, unknown |
| aquello | that thing | tio | das / jene (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | das | A2, Nominative, thing, unknown |
| algo | something | io | etwas | öppis | A2, thing, unknown |
| cualquier cosa | anything | io ajn | irgend etwas | irgend öppis | A2, thing, unknown |
| nada | nothing | nenio | nichts | nüt | A2, thing, unknown |
| nada en absoluto | nothing at all | nenio ajn | gar nichts | gar nüt | A2, thing, unknown |
| todo | everything | ĉio | alles | alles | A2, thing, unknown |
| todo en absoluto | absolutely everything | ĉio ajn | absolut alles | absolut alles | A2, thing, unknown |
| qué clase de | what kind of | kia | was für | was für | A2, kind of thing |
| esta clase de / tal | this kind of | ĉi tia | such / so | soo / eso / esoo | A2, kind of thing |
| esa clase de / tal | that kind of | tia | such / so | soo / eso / esoo | A2, kind of thing |
| aquella clase de / tal | that kind of | tia | such / so | soo / eso / esoo | A2, kind of thing |
| alguna clase de | some kind of | ia | irgendwie | irgendwie | A2, kind of thing |
| ninguna clase de | no kind of | nenia | keine Arten von | käi Arte vo | A2, kind of thing |
| absolutamente ninguna clase de | no kind of ... at all | nenia ajn | gar keine Arten von | gar käi Arte vo | A2, kind of thing |
| toda clase de | every kind of | ĉia | alle Arten von | alli Arte vo | A2, kind of thing |
| absolutamente toda clase de | absolutely every kind of | ĉia ajn | absolut alle Arten von | absolut alli Arte vo | A2, kind of thing |
| cada clase de | each kind of | ĉiaj | jede Art von | jedi Art vo | A2, kind of thing |
| dónde | where | kie | wo | wo | A2, location, Location without direction |
| donde | where | kie | wo | wo | A2, location, Relative adverb (e.g. _how much_ you've bought is fine) |
| aquí | here | ĉi tie | hier | da | A2, location, Location without direction |
| ahí | there | tie | da | da | A2, location, Location without direction |
| allí / allá | there | tie | dort | deet | A2, location, Location without direction |
| en algún lugar | somewhere / anywhere | ie | irgendwo | irgendwo | A2, location, Location without direction |
| en ningún lugar | nowhere | nenie | nirgendwo / nirgends | nirgendwo / nirgends | A2, location, Location without direction |
| en ningún lugar en absoluto | nowhere at all | nenie ajn | gar nirgendwo / gar nirgends | gar nirgendwo / gar nirgends | A2, location, Location without direction |
| en todos sitios | everywhere | ĉie | überall | überall | A2, location, Location without direction |
| en absolutamente todos sitios | absolutely everywhere | ĉie ajn | absolut überall | absolut überall | A2, location, Location without direction |
| en cada sitio | in each place | ĉiej | an jedem Ort | aa jedem Ort | A2, location, Location without direction |
| a dónde | where | kien | wohin | wohii | A2, direction, Location with direction |
| a donde | where | kien | wohin | wohii | A2, direction, Relative adverb (e.g. _how much_ you've bought is fine) |
| hacia aquí | here | ĉi tien | hierhin | dahii | A2, direction, Location with direction |
| hacia ahí | there | tien | dahin | dahii | A2, direction, Location with direction |
| hacia allí / hacia allá | there | tien | dorthin | deethii | A2, direction, Location with direction |
| hacia algún lugar | somewhere | ien | irgendwohin | irgendwohii | A2, direction, Location with direction |
| hacia ningún lugar | nowhere | nenien | nirgendwohin | nirgendwohii | A2, direction, Location with direction |
| hacia ningún lugar en absoluto | nowhere at all | nenien ajn | gar nirgendwohin | gar nirgendwohii | A2, direction, Location with direction |
| hacia todos sitios | everywhere | ĉien | überall hin | überall hii | A2, direction, Location with direction |
| hacia absolutamente todos lados | absolutely everywhere | ĉien ajn | absolut überall hin | absolut überall hii | A2, direction, Location with direction |
| hacia cada uno de los lados | to each of the places | ĉiejn | in jede Richtung | ii jedi Richtig | A2, direction, Location with direction |
| cómo / al igual que | how / just like | kiel | wie / genauso wie | wie / genauso wie | A2, way of doing |
| como | how | kiel | wohin | wohii | A2, way of doing, Relative adverb (e.g. _how much_ you've bought is fine) |
| así / de esta manera | in this way | ĉi tiel | so | soo / eso / esoo | A2, way of doing |
| así / de esa manera | in that way | tiel | so | soo / eso / esoo | A2, way of doing |
| de alguna manera | somehow | iel | irgendwie | irgendwie | A2, way of doing |
| de ninguna manera | in no way | neniel | keineswegs | uff käi Fall | A2, way of doing |
| de ninguna manera en absoluto | in no way at all | neniel ajn | gar keineswegs | uff gar käi Fall | A2, way of doing |
| de todas las formas | in everyway | ĉiel |  |  | A2, way of doing, (e.g. ayudar de todas las formas posibles) |
| de absolutamente todas las formas | in absolutely everyway | ĉiel ajn |  |  | A2, way of doing, (e.g. ayudar de todas las formas posibles) |
| por qué | why | kial | warum / wieso | warum / wieso | A2, reason to do |
| por esto | for this reason | ĉi tial | darum / aus diesem Grund / aus Grund dessen | darum | A2, reason to do |
| por eso | for that reason | tial | darum / aus diesem Grund / aus Grund dessen | darum | A2, reason to do |
| por lo que sea | for some reason | ial | aus irgendeinem Grund | us irgendeme Grund | A2, reason to do |
| sin ningún motivo | for no reason | nenial | ohne Grund | ohni Grund | A2, reason to do |
| sin ningún motivo en absoluto | for no reason at all | nenial ajn | absolut ohne Grund | absolut ohni Grund | A2, reason to do |
| por todas las razones | for every reason | ĉial | aus allen Gründen | us allene Gründ | A2, reason to do |
| por absolutamente todas las razones | for absolutely every reason | ĉial ajn | aus absolut allen Gründen | us absolut allene Gründ | A2, reason to do |
| cuándo | when | kiam | wann | wänn | A2, time |
| cuando | when | kiam | wann | wänn | A2, time, Relative adverb (e.g. _how much_ you've bought is fine) |
| en este momento | in this moment | ĉi tiam | in diesem moment | i dem Momänt | A2, time |
| en ese momento | in that moment | tiam | in diesem moment | i dem Momänt | A2, time |
| entonces | then | tiam | dann | dänn | A2, time |
| en algún momento | at some time | iam | irgendwann | irgendwänn | A2, time |
| nunca | never | neniam | nie / noch nie | nie / no nie | A2, time |
| nunca jamás / jamás | never ever | neniam ajn | gar nie | gar nie | A2, time |
| siempre | always | ĉiam | immer | imer | A2, time |
| siempre jamás | absolutely always | ĉiam ajn | absolut immer | absolut imer | A2, time |
| cuánto | how much | kiom | wie viel | wievill | A2, amount, uncountable |
| cuanto | how much | kiom | wie viel | wievill | A2, amount, uncountable, Relative adverb (e.g. _how much_ you've bought is fine) |
| esta cantidad | this much | ĉi tiom | diese Menge | die Mängi | A2, amount, uncountable |
| esa cantidad | that much | tiom | diese Menge | die Mängi | A2, amount, uncountable |
| algo de | some | iom | etwas | öppis | A2, amount, uncountable |
| nada de | none of | neniom | kein | käin | A2, amount, uncountable |
| absolutamente nada de | none of ... at all | neniom ajn | gar kein | gar käin | A2, amount, uncountable |
| todo de | all of | ĉiom | alle | alli / de ganz | A2, amount, uncountable |
| absolutamente todo de | absolutely all of | ĉiom ajn | absolut alle | absolut alli | A2, amount, uncountable |
| cuántos | how many | kiom da | wie viele | wievilli | A2, amount, countable |
| cuantos | how many | kiom da | wie viele | wievilli | A2, amount, countable, Relative adverb (e.g. _how much_ you've bought is fine) |
| estos | this many | ĉi tiom da | diese Menge | die Mängi | A2, amount, countable |
| esos | that many | tiom da | diese Menge | die Mängi | A2, amount, countable |
| unos cuantos | some | iom da | einige | epaar / espaar / paar / äinigi / etli | A2, amount, countable |
| ninguno | none | neniom da | kein | käin | A2, amount, countable |
| ninguno en absoluto | none at all | neniom ajn da | gar keins / gar keines | gar käin | A2, amount, countable |
| todos | all of | ĉiom da | alle | alli / de ganz | A2, amount, countable |
| absolutamente todos | absolutely all of | ĉiom ajn da | gar alle | absolut alli | A2, amount, countable |
| de quién | whose | kies | wessen |  | A2, of whom is something |
| de quien | whose | kies | wessen |  | A2, of whom is something, Relative adverb (e.g. _how much_ you've bought is fine) |
| de este | this one's | ĉi ties | davon | devo | A2, of whom is something |
| de ese | that one's | ties | davon | devo | A2, of whom is something |
| de alguien | someone's | ies | von jemandem | vo öpperem | A2, of whom is something |
| de nadie | nobody's | nenies | von niemandem | vo niemerem | A2, of whom is something |
| de todos | everyone's | ĉies | von allem | vo allne | A2, of whom is something |

<a name="4_declension">

## Section 4: Declension

### Pronouns and Possessives
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| yo | I | mi | ich | ich | A2, Nominative, I |
| me | me | min | mich | mich | A2, Accusative, I |
| a mí | to me | al mi | mir | mir | A2, Dative, I |
| mí | myself | mi | ich selbst | ich sälber | A2, Nominative, I, Reflexive |
| me |  | min | mich | mich | A2, Accusative, I, Reflexive |
| a mí mismo | to myself | al mi | mir | mir | A2, Dative, I, Reflexive |
| mi ... (+plural s) | my ... | mia ... (+pluralo j) | mein ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | min ... (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, I, Determinant |
| mío (o... género a, + plural s) | my | mia (+pluralo j) | mein (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | mine (+deklination: F/Pl:e->i, N:ne->s, DAT M/N:ne->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, I, Pronoun |
| tú | you | vi | du | du | A2, Informal, Nominative, you |
| te | you | vin | dich | dich | A2, Informal, Accusative, you |
| a ti | to you | al vi | dir | dir | A2, Informal, Dative, you |
| ti | yourself | vi | du selbst | du sälber | A2, Informal, Nominative, you, Reflexive |
| te |  | vin | dich | dich | A2, Informal, Accusative, you, Reflexive |
| a ti mismo | to yourself | al vi | dir | dir | A2, Informal, Dative, you, Reflexive |
| tu ... (+plural s) | your ... | via ... (+pluralo j) | dein ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | din ... (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Informal, Genitive, you, Determinant |
| tuyo (o... género a, + plural s) | yours | via (+pluralo j) | dein (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | din (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Informal, Genitive, you, Pronoun |
| usted | you | vi / (ci) | Sie | Si | A2, Formal, Nominative, you |
| le | you | vin / (cin) | Sie | Si | A2, Formal, Accusative, you |
| a usted | to you | al vi / (al ci) | Ihnen | Ine  | A2, Formal, Dative, you |
| sí | yourself | vi | Sie selbst | Si sälber | A2, Formal, Nominative, you, Reflexive |
| se |  | vin / (cin) | sich | sich | A2, Formal, Accusative, you, Reflexive |
| a usted mismo | to yourself | al vi /(al ci) | sich | sich | A2, Formal, Dative, you, Reflexive |
| su ... (+plural s) | your ... | via ... / (cia ...) (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Formal, Genitive, you, Determinant |
| suyo (o... género a, + plural s) | yours | via / (cia) (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Formal, Genitive, you, Pronoun |
| él | he | li | er | er | A2, Nominative, he |
| le | him | lin | ihn | in | A2, Accusative, he |
| a él | to him | al li | ihm | im | A2, Dative, he |
| sí | himself | si | er selbst | er sälber | A2, Nominative, he, Reflexive |
| se |  | sin | sich | sich | A2, Accusative, he, Reflexive |
| a sí mismo | to himself | al sin | sich | sich | A2, Dative, he, Reflexive |
| su ... (+plural s) | his ... | lia ... (+pluralo j) | sein ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | sin ... (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, he, Determinant |
| suyo (o... género a, + plural s) | his | lia (+pluralo j) | sein (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | sin (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, he, Pronoun |
| ella | she | ŝi | sie | si | A2, Nominative, she |
| le | her | ŝin | sie | si | A2, Accusative, she |
| a ella | to her | al ŝi | ihr | ire | A2, Dative, she |
| sí | herself | si | sie selbst | si sälber | A2, Nominative, she, Reflexive |
| se |  | sin | sich | sich | A2, Accusative, she, Reflexive |
| a sí misma | to herself | al sin | sich | sich | A2, Dative, she, Reflexive |
| su ... (+plural s) | her ... | ŝia ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, she, Determinant |
| suyo (o... género a, + plural s) | hers | ŝia (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, she, Pronoun |
| eso / ello | it | ĝi | es | s / es | A2, Nominative, it |
| le | it | ĝin | es | s | A2, Accusative, it |
| a eso | to it | al ĝi | ihm | im | A2, Dative, it |
| sí | itself | si | es selbst | s sälber / es sälber | A2, Nominative, it, Reflexive |
| se |  | sin | sich | sich | A2, Accusative, it, Reflexive |
| a sí mismo | to itself | al sin | sich | sich | A2, Dative, it, Reflexive |
| su ... (+plural s) | its ... | ĝia ... (+pluralo j) | sein ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | sin ... (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, it, Determinant |
| suyo (o... género a, + plural s) | its own | ĝia (+pluralo j) | sein (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | sin (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, it, Pronoun |
| nosotros | we | ni | wir | mir | A2, Nominative, we |
| nos | us | nin | uns | ois / eus | A2, Accusative, we |
| a nosotros | to us | al ni | uns | ois / eus | A2, Dative, we |
| nosotros | ourselves | ni | wir selbst | mir sälber | A2, Nominative, we, Reflexive |
| nos |  | nin | uns | ois / eus | A2, Accusative, we, Reflexive |
| a nosotros mismos | to ourselves | al ni | uns | ois / eus | A2, Dative, we, Reflexive |
| nuestro ... (+plural s) | our ... | nia ... (+pluralo j) | unsere ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | oise ... / euse ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, we, Determinant |
| nuestro (o... género a, + plural s) | ours | nia (+pluralo j) | unsere (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | oise / euse (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, we, Pronoun |
| nosotras | we | ni | wir | mir | A2, Nominative, we |
| nos | us | nin | uns | ois / eus | A2, Accusative, we |
| a nosotras | to us | al ni | uns | ois / eus | A2, Dative, we |
| nosotras | ourselves | ni | wir selbst | mir sälber | A2, Nominative, we, Reflexive |
| nos |  | nin | uns | ois / eus | A2, Accusative, we, Reflexive |
| a nosotras mismas | to ourselves | al ni | uns | ois / eus | A2, Dative, we, Reflexive |
| nuestro ... (+plural s) | our ... | nia ... (+pluralo j) | unsere ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | oise ... / euse ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, we, Determinant |
| nuestro (o... género a, + plural s) | ours | nia (+pluralo j) | unsere (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | oise / euse (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, we, Pronoun |
| vosotros | you | vi | ihr | ir | A2, Informal, Nominative, you plural |
| os | you | vin | euch | oi / eu | A2, Informal, Accusative, you plural |
| a vosotros | to you | al vi | euch | oi / eu | A2, Informal, Dative, you plural |
| vosotros | yourselves | vi | ihr selbst | ir sälber | A2, Informal, Nominative, you plural, Reflexive |
| os |  | vin | euch | oi / eu | A2, Informal, Accusative, you plural, Reflexive |
| a vosotros mismos | to yourselves | al vi | euch | oi / eu | A2, Informal, Dative, you plural, Reflexive |
| vuestro ... (+plural s) | your ... | via ... (+pluralo j) | eure ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ist "euer"))einem Substantiv, _e_, _es_, _er_, _em_, _en_, __) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Informal, Genitive, you plural, Determinant |
| vuestro (o... género a, + plural s) | yours | via (+pluralo j) | eure (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Informal, Genitive, you plural, Pronoun |
| vosotras | you | vi | ihr | ir | A2, Informal, Nominative, you plural |
| os | you | vin | euch | oi / eu | A2, Informal, Accusative, you plural |
| a vosotras | to you | al vi | euch | oi / eu | A2, Informal, Dative, you plural |
| vosotras | yourselves | vi | ihr selbst | ir sälber | A2, Informal, Nominative, you plural, Reflexive |
| os |  | vin | euch | oi / eu | A2, Informal, Accusative, you plural, Reflexive |
| a vosotras mismas | to yourselves | al vi | euch | oi / eu | A2, Informal, Dative, you plural, Reflexive |
| vuestro ... (+plural s) | your ... | via ... (+pluralo j) | eure ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Informal, Genitive, you plural, Determinant |
| vuestro (o... género a, + plural s) | yours | via (+pluralo j) | eure (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Informal, Genitive, you plural, Pronoun |
| ustedes | you | vi | ihr | ir | A2, Formal, Nominative, you plural |
| les | you | vin | euch | oi / eu | A2, Formal, Accusative, you plural |
| a ustedes | to you | al vi | euch | oi / eu | A2, Formal, Dative, you plural |
| ustedes | yourselves | vi | ihr selbst | ir sälber | A2, Formal, Nominative, you plural, Reflexive |
| se |  | vin | euch | oi / eu | A2, Formal, Accusative, you plural, Reflexive |
| a ustedes mismos | to yourselves | al vi | euch | oi / eu | A2, Formal, Dative, you plural, Reflexive |
| su ... (+plural s) | your ... | via ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Formal, Genitive, you plural, Determinant |
| suyo (o... género a, + plural s) | yours | via (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | oie ... / eue ... (+deklination, F/Pl:e->ri, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Formal, Genitive, you plural, Pronoun |
| ellos | they | ili | sie | si | A2, Nominative, they |
| le | them | ilin | sie | si | A2, Accusative, they |
| a ellos | to them | al ili | ihnen | ine | A2, Dative, they |
| sí | themselves | ili | sie selbst | si sälber | A2, Nominative, they, Reflexive |
| se |  | ilin | sich | sich | A2, Accusative, they, Reflexive |
| a ellos mismos | to themselves | al ili | sich | sich | A2, Dative, they, Reflexive |
| su ... (+plural s) | their ... | ilia ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Determinant |
| suyo (o... género a, + plural s) | theirs | ilia (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Pronoun |
| ellas | they | ili | sie | si | A2, Nominative, they |
| le | them | ilin | sie | si | A2, Accusative, they |
| a ellas | to them | al ili | ihnen | ine | A2, Dative, they |
| sí | themselves | ili | sie selbst | si sälber | A2, Nominative, they, Reflexive |
| se |  | ilin | sich | sich | A2, Accusative, they, Reflexive |
| a ellas mismas | to themselves | al ili | sich | sich | A2, Dative, they, Reflexive |
| su ... (+plural s) | their ... | ilia ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Determinant |
| suyo (o... género a, + plural s) | theirs | ilia (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Pronoun |
| ellos | they | ili | sie | si | A2, Nominative, they, Neutral |
| le | them | ilin | sie | si | A2, Accusative, they, Neutral |
| a ellos | to them | al ili | ihnen | ine | A2, Dative, they, Neutral |
| sí | themselves | ili | sie selbst | si sälber | A2, Nominative, they, Reflexive; Neutral |
| se |  | ilin | sich | sich | A2, Accusative, they, Reflexive; Neutral |
| a ellos mismas | to themselves | al ili | sich | sich | A2, Dative, they, Reflexive; Neutral |
| su ... (+plural s) | their ... | ilia ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Determinant; Neutral |
| suyo (o... género a, + plural s) | theirs | ilia (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, they, Pronoun; Neutral |
| uno | one | oni | man | mer | A2, Nominative, indefinite, Indefinite |
| le | one | onin | einen | eine | A2, Accusative, indefinite, Indefinite |
| a él | to oneself | al oni | einem | einem | A2, Dative, indefinite, Indefinite |
| sí | oneself | oni | man selbst | mer sälber | A2, Nominative, indefinite, Reflexive; Indefinite |
| se |  | onin | sich | sich | A2, Accusative, indefinite, Reflexive; Indefinite |
| a sí mismo | to oneself | al oni | sich | sich | A2, Dative, indefinite, Reflexive; Indefinite |
| su ... (+plural s) | one's ... | onia ... (+pluralo j) | sein ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | sin ... (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, indefinite, Determinant; Indefinite |
| suyo (o... género a, + plural s) | one's own | onia (+pluralo j) | sein (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | sin (+deklination: F/Pl:+i, N:n->s, DAT M/N:n->m, DAT F:+ere, DAT Pl:+e) | A2, Genitive, indefinite, Pronoun; Indefinite |
| una | one | oni | man | mer | A2, Nominative, indefinite, Indefinite |
| le | one | onin | einen | eini | A2, Accusative, indefinite, Indefinite |
| a ella | to oneself | al oni | einem | einere | A2, Dative, indefinite, Indefinite |
| sí | oneself | oni | man selbst | mer sälber | A2, Nominative, indefinite, Reflexive; Indefinite |
| se |  | onin | sich | sich | A2, Accusative, indefinite, Reflexive; Indefinite |
| a sí misma | to oneself | al oni | sich | sich | A2, Dative, indefinite, Reflexive; Indefinite |
| su ... (+plural s) | one's ... | onia ... (+pluralo j) | ihr ... (+deklination wie Adjektiv vor einem Substantiv, _e_, _es_, _er_, _em_, _en_, __ (M Singular ohne Endung)) | ire ... (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, indefinite, Determinant; Indefinite |
| suyo | one's own | onia (+pluralo j) | ihr (+deklination wie Artikel, d_er_, di_e_ da_s_, d_em_, d_en_) | ire (+deklination, F/Pl:e->i, N:+s, DAT M/N:+m, DAT F: +ere, DAT Pl:e->ne) | A2, Genitive, indefinite, Pronoun; Indefinite |

### Articles
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| el | the | la | der | de | A2, Nominative, Male |
| lo | the | la | den | de | A2, Accusative, Male |
| al | to the | al la | dem | em | A2, Dative, Male |
| del | of the | de la | des | vom | A2, Genitive, Male |
| la | the | la | die | d | A2, Nominative, Female |
| la | the | la | die | d | A2, Accusative, Female |
| a la | to the | al la | der | de | A2, Dative, Female |
| de la | of the | de la | der | vo de | A2, Genitive, Female |
| lo | the | la | das | s | A2, Nominative, Neutral |
| lo | the | la | das | s | A2, Accusative, Neutral |
| a lo | to the | al la | dem | em | A2, Dative, Neutral |
| de lo | of the | de la | des | vom | A2, Genitive, Neutral |
| los | the | la | die | d | A2, Nominative, Male/Neutral Plural |
| los | the | la | die | d | A2, Accusative, Male/Neutral Plural |
| a los | to the | al la | den | dene | A2, Dative, Male/Neutral Plural |
| de los | of the | de la | der | vo dene | A2, Genitive, Male/Neutral Plural |
| las | the | la | die | d | A2, Nominative, Female Plural |
| las | the | la | die | d | A2, Accusative, Female Plural |
| a las | to the | al la | den | dene | A2, Dative, Female Plural |
| de las | of the | de la | der | vo dene | A2, Genitive, Female Plural |
| un | a / an |  | ein | en | A2, Nominative, Male |
| un | a / an | la | einen | en | A2, Accusative, Male |
| a un | to a / an | al la | einem | emene | A2, Dative, Male |
| de un | of a / an | de la | eines | vomene | A2, Genitive, Male |
| una | a / an |  | eine | e (*e-n- vor Vokal) | A2, Nominative, Female |
| una | a / an | la | eine | e (*e-n- vor Vokal?) | A2, Accusative, Female |
| a una | to a / an | al la | einer | enere | A2, Dative, Female |
| de una | of a / an | de la | einer | vonere | A2, Genitive, Female |
|  | a |  | ein | es | A2, Nominative, Neutral Indeterminate |
|  | a / an | la | ein | es | A2, Accusative, Neutral Indeterminate |
|  | to a / an | al la | einem | emene | A2, Dative, Neutral Indeterminate |
|  | of a / an | de la | eines | vomene | A2, Genitive, Neutral Indeterminate |
| unos | some |  | einige | äinigi | A2, Nominative, Male/Neutral Plural |
| unos | some | la | einige | äinigi | A2, Accusative, Male/Neutral Plural |
| a unos | to some | al la | einigen | äinige | A2, Dative, Male/Neutral Plural |
| de unos | of some | de la | einiger | vo äinige | A2, Genitive, Male/Neutral Plural |
| unas | some |  | einige | äinigi | A2, Nominative, Female Plural |
| unas | some | la | einige | äinigi | A2, Accusative, Female Plural |
| a unas | to some | al la | einigen | äinige | A2, Dative, Female Plural |
| de unas | of some | de la | einiger | vo äinige | A2, Genitive, Female Plural |
|  | some |  | einige | äinigi | A2, Nominative, Neutral Indeterminate Plural |
|  | some | la | einige | äinigi | A2, Accusative, Neutral Indeterminate Plural |
|  | to some | al la | einigen | äinige | A2, Dative, Neutral Indeterminate Plural |
|  | of some | de la | einiger | vo äinige | A2, Genitive, Neutral Indeterminate Plural |
| ninguno | no one | neniu | keiner | käine / käne | A2, Nominative, Male |
| ninguno | no one | neniu | keinen | käine / käne | A2, Accusative, Male |
| a ninguno | to no one | al neniu | keinem | käim / käm | A2, Dative, Male |
| de ninguno | of no one | de neniu | keines | vo käim / vo käm | A2, Genitive, Male |
| ninguna | no one | neniu | keine | käini / käni | A2, Nominative, Female |
| ninguna | no one | neniu | keine | käini / käni | A2, Accusative, Female |
| a ninguna | to no one | al neniu | keiner | käinere / känere | A2, Dative, Female |
| de ninguna | of no one | de neniu | keiner | vo käinere / vo känere | A2, Genitive, Female |
| ninguno | no one | neniu | keins / keines | käis / käs | A2, Nominative, Neutral |
| ninguno | no one | neniu | keins / keines | käis / käs | A2, Accusative, Neutral |
| a ninguno | to no one | al neniu | keinem | käim / käm | A2, Dative, Neutral |
| de ninguno | of no one | de neniu | keines | vo käim / vo käm | A2, Genitive, Neutral |
| ningunos | no one | neniu | keine | käini / käni | A2, Nominative, Male/Neutral Plural |
| ningunos | no one | neniu | keine | käini / käni | A2, Accusative, Male/Neutral Plural |
| a ningunos | to no one | al neniu | keinen | käine / käne | A2, Dative, Male/Neutral Plural |
| de ningunos | of no one | de neniu | keiner | vo käine / vo käne | A2, Genitive, Male/Neutral Plural |
| ningunas | no one | neniu | keine | käini / käni | A2, Nominative, Female Plural |
| ningunas | no one | neniu | keine | käini / käni | A2, Accusative, Female Plural |
| a ningunas | to no one | al neniu | keinen | käine / käne | A2, Dative, Female Plural |
| de ningunas | of no one | de neniu | keiner | vo käine / vo käne | A2, Genitive, Female Plural |
| ningún ... | no ... | neniu ... | kein ... | käin ... / kän ... | A2, Nominative, Male |
| ningún ... | no ... | neniu ... | keinen ... | käin ... / kän ... | A2, Accusative, Male |
| a ningún ... | to no ... | al neniu ... | keinem ... | käim ... / käm ... | A2, Dative, Male |
| de ningún ... | of no ... | de neniu ... | keines ... | vo käim ... / vo käm ... | A2, Genitive, Male |
| ninguna ... | no ... | neniu ... | keine ... | käi ... / kä ... | A2, Nominative, Female |
| ninguna ... | no ... | neniu ... | keine ... | käi ... / kä ... | A2, Accusative, Female |
| a ninguna ... | to no ... | al neniu ... | keiner ... | käinere ... / känere ... | A2, Dative, Female |
| de ninguna ... | of no ... | de neniu ... | keiner ... | vo käi ... / vo kä ... | A2, Genitive, Female |
| ningún ... | no ... | neniu ... | kein ... | käis ... / käs ... | A2, Nominative, Neutral |
| ningún ... | no ... | neniu ... | kein ... | käis ... / käs ... | A2, Accusative, Neutral |
| a ningún ... | to no ... | al neniu ... | keinem ... | käim ... / käm ... | A2, Dative, Neutral |
| de ningún ... | of no ... | de neniu ... | keines ... | vo käim ... / vo käm ... | A2, Genitive, Neutral |
| ningunos ... | no ... | neniuj ... | keine ... | käi ... / kä ... | A2, Nominative, Male/Neutral Plural |
| ningunos ... | no ... | neniuj ... | keine ... | käi ... / kä ... | A2, Accusative, Male/Neutral Plural |
| a ningunos ... | to no ... | al neniuj ... | keinen ... | käine ... / käne ... | A2, Dative, Male/Neutral Plural |
| de ningunos ... | of no ... | de neniuj ... | keiner ... | vo käi ... / vo kä ... | A2, Genitive, Male/Neutral Plural |
| ningunas ... | no ... | neniuj ... | keine ... | käi ... / kä ... | A2, Nominative, Female Plural |
| ningunas | no ... | neniuj ... | keine ... | käi ... / kä ... | A2, Accusative, Female Plural |
| a ningunas | to no ... | al neniuj ... | keinen ... | käine ... / käne ... | A2, Dative, Female Plural |
| de ningunas | of no ... | de neniuj ... | keiner ... | vo käi ... / vo kä ... | A2, Genitive, Female Plural |

### Relative Pronouns
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| que / el que / el cual / quien | who / that | kiu | der | wo | A2, Nominative, Person |
| que / el que / el cual / quien | who / that | kiu | den | wo | A2, Accusative, Person |
| al que / al cual / a quien | to who | al kiu | dem | dem | A2, Dative, Person |
| cuyo | whose | kies | dessen | vo dem / dem + possessive (e.g. dem sini) | A2, Genitive, Person |
| que / la que / la cual / quien | who / that | kiu | die | wo | A2, Nominative, Person |
| que / la que / la cual / quien | who / that | kiu | die | wo | A2, Accusative, Person |
| a la que / a la cual / a quien | to who | al kiu | der | dere | A2, Dative, Person |
| cuya | whose | kies | deren | vo dere / dere + possessive (e.g. dere sini) | A2, Genitive, Person |
| que / los que / los cuales / quienes | who / that | kiu | die | wo | A2, Nominative, Person |
| que / los que / los cuales / quienes | who / that | kiu | die | wo | A2, Accusative, Person |
| a los que / a los cuales / a quienes | to who | al kiu | denen | dene | A2, Dative, Person |
| cuyos | whose | kies | deren | vo dene / dene + possessive (e.g. dene sini) | A2, Genitive, Person |
| que / las que / las cuales / quienes | who / that | kiu | die | wo | A2, Nominative, Person |
| que / las que / las cuales / quienes | who / that | kiu | die | wo | A2, Accusative, Person |
| a las que / a las cuales / a quienes | to who | al kiu | denen | dene | A2, Dative, Person |
| cuyas | whose | kies | deren | vo dene / dene + possessive (e.g. dene sini) | A2, Genitive, Person |
| que / el que / el cual | which / that | kiu | der | wo | A2, Nominative, Thing |
| que / el que / el cual | which / that | kiu | den | wo | A2, Accusative, Thing |
| al que / al cual | to which | al kiu | dem | dem | A2, Dative, Thing |
| cuyo | whose | kies | dessen | vo dem / dem + possessive (e.g. dem sini) | A2, Genitive, Thing |
| que / la que / la cual | which / that | kiu | die | wo | A2, Nominative, Thing |
| que / la que / la cual | which / that | kiu | die | wo | A2, Accusative, Thing |
| a la que / a la cual | to which | al kiu | der | dere | A2, Dative, Thing |
| cuya | whose | kies | deren | vo dere / dere + possessive (e.g. dere sini) | A2, Genitive, Thing |
| que / lo que / lo cual | which / that | kiu | das | wo | A2, Nominative, Thing |
| que / lo que / lo cual | which / that | kiu | das | wo | A2, Accusative, Thing |
| a lo que / a lo cual | to which | al kiu | dem | dem | A2, Dative, Thing |
| cuyo | whose | kies | dessen | vo dem / dem + possessive (e.g. dem sini) | A2, Genitive, Thing |
| que / los que / los cuales | which / that | kiu | die | wo | A2, Nominative, Thing |
| que / los que / los cuales | which / that | kiu | die | wo | A2, Accusative, Thing |
| a los que / a los cuales | to which | al kiu | denen | dene | A2, Dative, Thing |
| cuyos | whose | kies | deren | vo dem / dem + possessive (e.g. dem sini) | A2, Genitive, Thing |
| que / las que / las cuales | which / that | kiu | die | wo | A2, Nominative, Thing |
| que / las que / las cuales | which / that | kiu | die | wo | A2, Accusative, Thing |
| a las que / a las cuales | to which | al kiu | denen | dene | A2, Dative, Thing |
| cuyas | whose | kies | deren | vo dene / dene + possessive (e.g. dene sini) | A2, Genitive, Thing |
| que / los que / los cuales | which / that | kiu | die | wo | A2, Nominative, Thing |
| que / los que / los cuales | which / that | kiu | die | wo | A2, Accusative, Thing |
| a los que / a los cuales | to which | al kiu | denen | dene | A2, Dative, Thing |
| cuyos | whose | kies | deren | vo dene / dene + possessive (e.g. dene sini) | A2, Genitive, Thing |

### Demonstratives
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| este ... | this ... | ĉi tiu ... | dieser ... | de ... | A2, Nominative, Male |
| este ... | this ... | ĉi tiu ... | diesen ... | de ... | A2, Accusative, Male |
| a este ... | to this ... | al ĉi tiu ... | diesem ... | dem ... | A2, Dative, Male |
| de este ... | of this ... | de ĉi tiu ... | dieses ... | vo dem ... | A2, Genitive, Male |
| esta ... | this ... | ĉi tiu ... | diese ... | die ... | A2, Nominative, Female |
| esta ... | this ... | ĉi tiu ... | diese ... | die ... | A2, Accusative, Female |
| a esta ... | to this ... | al ĉi tiu ... | dieser ... | vo dere ... | A2, Dative, Female |
| de esta ... | of this ... | de ĉi tiu ... | dieser ... | vo dere ... | A2, Genitive, Female |
| esto ... | this ... | ĉi tiu ... | dieses ... | das ... | A2, Nominative, Neutral |
| esto ... | this ... | ĉi tiu ... | dieses ... | das ... | A2, Accusative, Neutral |
| a esto ... | to this ... | al ĉi tiu ... | diesem ... | dem ... | A2, Dative, Neutral |
| de esto ... | of this ... | de ĉi tiu ... | dieses ... | vo dem ... | A2, Genitive, Neutral |
| estos ... | these ... | ĉi tiuj ... | diese ... | die ... | A2, Nominative, Male/Neutral Plural |
| estos ... | these ... | ĉi tiuj ... | diese ... | die ... | A2, Accusative, Male/Neutral Plural |
| a estos ... | to these ... | al ĉi tiuj ... | diesen ... | dene ... | A2, Dative, Male/Neutral Plural |
| de estos ... | of these ... | de ĉi tiuj ... | dieser ... | vo dene ... | A2, Genitive, Male/Neutral Plural |
| estas ... | these ... | ĉi tiuj ... | diese ... | die ... | A2, Nominative, Female Plural |
| estas ... | these ... | ĉi tiuj ... | diese ... | die ... | A2, Accusative, Female Plural |
| a estas ... | to these ... | al ĉi tiuj ... | diesen ... | dene ... | A2, Dative, Female Plural |
| de estas ... | of these ... | de ĉi tiuj ... | dieser ... | vo dene ... | A2, Genitive, Female Plural |
| ese ... | that ... | tiu ... | dieser ... | de ... | A2, Nominative, Male |
| ese ... | that ... | tiu ... | diesen ... | de ... | A2, Accusative, Male |
| a ese ... | to that ... | al tiu ... | diesem ... | dem ... | A2, Dative, Male |
| de ese ... | of that ... | de tiu ... | dieses ... | vo dem ... | A2, Genitive, Male |
| esa ... | that ... | tiu ... | diese ... | die ... | A2, Nominative, Female |
| esa ... | that ... | tiu ... | diese ... | die ... | A2, Accusative, Female |
| a esa ... | to that ... | al tiu ... | dieser ... | vo dere ... | A2, Dative, Female |
| de esa ... | of that ... | de tiu ... | dieser ... | vo dere ... | A2, Genitive, Female |
| eso ... | that ... | tiu ... | dieses ... | das ... | A2, Nominative, Neutral |
| eso ... | that ... | tiu ... | dieses ... | das ... | A2, Accusative, Neutral |
| a eso ... | to that ... | al tiu ... | diesem ... | dem ... | A2, Dative, Neutral |
| de eso ... | of that ... | de tiu ... | dieses ... | vo dem ... | A2, Genitive, Neutral |
| esos ... | those ... | tiuj ... | diese ... | die ... | A2, Nominative, Male/Neutral Plural |
| esos ... | those ... | tiuj ... | diese ... | die ... | A2, Accusative, Male/Neutral Plural |
| a esos ... | to those ... | al tiuj ... | diesen ... | dene ... | A2, Dative, Male/Neutral Plural |
| de esos ... | of those ... | de tiuj ... | dieser ... | vo dene ... | A2, Genitive, Male/Neutral Plural |
| esas ... | those ... | tiuj ... | diese ... | die ... | A2, Nominative, Female Plural |
| esas ... | those ... | tiuj ... | diese ... | die ... | A2, Accusative, Female Plural |
| a esas ... | to those ... | al tiuj ... | diesen ... | dene ... | A2, Dative, Female Plural |
| de esas... | of those ... | de tiuj ... | dieser ... | vo dene ... | A2, Genitive, Female Plural |
| aquel ... | that ... | tiu ... | dieser ... | de ... | A2, Nominative, Male |
| aquel ... | that ... | tiu ... | diesen ... | de ... | A2, Accusative, Male |
| a aquel ... | to that ... | al tiu ... | diesem ... | dem ... | A2, Dative, Male |
| de aquel ... | of that ... | de tiu ... | dieses ... | vo dem ... | A2, Genitive, Male |
| aquella ... | that ... | tiu ... | diese ... | die ... | A2, Nominative, Female |
| aquella ... | that ... | tiu ... | diese ... | die ... | A2, Accusative, Female |
| a aquella ... | to that ... | al tiu ... | dieser ... | vo dere ... | A2, Dative, Female |
| de aquella ... | of that ... | de tiu ... | dieser ... | vo dere ... | A2, Genitive, Female |
| aquello ... | that ... | tiu ... | dieses ... | das ... | A2, Nominative, Neutral |
| aquello ... | that ... | tiu ... | dieses ... | das ... | A2, Accusative, Neutral |
| a aquello ... | to that ... | al tiu ... | diesem ... | dem ... | A2, Dative, Neutral |
| de aquello ... | of that ... | de tiu ... | dieses ... | vo dem ... | A2, Genitive, Neutral |
| aquellos ... | those ... | tiuj ... | diese ... | die ... | A2, Nominative, Male/Neutral Plural |
| aquellos ... | those ... | tiuj ... | diese ... | die ... | A2, Accusative, Male/Neutral Plural |
| a aquellos ... | to those ... | al tiuj ... | diesen ... | dene ... | A2, Dative, Male/Neutral Plural |
| de aquellos ... | of those ... | de tiuj ... | dieser ... | vo dene ... | A2, Genitive, Male/Neutral Plural |
| aquellas ... | those ... | tiuj ... | diese ... | die ... | A2, Nominative, Female Plural |
| aquellas ... | those ... | tiuj ... | diese ... | die ... | A2, Accusative, Female Plural |
| a aquellas ... | to those ... | al tiuj ... | diesen ... | dene ... | A2, Dative, Female Plural |
| de aquellas ... | of those ... | de tiuj ... | dieser ... | vo dene ... | A2, Genitive, Female Plural |
| este | this | ĉi tiu | dieser | de | A2, Nominative, Male |
| este | this | ĉi tiu | diesen | de | A2, Accusative, Male |
| a este | to this | al ĉi tiu | diesem | dem | A2, Dative, Male |
| de este | of this | de ĉi tiu | dieses | vo dem | A2, Genitive, Male |
| esta | this | ĉi tiu | diese | die | A2, Nominative, Female |
| esta | this | ĉi tiu | diese | die | A2, Accusative, Female |
| a esta | to this | al ĉi tiu | dieser | dere | A2, Dative, Female |
| de esta | of this | de ĉi tiu | dieser | vo dere | A2, Genitive, Female |
| esto | this | ĉi tiu | dieses | das | A2, Nominative, Neutral |
| esto | this | ĉi tiu | dieses | das | A2, Accusative, Neutral |
| a esto | to this | al ĉi tiu | diesem | dem | A2, Dative, Neutral |
| de esto | of this | de ĉi tiu | dieses | vo dem | A2, Genitive, Neutral |
| estos | these | ĉi tiuj | diese | die | A2, Nominative, Male/Neutral Plural |
| estos | these | ĉi tiuj | diese | die | A2, Accusative, Male/Neutral Plural |
| a estos | to these | al ĉi tiuj | diesen | dene | A2, Dative, Male/Neutral Plural |
| de estos | of these | de ĉi tiuj | dieser | vo dene | A2, Genitive, Male/Neutral Plural |
| estas | these | ĉi tiuj | diese | die | A2, Nominative, Female Plural |
| estas | these | ĉi tiuj | diese | die | A2, Accusative, Female Plural |
| a estas | to these | al ĉi tiuj | diesen | dene | A2, Dative, Female Plural |
| de estas | of these | de ĉi tiuj | dieser | vo dene | A2, Genitive, Female Plural |
| ese | that | tiu | dieser | de | A2, Nominative, Male |
| ese | that | tiu | diesen | de | A2, Accusative, Male |
| a ese | to that | al tiu | diesem | dem | A2, Dative, Male |
| de ese | of that | de tiu | dieses | vo dem | A2, Genitive, Male |
| esa | that | tiu | diese | die | A2, Nominative, Female |
| esa | that | tiu | diese | die | A2, Accusative, Female |
| a esa | to that | al tiu | dieser | vo dere | A2, Dative, Female |
| de esa | of that | de tiu | dieser | vo dere | A2, Genitive, Female |
| eso | that | tiu | dieses | das | A2, Nominative, Neutral |
| eso | that | tiu | dieses | das | A2, Accusative, Neutral |
| a eso | to that | al tiu | diesem | dem | A2, Dative, Neutral |
| de eso | of that | de tiu | dieses | vo dem | A2, Genitive, Neutral |
| esos | those | tiuj | diese | die | A2, Nominative, Male/Neutral Plural |
| esos | those | tiuj | diese | die | A2, Accusative, Male/Neutral Plural |
| a esos | to those | al tiuj | diesen | dene | A2, Dative, Male/Neutral Plural |
| de esos | of those | de tiuj | dieser | vo dene | A2, Genitive, Male/Neutral Plural |
| esas | those | tiuj | diese | die | A2, Nominative, Female Plural |
| esas | those | tiuj | diese | die | A2, Accusative, Female Plural |
| a esas | to those | al tiuj | diesen | dene | A2, Dative, Female Plural |
| de esas... | of those | de tiuj | dieser | vo dene | A2, Genitive, Female Plural |
| aquel | that | tiu | dieser | de | A2, Nominative, Male |
| aquel | that | tiu | diesen | de | A2, Accusative, Male |
| a aquel | to that | al tiu | diesem | dem | A2, Dative, Male |
| de aquel | of that | de tiu | dieses | vo dem | A2, Genitive, Male |
| aquella | that | tiu | diese | die | A2, Nominative, Female |
| aquella | that | tiu | diese | die | A2, Accusative, Female |
| a aquella | to that | al tiu | dieser | vo dere | A2, Dative, Female |
| de aquella | of that | de tiu | dieser | vo dere | A2, Genitive, Female |
| aquello | that | tiu | dieses | das | A2, Nominative, Neutral |
| aquello | that | tiu | dieses | das | A2, Accusative, Neutral |
| a aquello | to that | al tiu | diesem | dem | A2, Dative, Neutral |
| de aquello | of that | de tiu | dieses | vo dem | A2, Genitive, Neutral |
| aquellos | those | tiuj | diese | die | A2, Nominative, Male/Neutral Plural |
| aquellos | those | tiuj | diese | die | A2, Accusative, Male/Neutral Plural |
| a aquellos | to those | al tiuj | diesen | dene | A2, Dative, Male/Neutral Plural |
| de aquellos | of those | de tiuj | dieser | vo dene | A2, Genitive, Male/Neutral Plural |
| aquellas | those | tiuj | diese | die | A2, Nominative, Female Plural |
| aquellas | those | tiuj | diese | die | A2, Accusative, Female Plural |
| a aquellas | to those | al tiuj | diesen | dene | A2, Dative, Female Plural |
| de aquellas | of those | de tiuj | dieser | vo dene | A2, Genitive, Female Plural |

### Adjectives
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| el hombre es rojo | the man is red | la viro estas ruĝa | der Mann ist rot | de Maa-n-isch root | A2, definite, Male |
| la mujer es roja | the woman is red | la virino estas ruĝa | die Frau ist rot | d Frau-n-isch root | A2, definite, Female |
| el bebé es rojo | the baby is red | la bebo estas ruĝa | das Baby ist rot | s Baby-n-isch root | A2, definite, Neutral |
| los niños son rojos | the kids are red | la infanoj estas ruĝa | die Kinder sind rot | d Chinde sind root | A2, definite, Male/Neutral Plural |
| las niñas son rojas | the kids are red | la infanoj estas ruĝa | die Kinder sind rot | d Chinde sind root | A2, definite, Female Plural |
| el hombre rojo | the red man | la ruĝa viro | der rote Mann | de rooti Maa | A2, Nominative, definite, Male |
| la mujer roja | the red woman | la ruĝa virino | die rote Frau | di rooti Frau | A2, Nominative, definite, Female |
| el bebé rojo | the red baby | la ruĝa bebo | das rote Baby | e roote Baby | A2, Nominative, definite, Neutral |
| los niños rojos | the red kids | la ruĝa infanoj | die roten Kinder | di roote Chinde | A2, Nominative, definite, Male/Neutral Plural |
| las niñas rojas | the red kids | la ruĝa infanoj | die roten Kinder | di roote Chinde | A2, Nominative, definite, Female Plural |
| el hombre rojo | the red man | la ruĝa viro | den roten Mann | de rooti Maa | A2, Accusative, definite, Male |
| la mujer roja | the red woman | la ruĝa virino | die rote Frau | di rooti Frau | A2, Accusative, definite, Female |
| el bebé rojo | the red baby | la ruĝa bebo | das rote Baby | e roote Baby | A2, Accusative, definite, Neutral |
| los niños rojos | the red kids | la ruĝa infanoj | die roten Kinder | di roote Chinde | A2, Accusative, definite, Male/Neutral Plural |
| las niñas rojas | the red kids | la ruĝa infanoj | die roten Kinder | di roote Chinde | A2, Accusative, definite, Female Plural |
| al hombre rojo | to the red man | al la ruĝa viro | dem roten Mann | em roote Maa | A2, Dative, definite, Male |
| a la mujer roja | to the red woman | al la ruĝa virino | der roten Frau | de roote Frau | A2, Dative, definite, Female |
| al bebé rojo | to the red baby | al la ruĝa bebo | dem roten Baby | em roote Baby | A2, Dative, definite, Neutral |
| a los niños rojos | to the red kids | al la ruĝa infanoj | den roten Kindern (+n!) | de roote Chinde | A2, Dative, definite, Male/Neutral Plural |
| a las niñas rojas | to the red kids | al la ruĝa infanoj | den roten Kindern (+n!) | de roote Chinde | A2, Dative, definite, Female Plural |
| del hombre rojo | of the red man | de la ruĝa viro | des roten Mannes | vom roote Maa | A2, Genitive, definite, Male |
| de la mujer roja | of the red woman | de la ruĝa virino | der roten Frau | vo de roote Frau | A2, Genitive, definite, Female |
| del bebé rojo | of the red baby | de la ruĝa bebo | des roten Babys | vom roote Baby | A2, Genitive, definite, Neutral |
| de los niños rojos | of the red kids | de la ruĝa infanoj | der roten Kinder | vo de roote Chinde | A2, Genitive, definite, Male/Neutral Plural |
| de las niñas rojas | of the red kids | de la ruĝa infanoj | der roten Kinder | vo de roote Chinde | A2, Genitive, definite, Female Plural |
| un hombre es rojo | a man is red | viro estas ruĝa | ein Mann ist rot | en Maa-n-isch root | A2, indefinite, Male |
| una mujer es roja | a woman is red | virino estas ruĝa | eine Frau ist rot | e Frau-n-isch root | A2, indefinite, Female |
| un bebé es rojo | a baby is red | bebo estas ruĝa | eine Baby ist rot | es Baby-n-isch root | A2, indefinite, Neutral |
| unos niños son rojos | some kids are red | infanoj estas ruĝa | einige Kinder sind rot | äinigi Chinde sind root | A2, indefinite, Male/Neutral Plural |
| unas niñas son rojas | some kids are red | infanoj estas ruĝa | einige Kinder sind rot | äinigi Chinde sind root | A2, indefinite, Female Plural |
| un hombre rojo | a red man | ruĝa viro | ein roter Mann | en roote Maa | A2, Nominative, indefinite, Male |
| una mujer roja | a red woman | ruĝa virino | eine rote Frau | e rooti Frau | A2, Nominative, indefinite, Female |
| un bebé rojo | a red baby | ruĝa bebo | ein rotes Baby | es roots Baby | A2, Nominative, indefinite, Neutral |
| unos niños rojos | some red kids | ruĝa infanoj | einige rote Kinder | äinigi rooti Chinde | A2, Nominative, indefinite, Male/Neutral Plural |
| unas niñas rojas | some red kids | ruĝa infanoj | einige rote Kinder | äinigi rooti Chinde | A2, Nominative, indefinite, Female Plural |
| un hombre rojo | a red man | ruĝa viro | einen roten Mann | en roote Maa | A2, Accusative, indefinite, Male |
| una mujer roja | a red woman | ruĝa virino | eine rote Frau | e rooti Frau | A2, Accusative, indefinite, Female |
| un bebé rojo | a red baby | ruĝa bebo | ein rotes Baby | es roots Baby | A2, Accusative, indefinite, Neutral |
| unos niños rojos | some red kids | ruĝa infanoj | einige rote Kinder | äinigi rooti Chinde | A2, Accusative, indefinite, Male/Neutral Plural |
| unas niñas rojas | some red kids | ruĝa infanoj | einige rote Kinder | äinigi rooti Chinde | A2, Accusative, indefinite, Female Plural |
| a un hombre rojo | to a red man | al ruĝa viro | einem roten Mann | emene roote Maa | A2, Dative, indefinite, Male |
| a una mujer roja | to a red woman | al ruĝa virino | einer roten Frau | enere roote Frau | A2, Dative, indefinite, Female |
| a un bebé rojo | to a red baby | al ruĝa bebo | einem roten Baby | emene roote Baby | A2, Dative, indefinite, Neutral |
| a unos niños rojos | to some red kids | al ruĝa infanoj | einige roten Kindern (+n!) | äinige roote Chinde | A2, Dative, indefinite, Male/Neutral Plural |
| a unas niñas rojas | to some red kids | al ruĝa infanoj | einige roten Kindern (+n!) | äinige roote Chinde | A2, Dative, indefinite, Female Plural |
| de un hombre rojo | of a red man | de ruĝa viro | eines roten Mannes | vomene roote Maa | A2, Genitive, indefinite, Male |
| de una mujer roja | of a red woman | de ruĝa virino | einer roten Frau | vonere roote Frau | A2, Genitive, indefinite, Female |
| de un bebé rojo | of a red baby | de ruĝa bebo | eines roten Babys | vomene roote Baby | A2, Genitive, indefinite, Neutral |
| de unos niños rojos | of some red kids | de ruĝa infanoj | einige roten Kinder | vo äinige roote Chinde | A2, Genitive, indefinite, Male/Neutral Plural |
| de unas niñas rojas | of some red kids | de ruĝa infanoj | einige roten Kinder | vo äinige roote Chinde | A2, Genitive, indefinite, Female Plural |
| los niños son rojos | children are red | infanoj estas ruĝa | Kinder sind rot | Chinde sind root | A2, general, Male/Neutral Plural |
| las niñas son rojas | children are red | infanoj estas ruĝa | Kinder sind rot | Chinde sind root | A2, general, Female Plural |
| hombre rojo | red man | ruĝa viro | roter Mann | roote Maa | A2, Nominative, general, Male |
| mujer roja | red woman | ruĝa virino | rote Frau | rooti Frau | A2, Nominative, general, Female |
| bebé rojo | red baby | ruĝa bebo | rotes Baby | roots Baby | A2, Nominative, general, Neutral |
| niños rojos | red kids | ruĝa infanoj | rote Kinder | rooti Chinde | A2, Nominative, general, Male/Neutral Plural |
| niñas rojas | red kids | ruĝa infanoj | rote Kinder | rooti Chinde | A2, Nominative, general, Female Plural |
| hombre rojo | red man | ruĝa viro | roten Mann | roote Maa | A2, Accusative, general, Male |
| mujer roja | red woman | ruĝa virino | rote Frau | rooti Frau | A2, Accusative, general, Female |
| bebé rojo | red baby | ruĝa bebo | rotes Baby | roots Baby | A2, Accusative, general, Neutral |
| niños rojos | red kids | ruĝa infanoj | rote Kinder | rooti Chinde | A2, Accusative, general, Male/Neutral Plural |
| niñas rojas | red kids | ruĝa infanoj | rote Kinder | rooti Chinde | A2, Accusative, general, Female Plural |
|  |  | al ruĝa viro | rotem Mann | roote Maa | A2, Dative, general, Male |
|  |  | al ruĝa virino | roter Frau | roote Frau | A2, Dative, general, Female |
|  |  | al ruĝa bebo | rotem Baby | roote Baby | A2, Dative, general, Neutral |
|  |  | al ruĝa infanoj | roten Kindern (+n!) | roote Chinde | A2, Dative, general, Male/Neutral Plural |
|  |  | al ruĝa infanoj | roten Kindern (+n!) | roote Chinde | A2, Dative, general, Female Plural |
| de hombre rojo | of red man | de ruĝa viro | roten Mannes | vo roote Maa | A2, Genitive, general, Male |
| de mujer roja | of red woman | de ruĝa virino | roter Frau | vo roote Frau | A2, Genitive, general, Female |
| de bebé rojo | of red baby | de ruĝa bebo | roten Babys | vo roote Baby | A2, Genitive, general, Neutral |
| de niños rojos | of red kids | de ruĝa infanoj | roter Kinder | vo roote Chinde | A2, Genitive, general, Male/Neutral Plural |
| de niñas rojas | of red kids | de ruĝa infanoj | roter Kinder | vo roote Chinde | A2, Genitive, general, Female Plural |

<a name="5_grammar">

## Section 5: Grammar

### Definite and indefinite articles
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| una manzana | an apple | pomo | ein Apfel | en Öpfel | A1 |
| unas manzanas | some apples | pomoj | einige Äpfel | äinigi Öpfel | A1 |
| manzanas | apples | pomoj | Äpfel | Öpfel | A1 |
| la manzana | the apple | la pomo | der Apfel | de Öpfel | A1 |
| las manzanas | the apples | la pomoj | die Äpfel | d Öpfel | A1 |
| yo tengo una manzana | I have an apple | mi havas pomon | ich habe ein Apfel | ich ha-n-en Öpfel | A1 |
| tengo unas manzanas | I have some apples | mi havas pomojn | ich habe einige Äpfel | ich ha-n-äinigi Öpfel | A1 |
| tengo manzanas | I have apples | mi havas pomojn | ich habe Äpfel | ich ha-n-Öpfel | A1 |
| yo tengo la manzana | I have the apple | mi havas la pomon | ich habe den Apfel | ich han de Öpfel | A1 |
| yo tengo las manzanas | I have the apples | mi havas la pomojn | ich habe die Äpfel | ich han d Öpfel | A1 |
| le doy una manzana a un hombre | I give an apple to a man | mi donas pomon al homo | Ich gebe einem Mann einen Apfel | ich gib emene Maa eine Öpfel | A1 |
| le doy una manzana a unos hombres | I give an apple to some men | mi donas pomon al homoj | Ich gebe einigen Männern einen Apfel | ich gib äinige Maa eine Öpfel | A1 |
| le doy una manzana al hombre | I give an apple to man | mi donas pomon al la homo | Ich gebe dem Mann einen Apfel | ich gib em Maa eine Öpfel | A1 |
| le doy una manzana a los hombres | I give an apple to men | mi donas pomon al la homoj | Ich gebe den Männern einen Apfel | ich gib Maa eine Öpfel | A1 |

### Proper nouns
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| Juan | John | Uliso | Peter | de Peter | A1 |
| el Señor Perez | Mr. Smith | Sinjoro Perez | Herr Müller | de Herr Müller | A1 |

### Plurals
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| gato | cat | kato | Katze | Chatz | A1 |
| gatos | cats | katoj | Katzen | Chatze | A1 |

### Negative sentences
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| no quiero hacer eso | I do not want to do that / I don't want to do that | mi ne volas fari tion | ich will das nicht tun | ich will das nöd mache | A1 |
| (él) no llega tarde | he does not arrive late / he doesn't arrive late | li ne alvenas malfrue | er kommt nicht zu spät an | er chunt nöd z spaat aa | A1 |

### Questions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| (él) lo puede decir | he can say it | li povas diri ĝin | er kann es sagen | er cha s säge | A1 |
| (él) lo quiere decir | he want to say it |   | er will es sagen | er will s säge | A1 |
| ¿lo puede decir (él)? | can he say it? | ĉu li povas diri ĝin? | kann er es sagen? | cha-n-er s säge? | A1 |
| ¿lo quiere decir (él)? | does he want to say it? | ĉu li volas diri ĝin? | will er es sagen? | will er s säge? | A1 |

### Passive
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| (él) escribió la carta | he wrote the letter | li skribis la leteron | er schrieb den Brief | er hät de Brief gschribe | A1 |
| la carta fue escrita por él | the letter was written by him | la letero estis skribita de li | der Brief wurde von ihm geschrieben | de Brief isch vo im gschribe | A1 |
| él ha escrito la carta | he has written the letter | li skribis la leteron | er hat den Brief geschrieben | er hät de Brief gschribe | A1 |
| la carta ha sido escrita por él | the leter has been written by him | la letero estis skribita de li | der Brief wurde von ihm geschrieben | de Brief isch vo im gschribe | A1 |

### Subordinate sentences
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| estoy seguro de que llueve | I am sure that it is raining / I am sure it is raining | mi certas, ke pluvas | ich bin mir sicher, dass es regnet / ich bin sicher, es regnet | ich bi mir sicher, dass s rägnet | A1 |
| es demasiado tarde si llueve | it is too late if it is raining | tro malfruas, se pluvas | es ist zu spät, wenn es regnet | s'isch zu spaat, wänn s rägnet | A1 |
| si llueve es demasiado tarde | if it is raining it is too late | se pluvas, tro malfruas | wenn es regnet, ist es zu spät | wänn s rägnet, isch s zu spaat | A1 |

### Coordinate sentences
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| al cantar | when singing / while singing | kantinte | beim Singen | bim Singe | A1 |
| algo confuso | something confusing | io konfuza | etwas Verwirrendes | öppis Verwirrends | A1 |
| algo sano | something healthy | io sana | etwas Gesundes | öppis Gsundes | A1 |
| (él) viene y se va | he arrives and leaves | li alvenas kaj foriras | er kommt und verlässt | er chunt und verlaat | A1 |
| (él) viene pero es tarde | he arrives but it is late | li alvenas, sed malfruas | er kommt, aber es ist spät | er chunt, aber s'isch spaat | A1 |
| (él) viene pero es demasiado tarde | he arrives but it is too late | li alvenas, sed tro malfruas | er kommt, aber es ist zu spät | er chunt, aber s'isch zu spaat | A1 |

### Relative sentences
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| el hombre que es grande | the man that is big | la viro, kiu estas granda | der Mann, der groß ist | de Maa, wo groß isch | A1 |
| el hombre al que hablo | the man to which I talk | la viro, al kiu mi parolas | der Mann, mit dem ich rede | de Maa, mit dem ich rede | A1 |
| el hombre cuyo sombrero es rojo | the man whose hat is red | la viro, kies ĉapelo estas ruĝa | der Mann, dessen Hut rot ist | de Maa, vo dem Hut rot isch / de Maa, dem sin Hut rot isch | A1 |

### Imperative
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| haz eso | do that | faru tion | tue das | mach das | A1, Informal |
| haga eso | do that | faru tion | tuen Sie das | mached Sie das | A1, Formal |
| hagamos eso | let's do that | ni faru tion | tuen wir das | mached mir das | A1 |
| haced eso | do that | faru tion | tut das | mached das | A1, Informal |
| hagan eso | do that | faru tion | tut das | mached das | A1, Formal |
| no hagas eso | don't do that | ne faru tion | tue das nicht | mached das nöd | A1, Informal, negative |
| no haga eso | don't do that | ne faru tion | tuen Sie das nicht | mached Sie das nöd | A1, Formal, negative |

### Requests
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿puedes hacer eso? | can you do that? | ĉu vi povas fari tion? | kannst du das tun? | chasch du das mache? | A1, Informal |
| ¿puede hacer eso? / ¿puede usted hacer eso? | can you do that? | ĉu vi povas fari tion? | können Sie das tun? | chönd Si das mache? | A1, Formal |
| ¿podrías hacer eso? | could you do that? | ĉu vi povus fari tion? | konntest du das tun? | chöntisch du das mache? | A1, Informal |
| ¿podría hacer eso? / ¿podría usted hacer eso? | could you do that? | ĉu vi povus fari tion? | könnten Sie das tun? | chönted Si das mache? | A1, Formal |
| ¿harías eso? | would you do that? | ĉu vi povus fari tion? | würdest du das tun? | wüür(d)sch du das mache? | A1 |
| ¿haría eso? / ¿haría usted eso? | would you do that? | ĉu vi povus fari tion? | würden Sie das tun? | wüür(d)ed Si das mache? | A1, Formal |
| ¿puedes parar de hacer eso? | can you stop doing that? | ĉu vi povas ĉesi fari tion? | kannst du aufhören, das zu tun? / kannst du damit aufhören? | chasch du uufhööre, das zu mache? | A1, Informal |
| ¿puede parar de hacer eso? / ¿puede usted parar de hacer eso? | can you stop doing that? | ĉu vi povas ĉesi fari tion? | können Sie aufhören, das zu tun? / können Sie damit aufhören? | chönd Si uufhööre, das zu mache? | A1, Formal |
| ¿podrías parar de hacer eso? | could you stop doing that? | ĉu vi povus ĉesi fari tion? | konntest du aufhören, das zu tun? / konntest du damit aufhören? | chöntisch du uufhööre, das zu mache? | A1, Informal |
| ¿podría parar de hacer eso? / ¿podría usted parar de hacer eso? | could you stop doing that? | ĉu vi povus ĉesi fari tion? | könnten Sie aufhören, das zu tun? / könnten Sie damit aufhören? | chönted Si uufhööre, das zu mache? | A1, Formal |

### Comparative
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| más ... que ... | more ... than ... / +er than ... | pli ... ol ... | +er (+deklination wie Artikel) / mehr ... als ... | +er (+deklination wie Artikel) / meh ... als ... | A1 |
| menos ... que ... | less ... than ... | malpli ... ol ... | weniger ... als ... | weniger ... als ... | A1 |
| el más ... (o género la/lo) | +est / the most ... | la plej ... | (artikle) ...+(e)st (+deklination wie Adjektiv) / am ...+(e)sten | (artikle) ...+(i)st (+deklination wie Adjektiv) / am ...+(i)ste | A1 |
| el menos ... (o género la/lo) | the least ... | la malplej ... | (artikle) wenigste ... (+deklination wie Adjektiv) / am wenigsten ... | (artikle) wenigste ... (+deklination wie Adjektiv) / am wenigste ... | A1 |
| bueno (o género o->a) | good | bona | gut | guet | A1, good |
| mejor que ... | better than ... | pli bona ol ... | besser als ... | besser als ... | A1, good |
| el mejor (o género la/lo) | the best | la plej bona | das beste | s beste | A1, good |
| malo (o género o->a) | bad | malbona | schlecht / schlimm | schlächt / schlimm | A1, bad |
| peor que ... | worse than ... | pli malbona ol ... / malpli bona ol ... | schlechter als ... / schlimmer als ... | schlächter als ... / schlimmer als ... | A1, bad |
| el peor (o género la/lo) | the worst | la plej malbona / la malplej bona | das schlechtste / das schlimmste | das schlächtiste / das schlimmste | A1, bad |
| interesante | interesting | interesa | interessant | interessant | A1, interesting |
| más interesante que ... | more interesting than ... | pli interesa ol ... | interessanter als | interessanter als | A1, interesting |
| el más interesante (o género la/lo) | the most interesting | la plej interesa | das interessanteste | das interessantiste | A1, interesting |
| igual de bueno que ... | just as good as ... | ĝuste tiel bona kiel ... | genauso gut wie ... | genauso guet wie ... | A1, as ... as |
| tan bueno como ... | as good as ... | tiel bona kiel ... | so gut wie ... | so guet wie ... | A1, as ... as |
| soy como ... | I am like ... | mi estas kiel ... | ich bin wie ... | ich bi wie ... | A1, as ... as |
| soy bueno como ... | I am good like ... | mi estas bona kiel ... | ich bin gut wie ... | ich bi guet wie ... | A1, as ... as |

### Location
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| está encima de la mesa / está sobre la mesa | it is on the table | ĝi estas sur la tablo | es ist auf dem Tisch | s'isch uuf em Tisch | A1 |
| está bajo la mesa / está debajo de la mesa | it's under the table | ĝi estas sub la tablo | es ist unter dem Tisch | s'isch under em Tisch | A1 |
| está al lado de la mesa | it's next to the table | ĝi estas proksima al la tablo | es ist neben dem Tisch | s'isch näbe em Tisch | A1 |
| está tras la mesa / está detrás de la mesa | it's behind the table | ĝi estas malantaŭ la tablo | es ist hinter dem Tisch | s'isch hinder em Tisch | A1 |
| está frente a la mesa / está enfrente de la mesa | it's in front of the table | ĝi estas antaŭ la tablo | es ist vor dem Tisch | s'isch vor em Tisch | A1 |
| está sobre la mesa | it's above the table | ĝi estas super la tablo | es ist über dem Tisch | s'isch über em Tisch | A1 |
| está dentro de la mesa | it's in the table | ĝi estas en la tablo | es ist in dem Tisch | s'isch im Tisch | A1 |

### Movement
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| salta sobre la mesa | it jumps on the table | ĝi saltas sur la tablo | es springt auf den Tisch | s gumpet uuf de Tisch | A2 |
| sube las escaleras | it goes up the stairs | ĝi supreniras la ŝtuparon | es geht die Treppe hinauf | s gaat d Stäge duruuf / s gaat d Stäge ufe | A2 |
| baja de la mesa | it goes down the table | ĝi malsupreniras de la tablo | es geht den Tisch hinunter | s gaat ab de Tisch | A2 |
| baja las escaleras | it goes down the stairs | ĝi malsupreniras la ŝtuparon | es geht die Treppe hinunter | s gaat d Stäge durab / s gaat d Stäge abe | A2 |
| se mete debajo de la mesa / se pone debajo de la mesa | it goes under the table | ĝi iras sub la tablo | es geht unter den Tisch | s gaat under de Tisch | A2 |
| se pone detrás de la mesa | it goes behind the table | ĝi iras malantaŭ la tablo | es geht hinter den Tisch | s gaat hinder de Tisch | A2 |
| se pone delante de la mesa | it goes in front of the table | ĝi iras antaŭ la tablo | es geht vor dem Tisch | s gaat vor de Tisch | A2 |
| se pone al lado de la mesa / se pone cerca de la mesa | it goes next to the table / it goes close to the table | ĝi iras apud la tablo / ĝi proksimiĝas al la tablo | es geht neben den Tisch | s gaat näbe de Tisch | A2 |
| se mueve por la mesa | it's moving on the table | ĝi moviĝas sur la tablo | es bewegt sich auf dem Tisch | s bewegt über de Tisch | A2 |
| se va fuera al jardín | it goes out to the garden | ĝi eliras al la ĝardeno | es geht in den Garten | s gaat in Gaarte | A2 |

### Date
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| mil novecientos | one thousand nine hundred | mil-naŭcenta | neunzehnhundert | nüünzähundert | A1, year, 1900 |
| mil novecientos cincuenta y cinco | one thousand nine hundred fifty five | mil-naŭcent-kvindek-kvina | neunzehnhundertfünfundfünfzig | nüünzahundert föifefüfzg / nüünza föifefüfzg | A1, year, 1955 |
| dos mil | two thousand | du-mila | zweitausend | zwäituusig | A1, year, 2000 |
| dos mil dieciseis | two thousand and sixteen | du-mil-dek-sesa | zweitausendsechzehn | zwäituusig sächzä | A1, year, 2016 |
| 1 de enero de 1900 / uno de enero de mil novecientos / uno de enero del mil novecientos | January 1st, 1900 / January the first, nineteen hundred | 1-a de Januaro de 1900 / unua de Januaro de mil naŭcent | 1. Januar 1900 / erste Januar tausendneunhundert | 1. Januar 1900 / erste Januaar nüünzähundert | A1, full date |
| 1 de enero de 1900 / uno de enero de mil novecientos / uno de enero del mil novecientos | January 1st, 1919 / January the first, nineteen nineteen | 1-a de Januaro de 1919 / unua de Januaro de mil naŭcent dek naŭ | 1. Januar 1919 / erste Januar tausendneunhundertneunzehn | 1. Januar 1919 / erste Januaar nüünzähundertnüünzä | A1, full date |

### Time
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| las doce en punto / las doce / las doce de la noche / medianoche | twelve o'clock / midnight | la dek-dua / la dek-dua horo / noktomezo | zwölf Uhr / Mitternacht | am zwölfi / um Mitternacht | A1, 00:00 |
| las una en punto / las una de la madrugada | one o'clock / one o'clock in the morning | la unua / la unua horo / la unua matene | ein Uhr / ein Uhr morgens | am äis / äis am Morge | A1, 01:00 |
| las seis en punto / las seis / las seis de la mañana | six o'clock / six o'clock in the morning | la sesa / la sesa horo / la sesa matene | sechs Uhr / sechs Uhr morgens | am sächsi / sächsi am Morge | A1, 06:00 |
| las nueve en punto / las nueve / las nueve de la mañana | nine o'clock / nine o'clock in the morning | la naŭa / la naŭa horo / la naŭa matene | neun Uhr / neun Uhr morgens | am nüüni / nüüni am Morge | A1, 09:00 |
| las nueve y cinco | five past nine / five minutes past nine | kvin post la naŭa / kvin minutoj post la naŭa horo / la naŭa kvin / la naŭa kaj kvin | fünf nach neun / fünf Minuten nach neun Uhr | föif ab nüüni | A1, 09:05 |
| las nueve y diez | ten past nine / ten minutes past nine | dek post la naŭa / dek minutoj post la naŭa horo / la naŭa dek / la naŭa kaj dek | zehn nach neun / zehn Minuten nach neun Uhr | zää ab nüüni | A1, 09:10 |
| las nueve y cuarto | a quarter past nine | kvarono post la naŭa / la naŭa dek kvin / la naŭa kaj dek kvin | Viertel nach neun | Viertel ab nüüni | A1, 09:15 |
| las nueve y veinte | twenty past nine / twenty minutes past nine | dudek post la naŭa / dudek minutoj post la naŭa horo / la naŭa dudek / la naŭa kaj dudek | zwanzig nach neun / zwanzig Minuten nach neun Uhr | zwänzg ab nüüni | A1, 09:20 |
| las nueve y veinticinco | twenty-five past nine / twenty-five minutes past nine | dudek kvin post la naŭa / dudek kvin minutoj post la naŭa / la naŭa dudek kvin / la naŭa kaj dudek kvin | fünf vor halb zehn / neun fünfundzwanzig | föif vor halbi zäni / nüüni föifezwänzg | A1, 09:25 |
| las nueve y treinta | half past nine | duono post la naŭa / la naŭa tridek / la naŭa kaj tridek | halb zehn | halbi zäni | A1, 09:30 |
| las diez menos veinticinco / las nueve treinta y cinco | twenty-five to ten / twenty-five minutes to ten / nine thirty-five | dudek kvin antaŭ la deka / la naŭa tridek kvin / la naŭa kaj tridek kvin | fünf nach halb zehn / neun fünfunddreißig | föif ab halbi zäni / nüünzi föifedriissg | A1, 09:35 |
| las diez menos veinte / las nueve cuarenta | twenty to ten / twenty minutes to ten / nine forty | dudek antaŭ la deka / la naŭa kvardek / la naŭa kaj kvardek | zwanzig vor zehn / zwanzig Minuten bis zehn Uhr / neun vierzig | zwänzg vor zäni / nüüni vierzg | A1, 09:40 |
| las diez menos cuarto / las nueve cuarenta y cinco | a quarter to ten / nine forty-five | kvarono antaŭ la deka / la naŭa kvardek kvin / la naŭa kaj kvardek kvin | Viertel vor zehn / neun fünfundvierzig | Viertel vor zäni / am nüünzi föifevierzg | A1, 09:45 |
| las diez menos diez / las nueve cincuenta | ten to ten / ten minutes to ten / nine fifty | dek antaŭ la deka / la naŭa kvindek / la naŭa kaj kvindek | zehn vor zehn / zehn Minuten bis zehn Uhr / neun fünfzig | zää vor zäni / nüüni füfzg | A1, 09:50 |
| las diez menos cinco / las nueve cincuenta y cinco | five to ten / five minutes to ten / nine fifty-five | kvin antaŭ la deka / la naŭa kvindek kvin / la naŭa kaj kvindek kvin | fünf vor zehn / fünf Minuten vor zehn Uhr / neun fünfundfünfzig | föif vor zäni / nüüni föifefüfzg | A1, 09:55 |
| las doce en punto / las doce / las doce del medio día / medio día | twelve o'clock / midday | la dek-dua / tagmezo | zwölf Uhr / Mittag | am zwölfi / am Mittag | A1, 12:00 |
| las dos en punto / las dos de la tarde | two o'clock / two o'clock in the afternoon | la dua / la dua horo / la dua posttagmeze | zwei Uhr / zwei Uhr nachmittags | zwäi am Namittag / um vierzä Uhr | A1, 14:00 |
| las seis en punto / las seis de la tarde | six o'clock / six o'clock in the afternoon | la sesa / la sesa horo / la sesa posttagmeze | sechs Uhr / sechs Uhr nachmittags | sächsi am Aabig / um achzä Uhr | A1, 18:00 |
| las once en punto / las once de la noche | eleven o'clock / eleven o'clock in the afternoon | la dek-unua / la dek-unua horo / la dek-unua posttagmeze | elf Uhr / elf Uhr nachmittags | elfi am Aabig / um drüüezwänzg Uhr | A1, 23:00 |
| las doce menos cinco | five to twelve / five minutes to twelve / eleven fifty-five | kvin antaŭ la dek-dua / la dek-unua kvindek kvin  / la dek-unua kaj kvindek kvin  | fünf vor zwölf / fünf Minuten vor zwölf Uhr / elf fünfundfünfzig | föif vor zwölfi | A1, 23:55 |

### Money
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cinco dólares con noventa y cinco / cinco dólares con noventa y cinco centavos | five dollars and ninety five / five dollars and ninety cents | kvin dolaroj kaj naŭdek kvin / kvin dolaroj kaj naŭdek kvin cendoj | fünf Dollar und fünfundneunzig Cent / fünf Dollar fünfundneunzig | föif Dollar und föifenüünzg Cent / föif Dollar föifenüünzg | A2, $5.95 |
| cinco euros con noventa y cinco / cinco dólares con noventa y cinco céntimos | five euros with ninety five / five euros with ninety five cents | kvin eŭroj kun naŭdek kvin / kvin eŭroj kun naŭdek kvin cendoj | fünf Euro und fünfundneunzig Cent / fünf Euro fünfundneunzig | föif Euro und föifenüünzg Cent / föif Euro föifenüünzg | A2, 5.95 € |
| cinco libras con noventa y cinco / cinco dólares con noventa y cinco peniques | five pounds with ninety five / five pounds with ninety five pennies | kvin britaj pundoj kun naŭdek kvin / kvin britaj pundoj kun naŭdek kvin pencoj | fünf Pfund und fünfundneunzig Penny / fünf Pfund fünfundneunzig | föif Pfund und föifenüünzg Penny / föif Fund föifenüünzg | A2, 5.95 £ |
| cinco francos suizos con noventa y cinco / cinco francos suizos con noventa y cinco céntimos | five swiss francs with ninety five / five swiss francs with ninety five cents | kvin svisaj frankoj kun naŭdek kvin / kvin svisaj frankoj kun naŭdek kvin centimoj | fünf Schweizer Franke und fünfundneunzig Cent / fünf Schweizer Franken fünfundneunzig / fünf Franke und fünfundneunzig Cent / fünf Franke fünfundneunzig | föif Schwiizer Franken und föifenüünzg Cent / föif Schwiizer Franken föifenüünzg | A2, 5.95 CHF |

### Reflexive verbs
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| (yo) me como una patata | (=I eat a potato) | (=mi mangâs terpomon) | (=ich esse eine Kartoffel) | (=ich ässe-n-e Härdöpfel) | A1 |
| (yo) me afeito la barba | (=I shave my beard) | (=mi razas mian barbon) | ich rasiere mir den Bart | ich rasiere mir de Bart | A1 |
| (yo) me hago grande | (=I become big) | mi fariĝis granda | (=ich werde groß) | (=ich wiirde grooss) | A1 |
| (él) se presenta | he introduces himself | li presentas sin | er stellt sich vor | er stellt sich vor | A1 |

### Genitive
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| el perro de John | John's dog | la hundo de John | der Hund von John | de Hund vo John | A2 |
| el perro del hombre | the man's dog | la hundo de la viro | der Hund von der Mann / der Hund des Mannes | de Hund vo de Maa | A2 |
| el perro de Luis | Luis' dog | la hundo de Luis | der Hund von Luis | de Hund vo Luis | A2 |
| ese es el sombrero de un amigo | that is a friends' hat / that is the hat of a friend | tio estas la ĉapelo de amiko | das ist der Hut eines Freundes | das isch de Huet vo-n-en Fründ / das isch em Fründ sin Huet | A2 |

### Intention
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| entro ahí para comprar algo | I go in there in order to buy something / I go in there to buy something | mi eniras tien, por aĉeti ion | ich gehe dorthin, um etwas zu kaufen | ich gaa deethi zum öppis chaufe | A2 |

### Hypothetical
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| y si ...? | what if ...? | kio, se ...? | was wäre wenn ...? | was wär wänn ...? | A2 |
| si yo fuera ..., entonces ... | if I were ..., then ... | si me estus ..., tiam ... | wenn ich ... wäre, dann ... | wänn ich ... wär, dänn ... | A2 |

### General statements (Zero-Article)
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| los gatos son grandes | cats are big | katoj estas grandaj | Katzen sind groß | Chatz sind grooss | A2, no concrete set of cats |

### Verb behavior
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| yo he comido patata | I have eaten potato | mi manĝis terpomon | ich habe Kartoffel gegessen | ich han Härdöpfel gässe | A2 |
| (yo) he podido comer patata | I could have eaten potato | mi povis manĝi terpomon | ich kontte Kartoffel essen | ich han Härdöpfel chöne ässe | A2 |
| él empieza a correr | he starts to run | li komencas kuri | er fangt an, zu rennen | er fang aa räne (ohni "z'" nur s Verb aafange) | B1 |
| pruebo a decir eso | I try to say that | mi provas diri tion | ich versuche das zu sagen | ich probier das z'säge | B1 |
| he practicado viendo videos | I have practiced by watching videos | Mi praktikis per rigardado de filmetoj | Ich habe geübt, indem ich Videos geschaut habe | Ich han güebt, indem ich videos aagluegt han | B1 |

### Composite amounts
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| un año y medio | one and a half years | unu kaj duona jaroj | anderthalb Jahre / eineinhalb Jahre / einundhalb Jahre | anderthalb Jaare / äinäinhalb Jaare / äinundhalb Jaare | B1 |

### Desire
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| (él) quiere que yo coma | he wants me to eat | li volas, ke mi manĝu | er will, dass ich esse | er wott, dass ich ässe | B1 |

### Indirect speech
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| (él) dice que yo estoy comiendo | he says that I am eating | li diras, ke mi manĝas | er sagt, (dass) ich esse | er säit, (dass) ich weerdi ässe | B1 |

### Amount
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| kilo de ... | kilo of ... | kilo da ... | Kilo ... / Kilo von ... | Kilo ... / Kilo vo ... | A1 |
| litro de ... | liter of ... | litro da ... | Liter ... / Liter von ... | Liter ... / Liter vo ... | A1 |
| tanto ... | that much ... / so much ... | tia ... | so viel ... | so vil | A1 |

### Internet
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| , | . | , | , | , | A1, decimal separator |
| . | , | . | . | . | A1, thousands separator |
| punto | dot | punkto | Punkt (M) | Punkt (M) | A1, domain separator in links (www.test.com) |
| arroba | at | ĉe | at | at | A1, @ in emails (aaa@bbb.com) |

<a name="6_conversation">

## Section 6: Conversation

### Common expressions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| me da igual / no me importa / no importa / da igual / da lo mismo / me da lo mismo / qué más da? / qué más me da? | I don't care | ne zorgas / mi ne zorgas | es ist mir egal | s'isch gliich / s'isch mir gliich | A1 |
| mira, ... / mirad, ... | behold, ... | jen ... | siehe, ... | lueg, ... | A1, Informal |
| no te preocupes | don't worry | ne maltrankviliĝu | mach dir keine Sorgen | mach dir käi Sorge | A1, Informal |
| no se preocupe | don't worry | ne maltrankviliĝu | machen Sie sich keine Sorgen | mached Si sich käi Sorge | A1, Formal |
| quiero decir ... | I mean ... | mi ĉelas diri / mi volas diri | ich meine ... | ich mäine ... | A1 |
| bla bla bla | yadda yadda / blah blah | bla bla | bla bla bla | bla bla bla | A1 |
| por un lado, ..., por el otro, ... | on the one hand ...., on the other hand ... | unuflanke ..., aliflanke ... | auf der einen Seite ..., auf der anderen Seite ... | uuf de eine Siite ..., uuf der andere Siite ... | A1 |
| con respecto a ... | with regards to ... | koncerne al ... | in Bezug auf ... | in Bezug uuf ... | A1 |
| ¿qué pasa? | what happens? | kio okazas? | was ist los? | was isch los? | A1 |
| ¿lo dices en serio? | seriously? / are you serious? | serioze? / ĉu vi seriozas? | ist das dein Ersnt? | isch das din Ernst? | A1 |
| ¿en serio? | really? | vere? | ja wirklich? | ja würklich? | A1 |
| ¿tienes ganas de ...? | do you feel like ...? | ĉu vi volas ...? | hast du Lust ... zu tun? | hasch du Lust ... zum mache? | A1 |
| ¿te estás quedando conmigo? | are you kidding me? |  | willst du mich veräppeln? | willsch du mich veräpple? | A1 |
| ¿estás de broma? / ¿estás bromeando? | are you kidding? | ĉu vi ŝercas? | machst du Witze? | willsch du mich veräpple? | A1 |
| y eso | and so on | kaj tiel plu | und so weiter | und so wiiter | A1 |
| ¡déjame en paz! | leave me alone! | lasu min sola! | lass mich allein! / lass mich in Ruhe! | lahn mich in Rueh! | A1 |
| tienes razón | you are right | vi pravas | du hast recht | du hasch rächt | A1 |
| estoy de acuerdo contigo | I agree with you | mi konsentas kun vi | ich stimme dir zu | ich stimme dir zue | A1 |
| ¡de acuerdo! | agreed! | konsentite! | einverstanden! | iiverstande! | A1 |
| ¿estás de acuerdo? | do you agree? | ĉu konsentite? | einverstanden? | iiverstande? | A1, Informal |
| no tengo ni idea / no lo sé | no idea / I don't know | mi ne scias | keine Ahnung / ich weiß nicht | käi Ahnig / ich weiss nöd | A1 |
| ¡venga ya! | come on! | ek! | komm schon! | chum scho! | A1 |
| ¡vamos! | let's go | eku! | lass uns gehen! / gehen wir! / na los! | los! / gömmer! | A1 |
| vamos a ver / veamos | let's see | ni vidu | mal sehen | mal luege | A1 |
| digamos | let's say | ni diru | mal sagen | mal säge | A1 |
| ya no puedo más | I can no more | mi ne plu povas tion | ich kann nicht mehr | ich mag nüm / ich chan nümmer | A1 |
| me ha surgido algo | something came up | io okazis | etwas ist dazwischen gekommen | öppis isch dezwüsche cho | A1 |
| ¡exactamente! / ¡exacto! | exactly! | ĝuste! | genau! | genau! | A1 |
| ¡salud! | bless you! | sanon! | Gesundheit! | Gsundhäit! | A1, when someone sneezes |
| ¡claro! | totally! | plene! | jawoll! | jawoll! | A1 |
| ¡qué lástima! / ¡qué pena! / ¡vaya lástima! / ¡vaya pena! | what a pity! | domaĝe! | Schade! | Schaad! | A1 |
| imagina ... / imagínate ... | imagine ... | imagu ... | stell dir vor, ... | stell dir vor, ... | A1 |

### Person introduction
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿cómo te llamas? | what's your name? | kiel vi nomiĝas? | wie heißt du? | wie häissisch du? | A1, Informal* |
| me llamo ... | my name is ... | mi nomiĝas ... | ich heiße ... | ich häisse ... | A1 |
| ¿cuál es tu nombre? | what's your name? | kiu estas via nomo? | was ist dein Name? / wie lautet dein Name? | wie isch din Name? | A1, Informal* |
| mi nombre es ... | my name is ... | mia nomo estas ... | mein Name ist ... / mein Name lautet ... | min Name-n-isch ... | A1 |
| encantado - encantada / encantado de conocerte - encantada de conocerte | nice to meet you / pleased to meet you | mi ĝojas renkonti vin | freut mich / freut mich, dich kennenzulernen | freut mich, chännezulerne / freut mich, dich chännezulerne | A1, Informal |
| encantado - encantada / encantado de conocerle | nice to meet you / pleased to meet you | mi ĝojas renkonti vin | freut mich / freut mich, Sie kennenzulernen | freut mich, chännezulerne / freut mich, Si chännezulerne | A1, Formal |
| yo también / el placer es mío | nice to meet you too / pleased to meet you too | mi ĝojas renkonti vin ankaŭ | mich auch / freut mich auch, dich kennenzulernen | mich au / freut mich au, dich chännezulerne | A1, Informal |
| yo también / el placer es mío | nice to meet you too / pleased to meet you too | mi ĝojas renkonti vin ankaŭ | mich auch / freut mich auch, Sie kennenzulernen | mich au / freut mich au, Si chännezulerne | A1, Formal |
| ¿cuál es tu nombre de pila? | what's your given name? / what's your first name name? | kiu estas via personnomo? / kiu estas via persona nomo? | was ist dein Vorname? / wie lautet dein Vorname? | wie isch din Vorname? | A1, Informal* |
| mi nombre de pila es ... | my given name is ... / what's your first name? | mia personnomo estas ... / mia persona nomo estas ... | mein Vorname ist ... / mein Vorname lautet ... | min Vorname isch ... | A1 |
| ¿cuales son tus apellidos? | what's your family name? / what's your last name? | kiu estas via familinomo? / kiuj estas via patronomo kaj patrinonomo? | was ist dein Nachname? / wie lautet dein Nachname? | wie isch din Nachgname? | A1, Informal* |
| mi apellidos son ... | what's your family name? / my last name is ... | mia familinomo estas ... / mia patronomo estas ... kaj mia patrinonomo estas ... | mein Nachname ist ... / mein Nachname lautet ... | min Nachname isch ... | A1 |
| ¿qué edad tienes? / ¿cuántos años tienes? | how old are you? | kiom vi aĝas? | wie alt bist du? | wie alt bisch du? | A1, Informal* |
| tengo ... años | I am ... years old | mi aĝas ... jarojn | ich bin ... Jahre alt | ich bi zwangzgi | A1 |
| yo también | me too | mi ankaŭ | ich auch | ich au | A1 |
| ¿dónde vives? | where do you live? | kie vi loĝas? | wo wohnst du? | wo wohnsch du? | A1, Informal* |
| ¿en qué ciudad vives? | in which city do you live? | en kiu urbo vi loĝas? | in welcher Stadt wohnst du? | i welere Stadt wohnsch du? | A1, Informal* |
| ¿en qué país vives? | in which country do you live? | en kiu lando vi loĝas? | in welchem ​​Land wohnst du? | i welem Land wohnsch du? | A1, Informal* |
| vivo en ... | I live in ... | mi loĝas en ... | ich wohne in ... | ich wohne i ... | A1 |
| ¿cuál es tu dirección? | what is your address? | kiu estas via adreso? | wie lautet deine Adresse? / was ist deine Adresse? | was isch dini Adrässi? | A1, Informal* |
| vivo en la calle ..., número #... | I live in #..., ... street | mi loĝas en strato ..., # ... | ich wohne in ...Straße, #... | ich wohne i ...Straass, #... | A1 |
| mi dirección es calle ..., número #... | my address is #..., ... street | mia adreso estas strato ...,  # ... | meine Adresse ist ...Straße, #... | mini Adrässi isch ...Straass, #... | A1 |
| ¿cuál es tu código postal? | what is your postal code? / which is your postal code? | kiu estas via poŝta kodo? | wie ist deine Postleitzahl? | wie isch dini Postleitzahl? | A1, Informal* |
| mi código postal es ... | my postal code is ... | mia poŝta kodo estas ... | meine Postleitzahl ist ... | mini Postleitzahl isch ... | A1 |
| ¿de dónde eres? | where are you from? / where do you come from? | el kie vi venas? | woher kommst du? | woher chünsch du? | A1, Informal* |
| ¿de qué país eres? | what country are you from? / from which country do you come from? | el kiu lando vi venas? | aus welchem ​​Land kommst du? | uus welem Land chünsch du? | A1, Informal* |
| ¿de qué ciudad eres? | what city are you from? / from which city do you come from? | el kiu urbo vi venas? | aus welcher Stadt kommst du? | uus welere Stadt chünsch du? | A1, Informal* |
| soy de ... / vengo de ... | I am from ... / I come from ... | mi alvenas el ... | ich komme aus ... | ich chume uus ... | A1 |
| ¿eres de Nueva York / ¿vienes de nueva york? | are you from New York? | ĉu vi alvenas el Novjorko? | kommst du aus New York? | chünsch du uus New York? | A1, Informal* |
| sí | yes, I am | jes | ja | ja | A1 |
| no | no, I am not | ne | nein | näi | A1 |
| ¿no eres de Nueva York? / ¿no vienes de nueva york? | aren't you from New York? | ĉu vi ne alvenas el Novjorko? | kommst du nicht aus New York? | chünsch du nöd uus New York? | A1, Informal* |
| sí, soy de Nueva York | yes, I am | jes, mi alvenas el Novjorko | doch | doc | A1 |
| no / no, no soy de Nueva York | no, I am not | ne, mi ne alvenas el Novjorko | nein / nein, ich komme nicht aus New York | näi / näi, ich chume nöd uus New York | A1 |
| ¿cuál es tu nacionalidad? | what nationality are you? | kia nacieco vi estas? | welche Nationalität hast du? | weli Nationalität hasch du? | A1, Informal* |
| soy japonés | I am japanese | mi estas japana | Ich bin Japaner | Ich bi Japaner | A1 |
| ¿cuál es el apellido de Toshio? | what is Toshio's last name? | kio estas la familinomo de Toshio? | was ist der Nachname von Toshio? / wie lautet der Nachname von Toshio? | was isch de Nachname vo Toshio? | A1 |
| su apellido es Tanaka | his last name is Tanaka | lia familinomo estas Tanaka | sein Nachname lautet Tanaka / sein Nachname ist Tanaka | sin Nachname isch ... | A1 |
| ¿cuál es el apellido de Sonia? | what is Sonia's last name? | kio estas la familinomo de Sonia? | was ist der Nachname von Sonia? / wie lautet der Nachname von Sonia? | was isch de Nachname vo Sonia? | A1 |
| su apellido es Campos | her last name is Campos | ŝia familinomo estas Campos | ihr Nachname lautet Campos / ihr Nachname ist Campos | ire Nachname isch ... | A1 |
| esta es Gina | this is Gina | jen Gina | das ist Gina | das isch Gina | A1 |
| ella es Gina | she is Gina | ŝi estas Gina | sie ist Gina | si isch Gina | A1 |
| este es Paul | this is Paul | jen Paul | das ist Paul | das isch Paul | A1 |
| él es Paul | he is Paul | li estas Paul | er ist Paul | er isch Paul | A1 |
| somos de Los Angeles | we are from Los Angeles | ni alvenas el Los Angeles | wir kommen aus Los Angeles | mir chömed uus Los Angeles | A1 |
| Mark y tú sois de Boston | Mark and you are from Boston | Marki kaj vi alvenas el Boston | Mark und du kommt aus Boston | Mark und du chömed uus Boston | A1 |
| Mary y Peter también son de Boston | Mary and Peter are from Boston, too | Maria kaj Petro ankaŭ alvenas el Boston | Mary und Peter kommen auch aus Boston / Mary und Peter kommen ebenfalls aus Boston | Mary und Peter chömed au uus Boston | A1 |
| ¿cuál es tu número de teléfono? / ¿cuál es tu teléfono? | what is your telephone number? | kiu estas via telefona nombro? | was ist deine Telefonnummer? / wie lautet deine Telefonnummer? | was isch dini Telefonnummere? / was isch dini Nummere? | A1, Informal* |
| mi número de teléfono es ... / mi teléfono es ... | my telephone number is ... | mia telefonnumero estas ... | meine Telefonnummer ist ... / meine Telefonnummer lautet ... | mini Telefonnummere isch ... / mini Nummere isch ...  | A1 |
| ¿cuál es tu número de móvil? / ¿cuál es tu móvil? / ¿cuál es tu número de teléfono móvil? / ¿cuál es tu teléfono móvil? | what is your mobile phone number? | kiu estas via poŝtelefono? | was ist deine Handynummer? / wie lautet deine Handynummer? | was isch dini Handynummere? / was isch dini Nummere? | A1, Informal* |
| mi número de movil es ... / mi movil es ... / mi número de teléfono movil es ... / mi teléfono movil es ... | my phone number is ... | mia poŝtelefono estas ... | meine Handynummer ist ... / meine Handynummer lautet ... | mini Handynummere isch ... / mini Nummere isch ...  | A1 |
| ¿cuál es tu dirección de correo electrónico? / ¿cuál es tu email? | what is your e-mail address? | kiu estas via retadreso? | was ist deine E-Mail Adresse? / wie lautet deine E-Mail Adresse? | was isch dini E-Mail Adrässi? | A1, Informal* |
| mi dirección de correo electrónico es ... / mi email es ... | my e-mail address is ... | mia retpoŝtadreso estas ... | meine E-Mail Adresse ist ... / meine E-Mail Adresse lautet ... | mini E-Mail Adrässi isch ... | A1 |
| ¿en qué trabajas? / ¿de qué trabajas? / ¿cuál es tu profesión? / ¿qué eres? | what is your job? / what is your profession? | kiu estas via profesio? | was ist dein Beruf? / was arbeitest du? / als was arbeitest du? | was isch din Prueff? / was schaffsch du? / als was schaffsch du? | A1, Informal* |
| trabajo en ... / trabajo de ... / soy ... | I work as ... | mi laboras kiel ... / mia profesio estas ... | ich arbeite als ... / ich bin ... | ich schaffe als ... / ich bi ... | A1 |
| ¿dónde trabajas? / ¿para quién trabajas? | where do you work? / who do you work for? | kie vi laboras? / por kiu vi laboras? | wo arbeitest du? / für wen arbeitest du? | wo schaffsch du? / für wen schaffsch du? | A1, Informal* |
| trabajo en ... / trabajo para ... | I work in ... / I work for ... | mi laboras en ... / mi laboras por ... | ich arbeite in ... / ich arbeite bei ... | schaffe ... i / schaffe bii ... | A1 |
| ¿de dónde es ...? | where is ... from? | kie alvenas ... el? | wo kommt ... aus? | wo chünt ... uus? | A1 |
| es de ... | he is from ... | li alvenas el ... | er kommt aus ... | er chünt uus ... | A1 |
| es de ... | she is from ... | ŝi alestas el ... | sie kommt aus ... | si chünt uus ... | A1 |
| ¿hablas japonés? | do you speak Japanese? | ĉu vi parolas la japanan? | sprichst du Japanisch? | redsch du Japanisch? | A1, Informal* |
| ¿habla Michael español? | does Michael speak Spanish? | ĉu Michael parolas la hispanan? | spricht Michael Spanisch? | redt Michael Spanisch? | A1 |

### Time
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿qué hora es? | what time is it? | kioma horo estas? | wie spät ist es? | wie spaat isch es? | A1, question/answer |
| las nueve en punto / son las nueve en punto | it's nine o'clock | estas la naŭa | es ist neun Uhr | es isch nüüni | A1, question/answer |
| ¿a que hora leo? | at which time do I read? | je kioma horo mi legas? | um wie viel Uhr lese ich? | um weli Ziit läse ich? | A1, question/answer |
| ¿cuando leo? | when do I read? | kiam mi legas? | wann lese ich? | wänn läse-n-ich? | A1, question/answer |
| ¿cuánto queda para que vengan? | how much is left for them to come? | kiom da tempo restas al ili, por veni? | wie viel bleibt ihnen übrig? | wivil bliibt ihne übrig? | A1, how much is left |
| quedan diez minutos | ten minutes left | restas dek minutoj | es bleiben noch zehn Minuten übrig | es bliibed no zää Minute übrig | A1, how much is left |
| queda una hora | one hour left | restas unu horo | es bleibt noch eine Stunde übrig | es bliibt no äis Stund übrig | A1, how much is left |
| no queda nada | no time left | neniu tempo lasis | keine Zeit mehr | käi Ziit meh | A1, how much is left |
| deberían estar ya aquí | they should be here already | ili devus esti ĉi tie jam | sie sollten schon hier sein | sie sötted scho da sii | A1, how much is left |
| hemos llegado pronto | we have arrived soon | ni alvenis frue | wir sind früh angekommen | mir sind früe aacho | A1, soon/late |
| están llegando tarde | they are arriving late | ili alvenas malfrue | sie kommen spät an | sie chömed spaat aa | A1, soon/late |
| el tiempo se ha acabado | the time is up / the time is over | la tempo finiĝis | die Zeit ist um | d'Ziit isch um | A1, time over |

### Work
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿dónde trabajas? | where do you work? | kie vi laboras? | für wen arbeitest du? | für wenn schaffsch du? | A1, Informal |
| ¿dónde trabaja? | where do you work? | kie vi laboras? | für wen arbeiten Sie? | für wenn schaffed Si? | A1, Formal |
| trabajo en ... | I work at ... | mi laboras ĉe ... | ich arbeite bei ... | ich schaffe bii ... | A1 |
| ¿a qué se dedica? / ¿en qué trabaja? | what do you do? / what is your job? | kio estas via laboro? | was bist du von Beruf? | was bisch du vo Prueff? | A1, Informal |
| ¿a qué te dedicas? / ¿en qué trabajas? | what do you do? / what is your job? | kio estas via laboro? | was sind Sie von Beruf? | was sind Si vo Prueff? | A1, Formal |
| soy programador | I'm a programmer | mi estas programisto | ich bin Programmierer | ich bi Programmierer | A1 |
| ¿siempre trabajas desde la oficina? | do you always work from the office? | ĉu vi ĉiam laboras de la oficejo? | arbeitest du immer vom Büro aus? | schaffsch du imer vom Büro uus? | A1 |
| mi jefe a veces escribe informes | my boss sometimes writes reports | mia estro kelkfoje skribas raportojn | mein Chef schreibt manchmal Berichte | min Chef schriibt mängisch Bricht | A1 |
| ¿con quién te reunes? | who do you meet? | kiu vi renkontas? | wen triffst du? | wer triffsch du? | A1, Informal |
| ¿con quién se reune? | who do you meet? | kiu vi renkontas? | wen treffen Sie? | wer träffed Si? | A1, Formal |
| me reuno con mi jefe | I meet my boss | mi renkontas mian estron | ich treffe meinen Chef | ich träffe min Chef | A1 |
| tengo una reunión con mi jefe | I have a meeting with my boss | mi havas kunvenon kun mia estro | ich habe ein Treffen mit meinem Chef | ich ha-n-e Treffe mit mim Chef | A1 |

### Restaurant
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tenemos una reserva | we have a reservation | ni havas rezervon | wir haben eine Reservierung | mir händ e Reservierig | A1 |
| ¿a nombre de quién? | under which name? | por kiu nomo? | unter welchem Name? | under welem Name? | A1 |
| a nombre de ... | under the name ... | por la nomo ... | unter den Name ... | under dem Name ... / für ... | A1 |
| ¿qué le gustaría tomar? / ¿qué quiere tomar? | what would you like? | kion vi volus manĝi? | was hätten Sie gern? | was hätted Si gern? | A1 |
| ¿puedo tomar su orden? | may I take your order? | ĉu mi povus preni vian ordonon? | darf ich ihre Bestellung aufnehmen? | dörf ich iri Bstellig uufneh? | A1 |
| ¿que querría cenar? / ¿qué le gustaría cenar? | what would you like for dinner? | kion vi volus por vespermanĝi? | was hätten Sie gern zum Abendessen? | was hätted Si gern zum z'Nacht? | A1, Formal |
| quiero una hamburguesa / me gustaría una hamburguesa | I'd like a hamburger | mi volus hamburgeron | ich hätte gerne einen Hamburger / ich möchte einen Hamburger | ich hätti gern äin Hamburger | A1 |
| querría pollo y sopa | I would like chicken and soup | mi volus kokaĵo kaj supo | Ich möchte Hähnchen und dazu Suppe | Ich möchti Poulet und dazue Suppe | A1 |
| ¿le gustaría una taza de te? / ¿quiere una taza de te? | would you like a cup of tea? | ĉu vi volus tason da teo? | hättest du gern eine Tasse Tee? | hätted Si gern äi Tasse Tee? | A1, Formal |
| sí, por favor | yes, please | jes, bonvolu | ja, bitte | ja, bitte | A1 |
| no, gracias | I'm fine, thanks | mi fartas bone, dankon | nein, danke | nein, danke | A1 |
| nos gustaría tomar helado / queremos helado | we would like ice cream | ni volus glaciaĵon | wir möchten Eiscreme | mir möchti Glace | A1 |
| ¿en qué punto quiere la carne? / ¿cómo quiere la carne? | how would you like your meat cooked? / how would you like your meat done? | kiom kuirita vi volus vian viandon? | wie möchten Sie ihr Fleisch? | wie hätted gern Si das Fläisch? | A1, Formal |
| ¿cuántos vasos de vino querría? | how many glasses of wine would you like? | kiom da glasoj da vino vi volus? | wie viele Gläser Wein möchten Sie? | wievill Gläser Wii hätted Si gern? | A1, Formal |
| ¿qué te gusta beber? | what do you like to drink? | kion vi volus trinki? | was trinkst du gern? | was trinked Si gern? | A1, Informal |
| ¡que aproveche! | enjoy your meal! | ĝuu vian manĝon! | Guten Appetit! | en Guete! | A1 |
| la cuenta, por favor | the check, please | la fakturon, bonvolu | die Rechnung, bitte | d Rechnig, bitte | A1 |
| aquí tiene | here / here it is | jen | da | da | A1, Formal |
| quédate con la vuelta / quédate con el cambio | keep the change | la resto estas por vi | stimmt so / passt so | stimmt so / passt so | A1 |
| ¿cuánta propina quiere dejar? | how much tip do you want to leave? | kiam gratifiko vi volas lasi? | wie viel Trinkgeld wollen Sie lassen? | wievill Trinkgäld wänd Si laa? | A1, Formal |
| ¿puedo pagar con tarjeta de crédito? | can I pay with credit card? | ĉu mi povas pagi per kreditkarto? | kann ich mit Kreditkarte zahlen? | cha-n-ich mit Kreditkarte zahle? | A1 |
| ¿puedo pagar en efectivo? | can I pay with cash? | ĉu mi povas pagi per mono? | kann ich Bar bezahlen? | cha-n-ich Bar zahle? | A1 |
| podemos pagar juntos | we can pay together | ni povas pagi kune | wir können zusammen bezahlen | mir chönted zäme zahle | A1 |
| ¿podríamos pagar por separado? | could we pay separately? | ĉu ni povus pagi aparte? | könnten wir getrennt bezahlen? | chönted mir separat zahle? / chönted mir trännt zahle? | A1, Formal |
| con mucho gusto | with pleasure | kun plezuro | gerne / sehr gerne | gerne / sehr gerne | A1 |

### Shopping
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿puedo ayudarle? | can I help you? / may I help you? | cu mi povas helpi vin? / ĉu mi povas helpi vin? | kann ich Ihnen helfen? | cha-n-ich Ihne hälfe? | A1, Formal |
| no, gracias. Solo estoy mirando | no, thanks. I am just looking | ne, dankon. mi nur rigardas | nein, danke. Ich schaue nur / Ich sehe mich nur um | näi, danke. Ich luege nur ume | A1 |
| ¿vendéis ordenadores? | do you sell computers? | ĉu vi vendas komputilojn? | verkaufen Sie Computer? | verchaufed Si Computer? | A1 |
| estoy buscando la talla 12 de este traje / estoy buscando este traje en talla 12 | I'm looking for this suit in a size 12 | mi serĉas ĉi tiun kostumon en grandeco 12 | ich suche diesen Anzug in Größe 12 | ich sueche de Aazug i Grössi 12 | A1 |
| aquí tiene | here you are | ĉi tie vi estas | bitte / bitte sehr / bitte schön | bitte / bitte sehr / bitte schön | A1, Formal |
| ¿cuánto cuesta? | how much is it? | kiom kostas tio? | wie viel kostet das? | wivill chostet das? | A1 |
| son $195 / cuesta $195 | it is $195 / it costs $195 | ĝi kostas $195 | es kostet $195 | es chostet $195 | A1 |
| ¿y ese? | how about that one? | kiel pri tiu? | und der da? / und das da? / und die da? | und de da? / und si da? / und das da? | A1 |
| el zapato me queda bien | the shoe fits / the shoe fits me | la ŝuo taŭgas | der Schuh passt / der Schuh passt mir | de Schueh passt / de Schueh passt mir | A1 |
| llevo el zapato puesto | I'm wearing the shoe | mi portas la ŝuon | ich trage den Schuh | ich han de Schueh aa | A1 |
| me lo quedo | I'll keep it | mi konservos ĝin | ich behalte es | ich bhalte de / ich bhalte si / ich bhalte das | A1 |
| ¿aceptáis tarjeta de crédito? | do you take credit card? | ĉu vi akceptas kreditkarton? | akzeptieren Sie Kreditkarte? | akzeptiere Si Kreditkarte? | A1 |
| ¿aceptáis American Express? | do you accept American Express? | ĉu vi akceptas American Express? | akzeptieren Sie American Express? | akzeptiere Si American Express? | A1 |
| (él) está buscando un jersey verde | he is looking for a green sweater | li serĉas verdan sveteron | er sucht einen grünen Pullover | er suecht en grüene Pulli | A1 |
| (él) está preguntando el precio | he is asking the price | li demandas la prezon | er fragt nach dem Preis | er fraagt nach em Priis | A1 |
| (él) está pagando por el suéter | he is paying for the sweater | li pagas la sveteron | er bezahlt den Pullover | er zahlt de Pulli | A1 |
| (él) le está dando el suéter a su mujer | he is giving the sweater to his wife | li donas la sveteron al sia edzino | er gibt seiner Frau den Pullover | er git sinere Frau de Pulli | A1 |
| ¿quiere los negros o los marrones? | would you like the black ones or the brown ones? | ĉu vi ŝatus la nigrajn aŭ brunajn? | möchten Sie die schwarzen oder die braunen? | möchted Sie die schwarzee oder die bruune? | A1, Formal |
| ¿quiere probárselos? | would you like to try it on? | ĉu vi ŝatus provi ĝin? | wollen Sie es anprobieren? | wänd Si es aaprobiere? | A1, Formal |
| ¿cuándo abrís? | what are your opening hours? | kio estas viaj malfermaj horoj? | was sind ihre Öffnungszeiten? | was sind iri Öffnigsziite? | A1 |
| abrimos de 9 a 6 | we're open from 9 to 6 | ni estas malfermitaj de 9 ĝis 6 | wir sind von 9 bis 6 geöffnet | mir sind vom 9 bis 6 offe | A1 |

### Travel
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| me voy de vacaciones | I'm going on vacation | mi ferias | ich gehe in den Urlaub | ich gan i d Ferie | A1 |
| ¿a dónde vas? | where are you going? | kien vi iras? | wohin gehst du? | wohii gasch du? | A1, Informal |
| voy a Madrid | I'm going to Madrid | mi iros al Madrido | ich fahre nach Madrid | ich faare nach Madrid | A1 |
| ¿cuándo te vas? | when are you leaving? | kiam vi foriras? | wann gehst du? | wänn gaasch du? | A1, Informal |
| me voy el viernes | I'm leaving on Friday | mi foriras vendrede | ich fahre am Freitag | ich faare am Friitig | A1 |
| ¡ten un buen viaje! | have a nice trip! | bonan vojaĝon! | gute Reise! | gueti Rais! | A1, Informal |
| ¿cuándo te vas de vacaciones? | when do you go on vacation? | kiam vi ferias? | wann gehst du in den Urlaub? | wänn gaasch du i d Ferie? | A1, Informal |
| siempre voy en verano | I always go in the summer | mi ĉiam ferias en la somero | ich gehe immer im Sommer | ich gaa imer im Sumer | A1 |
| ¿cómo vas a ir allí? | how are you going there? | kiel vi iras tien? | wie gehst du dorthin? | wie gasch du deethii | A1, Informal |
| voy en tren | I'm going by train | mi iras trajne | ich gehe mit dem Zug | ich gaa mit em Zug | A1 |
| voy a ir conduciendo | I'm driving there | mi iras veture | ich fahre dorthin | ich faare deethii | A1 |
| voy a ir andando | I'm walking there | mi iras piedire | ich gehe dorthin | ich gaa deethii | A1 |
| nos vamos el 4 de junio | we are leaving on June 4th | ni foriros la 4an de junio | wir gehen am 4. Juni | mir gönd ... 4. Juni | A1 |
| volveremos el 8 de junio | we are coming back on June 8th | ni revenos la 8an de junio | wir kommen am 8. Juni zurück | mir chömed ... 8. Juni zrugg | A1 |
| él se va ya mismo | he is leaving soon | li lasas baldaŭ | er geht bald | er gaat bald | A1 |
| ¿cuál es el número de vuelo? | what is the flight number? | kio estas la flugnombro? | wie lautet die Flugnummer? | was isch d Flugnummer? | A1 |

### Weather
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| llueve | it rains | pluvas | es regnet | es rägnet | A1 |
| está lloviendo | it is raining | pluvas | es regnet | es rägnet | A1 |
| está lloviendo fuerte | it is raining strongly | pluvas forte | es regnet stark | es rägnet starch | A1 |
| está lloviendo ligero | it is raining strongly | pluvas forte | es regnet stark | es rägnet starch | A1 |
| hace frío | it's cold | estas malvarma / malvarmas | es ist kalt | s'isch chalt | A1 |
| tengo frío | I'm cold | mi estas malvarma | mir ist kalt | ich han chalt | A1 |
| hace calor | is hot | estas varma / varmas / estas varmega / varmegas | es ist heiß | s'isch häiss | A1 |
| tengo calor | I'm hot | mi estas varmega | mir ist heiß | ich han häiss | A1 |
| está templado | it's warm | estas varma / varmas | es ist warm | s'isch warm | A1 |
| no tengo ni frío ni calor | I am warm | mi estas varma | mir ist warm | ich han warm | A1 |

### Directions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| gire a la izquierda | turn left | turnu maldekstren | biegen Sie links ab | büüged Si links ab | A1, Formal |
| gire a la derecha | turn right | turnu dekstren | biegen Sie rechts ab | büüged Si rächts ab | A1, Formal |
| tome el autobús número 47 / coja el autobús número 47 | take the number 47 bus | prenu la numeron 47-buso | nehmen Sie die Buslinie 47 | nähmed Si de Bus Nummere 47 / nähmed Si de 47er | A1, Formal |
| aparque detrás del banco | park behind the bank | parku la veturilo malantaŭ la banko | parken Sie hinter der Bank | parkiere Si hinder de Bank | A1, Formal |
| siga recto dos bloques | go straight ahead two blocks | iru rekte antaŭ du blokojn | gehen Sie zwei Blöcke geradeaus | gönd Sie zwei Blöck graduus | A1, Formal |
| ande tres bloques / camine tres bloques | walk three blocks | marŝu tri blokojn | gehen Sie drei Blöcke | gönd Sie drüü Blöck | A1, Formal |
| pase la oficina de correos | pass the post office | pasu la poŝtoficejon | gehen Sie an der Post vorbei | günd Sie ade post verbii | A1, Formal |
| ¿hay un banco cerca de aquí? | is there a bank near here? | ĉu estas banko ĉi tie? | gibt es hier in der Nähe eine Bank? | git's da ide Nöchi e Bank? | A1 |
| sí, hay uno en Main Street | yes, there is one on Main Street | jes, estas unu sur Main Street | ja, es gibt einen auf der Main Street | ja, s'git eine uuf de Main Street | A1 |
| ¿hay alguna librería cerca? | are there any bookstores nearby? | ĉu estas iuj librejoj proksime? | gibt es hier Buchhandlungen in der Nähe? | git's hier Buechhandlige ide Nöchi? | A1 |
| gire a la derecha en el tercer semáforo | turn right at the third traffic light | turnu dekstre ĉe la tria trafiklumo | biegen Sie an der dritten Ampel rechts ab | büüged Si ade dritte Ample rächts ab | A1, Formal |
| gire a la izquierda en el semáforo | make a left at the traffic light | faru maldekstren ĉe la trafiklumo | biegen Sie an der Ampel links | büüged Si ade Ample links ab | A1, Formal |
| ¿cómo llego a Times Square? | how do I get to Times Square? | kiel mi iras al Times Square? | wie komme ich zum Times Square? | wie chum ich zum Times Square? | A1 |
| ¿dónde me tengo que bajar? | where do I get off? | kie mi devas foriri? | wo muss ich aussteigen? | wo muess ich uusstiige? | A1 |
| ¿dónde está? / ¿dónde se encuentra? | where are you located? | kie vi estas? | wo befinden Sie sich? | wo befinde Si sich? | A1, Formal |

### People
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ¿cuántas personas hay en su familia? | how many people are there in your family? | kiom da personoj estas en via familio? | wie viele Mitglieder hat ihre Familie? | wivilli Mitglieder hat ihri Familie? | A1, Formal |
| ¿qué edad tiene tu padre? | how old is your father? | kiom da jaroj havas via patro? / kiom aĝas via patro? | wie alt ist dein Vater? | wie alt isch din Vater? | A1, Informal |
| tiene setenta y cinco / tiene setenta y cinco años | he's seventy-five / he's seventy-five years old | li havas sepdek kvin jarojn / li aĝas sepdek kvin jarojn | er ist fünfundsiebzig / er ist fünfundsiebzig Jahre alt | er isch föifesibezg / er isch föifesibezg Jaare alt | A1 |

### Intention
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| quería decir la verdad | I intended to say the truth | mi intencis diri la veron | Ich hatte vor, die Wahrheit zu sagen | ich han vorgha, d'Wahräit z'säge | A1 |
| no quería decir una mentira | I didn't intend to say a lie | mi ne intencis diri mensogon | Ich hatte nicht vor, eine Lüge zu sagen | ich han nöd vorgha, e Lüüg z'säge | A1 |
| no quería mentir | I didn't intend to lie | mi ne intencis mensogi | Ich wollte nicht lügen | ich han nöd vorgha, z'lüüge | A1 |

<a name="7_conjugation">

## Section 7: Conjugation

### Verb "to have" as in posession
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tener | to have | havi | haben | haa | A1, Infinitive |
| tenido | had | havita | gehabt | ghaa | A1, Past Participle |
| yo tengo una manzana | I have an apple | mi havas pomon | ich habe ein Apfel | ich han en Öpfel | A1, Present Simple |
| tú tienes una manzana | you have an apple | vi havas pomon | du hast ein Apfel | du häsch en Öpfel | A1, Informal, Present Simple |
| usted tiene una manzana | you have an apple | vi havas pomon | Sie haben ein Apfel | Si händ en Öpfel | A1, Formal, Present Simple |
| él tiene una manzana | he has an apple | li havas pomon | er hat ein Apfel | er hät en Öpfel | A1, Present Simple |
| ella tiene una manzana | she has an apple | ŝi havas pomon | sie hat ein Apfel | si hät en Öpfel | A1, Present Simple |
| tiene una manzana | it has an apple | ĝi havas pomon | es hat ein Apfel | es hät en Öpfel | A1, Present Simple |
| nosotros tenemos una manzana | we have an apple | ni havas pomon | wir haben ein Apfel | mir händ en Öpfel | A1, Present Simple |
| nosotras tenemos una manzana | we have an apple | ni havas pomon | wir haben ein Apfel | mir händ en Öpfel | A1, Present Simple |
| vosotros tenéis una manzana | you have an apple | vi havas pomon | ihr habt ein Apfel | ir händ en Öpfel | A1, Informal, Present Simple |
| vosotras tenéis una manzana | you have an apple | vi havas pomon | ihr habt ein Apfel | ir händ en Öpfel | A1, Informal, Present Simple |
| ustedes tienen una manzana | you have an apple | vi havas pomon | Sie haben ein Apfel | Si händ en Öpfel | A1, Formal, Present Simple |
| ustedes tienen una manzana | you have an apple | vi havas pomon | Sie haben ein Apfel | Si händ en Öpfel | A1, Formal, Present Simple |
| ellos tienen una manzana | they have an apple | ili havas pomon | sie haben ein Apfel | si händ en Öpfel | A1, Present Simple |
| ellas tienen una manzana | they have an apple | ili havas pomon | sie haben ein Apfel | si händ en Öpfel | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo tenía una manzana | I had an apple | mi havis pomon | ich hatte ein Apfel |  | A1, Past Simple |
| tu tenías una manzana | you had an apple | vi havis pomon | du hattest ein Apfel |  | A1, Informal, Past Simple |
| usted tenía una manzana | you had an apple | vi havis pomon | Sie hatten ein Apfel |  | A1, Formal, Past Simple |
| él tenía una manzana | he had an apple | li havis pomon | er hatte ein Apfel |  | A1, Past Simple |
| ella tenía una manzana | she had an apple | ŝi havis pomon | sie hatte ein Apfel |  | A1, Past Simple |
| tenía una manzana | it had an apple | ĝi havis pomon | es hatte ein Apfel |  | A1, Past Simple |
| nosotros teníamos una manzana | we had an apple | ni havis pomon | wir hatten ein Apfel |  | A1, Past Simple |
| nosotras teníamos una manzana | we had an apple | ni havis pomon | wir hatten ein Apfel |  | A1, Past Simple |
| vosotros teníais una manzana | you had an apple | vi havis pomon | ihr hattet ein Apfel |  | A1, Informal, Past Simple |
| vosotras teníais una manzana | you had an apple | vi havis pomon | ihr hattet ein Apfel |  | A1, Informal, Past Simple |
| ustedes tenían una manzana | you had an apple | vi havis pomon | Sie hatten ein Apfel |  | A1, Formal, Past Simple |
| ustedes tenían una manzana | you had an apple | vi havis pomon | Sie hatten ein Apfel |  | A1, Formal, Past Simple |
| ellos tenían una manzana | they had an apple | ili havis pomon | sie hatten ein Apfel |  | A1, Past Simple |
| ellas tenían una manzana | they had an apple | ili havis pomon | sie hatten ein Apfel |  | A1, Past Simple |
| yo he tenido una manzana | I've had an apple |  | ich habe ein Apfel gehabt | ich han en Öpfel ghaa | A1, Past Perfect |
| tú has tenido una manzana | you've had an apple |  | du hast ein Apfel gehabt | du häsch en Öpfel ghaa | A1, Informal, Past Perfect |
| usted ha tenido una manzana | you've had an apple |  | Sie haben ein Apfel gehabt | Si händ en Öpfel ghaa | A1, Formal, Past Perfect |
| él ha tenido una manzana | he has had an apple |  | er hat ein Apfel gehabt | er hät en Öpfel ghaa | A1, Past Perfect |
| ella ha tenido una manzana | she has had an apple |  | sie hat ein Apfel gehabt | si hät en Öpfel ghaa | A1, Past Perfect |
| ha tenido una manzana | it has had an apple |  | es hat ein Apfel gehabt | es hät en Öpfel ghaa | A1, Past Perfect |
| nosotros hemos tenido una manzana | we've had an apple |  | wir haben ein Apfel gehabt | mir händ en Öpfel ghaa | A1, Past Perfect |
| nosotras hemos tenido una manzana | we've had an apple |  | wir haben ein Apfel gehabt | mir händ en Öpfel ghaa | A1, Past Perfect |
| vosotros habéis tenido una manzana | you've had an apple |  | ihr habt ein Apfel gehabt | ir händ en Öpfel ghaa | A1, Informal, Past Perfect |
| vosotras habéis tenido una manzana | you've had an apple |  | ihr habt ein Apfel gehabt | ir händ en Öpfel ghaa | A1, Informal, Past Perfect |
| ustedes han tenido una manzana | you've had an apple |  | Sie haben ein Apfel gehabt | Si händ en Öpfel ghaa | A1, Formal, Past Perfect |
| ustedes han tenido una manzana | you've had an apple |  | Sie haben ein Apfel gehabt | Si händ en Öpfel ghaa | A1, Formal, Past Perfect |
| ellos han tenido una manzana | they've had an apple |  | sie haben ein Apfel gehabt | si händ en Öpfel ghaa | A1, Past Perfect |
| ellas han tenido una manzana | they've had an apple |  | sie haben ein Apfel gehabt | si händ en Öpfel ghaa | A1, Past Perfect |
| yo tendré una manzana | I will have an apple | mi havos pomon | ich werde einen Apfel haben | ich han (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| tú tendrás una manzana | you will have an apple | vi havos pomon | du wirst einen Apfel haben | du häsch (Zuekunft Ziitadverb) en Öpfel | A2, Informal, Future Simple |
| usted tendrá una manzana | you will have an apple | vi havos pomon | Sie werden einen Apfel haben | Si händ (Zuekunft Ziitadverb) en Öpfel | A2, Formal, Future Simple |
| él tendrá una manzana | he will have an apple | li havos pomon | er wird einen Apfel haben | er hät (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| ella tendrá una manzana | she will have an apple | ŝi havos pomon | sie wird einen Apfel haben | si hät (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| tendrá una manzana | it will have an apple | ĝi havos pomon | es wird einen Apfel haben | es hät (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| nosotros tendremos una manzana | we will have an apple | ni havos pomon | wir werden einen Apfel haben | mir händ (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| nosotras tendremos una manzana | we will have an apple | ni havos pomon | wir werden einen Apfel haben | mir händ (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| vosotros tendréis una manzana | you will have an apple | vi havos pomon | ihr werden einen Apfel haben | ir händ (Zuekunft Ziitadverb) en Öpfel | A2, Informal, Future Simple |
| vosotras tendréis una manzana | you will have an apple | vi havos pomon | ihr werden einen Apfel haben | ir händ (Zuekunft Ziitadverb) en Öpfel | A2, Informal, Future Simple |
| ustedes tendrán una manzana | you will have an apple | vi havos pomon | Sie werden einen Apfel haben | Si händ (Zuekunft Ziitadverb) en Öpfel | A2, Formal, Future Simple |
| ustedes tendrán una manzana | you will have an apple | vi havos pomon | Sie werden einen Apfel haben | Si händ (Zuekunft Ziitadverb) en Öpfel | A2, Formal, Future Simple |
| ellos tendrán una manzana | they will have an apple | ili havos pomon | sie werden einen Apfel haben | si händ (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| ellas tendrán una manzana | they will have an apple | ili havos pomon | sie werden einen Apfel haben | si händ (Zuekunft Ziitadverb) en Öpfel | A2, Future Simple |
| ten una manzana | have an apple | havu pomon | habe einen Apfel | haa en Őpfel | A2, Informal, Imperative |
| tenga una manzana | have an apple | havu pomon | haben Sie einen Apfel | händ Si en Öpfel | A2, Formal, Imperative |
| tengamos una manzana | let's have an apple | havu pomon | haben einen Apfel | händ en Öpfel | A2, Imperative |
| tened una manzana | have an apple | havu pomon | habt einen Apfel | händ en Öpfel | A2, Informal, Imperative |
| tengan una manzana | have an apple | havu pomon | haben Sie einen Apfel | händ Si en Öpfel | A2, Formal, Imperative |
| si yo tuviera una manzana / si yo tuviese una manzana | had I an apple / if I had an apple | se mi havus pomon | wenn ich einen Apfel hätte | wänn ich en Öpfel hett(i) | B1, Condition |
| si tú tuvieras una manzana / si tú tuvieses una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn du einen Apfel hättest | wänn du en Öpfel hett(i)sch | B1, Informal, Condition |
| si usted tuviera una manzana / si usted tuviese una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn Sie einen Apfel hätten | wänn Si en Öpfel hetted | B1, Formal, Condition |
| si él tuviera una manzana / si él tuviese una manzana | had he an apple / if he had an apple | se li havus pomon | wenn er einen Apfel hätte | wänn er en Öpfel hett(i) | B1, Condition |
| si ella tuviera una manzana / si ella tuviese una manzana | had she an apple / if she had an apple | se ŝi havus pomon | wenn sie einen Apfel hätte | wänn si en Öpfel hett(i) | B1, Condition |
| si tuviera una manzana / si tuviese una manzana | had it an apple / if it had an apple | se ĝi havus pomon | wenn es einen Apfel hätte | wänn es en Öpfel hett(i) | B1, Condition |
| si nosotros tuviéramos una manzana / si nosotros tuviésemos una manzana | had we an apple / if we had an apple | se ni havus pomon | wenn wir einen Apfel hätten | wänn mir en Öpfel hetted | B1, Condition |
| si nosotras tuviéramos una manzana / si nosotras tuviésemos una manzana | had we an apple / if we had an apple | se ni havus pomon | wenn wir einen Apfel hätten | wänn mir en Öpfel hetted | B1, Condition |
| si vosotros tuviérais una manzana / si vosotros tuviéseis una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn ihr einen Apfel hättet | wänn ir en Öpfel hetted | B1, Informal, Condition |
| si vosotras tuviérais una manzana / si vosotras tuviéseis una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn ihr einen Apfel hättet | wänn ir en Öpfel hetted | B1, Informal, Condition |
| si ustedes tuvieran una manzana / si ustedes tuviesen una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn Sie einen Apfel hätten | wänn Si en Öpfel hetted | B1, Formal, Condition |
| si ustedes tuvieran una manzana / si ustedes tuviesen una manzana | had you an apple / if you had an apple | se vi havus pomon | wenn Sie einen Apfel hätten | wänn Si en Öpfel hetted | B1, Formal, Condition |
| si ellos tuvieran una manzana / si ellos tuviesen una manzana | had they an apple / if they had an apple | se ili havus pomon | wenn sie einen Apfel hätten | wänn si en Öpfel hetted | B1, Condition |
| si ellas tuvieran una manzana / si ellas tuviesen una manzana | had they an apple / if they had an apple | se ili havus pomon | wenn sie einen Apfel hätten | wänn si en Öpfel hetted | B1, Condition |
| yo tendría una manzana | I would have an apple | mi havus pomon | ich hätte einen Apfel | ich hett(i) en Öpfel | B1, Conditioned |
| tú tendrías una manzana | you would have an apple | vi havus pomon | du hättest einen Apfel | du hett(i)sch en Öpfel | B1, Informal, Conditioned |
| usted tendría una manzana | you would have an apple | vi havus pomon | Sie hätten einen Apfel | Si hetted en Öpfel | B1, Formal, Conditioned |
| él tendría una manzana | he would have an apple | li havus pomon | er hätte einen Apfel | er hett(i) en Öpfel | B1, Conditioned |
| ella tendría una manzana | she would have an apple | ŝi havus pomon | sie hätte einen Apfel | si hett(i) en Öpfel | B1, Conditioned |
| tendría una manzana | it would have an apple | ĝi havus pomon | es hätte einen Apfel | es hett(i) en Öpfel | B1, Conditioned |
| nosotros tendríamos una manzana | we would have an apple | ni havus pomon | wir hätten einen Apfel | mir hetted en Öpfel | B1, Conditioned |
| nosotras tendríamos una manzana | we would have an apple | ni havus pomon | wir hätten einen Apfel | mir hetted en Öpfel | B1, Conditioned |
| vosotros tendríais una manzana | you would have an apple | vi havus pomon | ihr hättet einen Apfel | ir hetted en Öpfel | B1, Informal, Conditioned |
| vosotras tendríais una manzana | you would have an apple | vi havus pomon | ihr hättet einen Apfel | ir hetted en Öpfel | B1, Informal, Conditioned |
| ustedes tendrían una manzana | you would have an apple | vi havus pomon | Sie hätten einen Apfel | Si hetted en Öpfel | B1, Formal, Conditioned |
| ustedes tendrían una manzana | you would have an apple | vi havus pomon | Sie hätten einen Apfel | Si hetted en Öpfel | B1, Formal, Conditioned |
| ellos tendrían una manzana | they would have an apple | ili havus pomon | sie hätten einen Apfel | si hetted en Öpfel | B1, Conditioned |
| ellas tendrían una manzana | they would have an apple | ili havus pomon | sie hätten einen Apfel | si hetted en Öpfel | B1, Conditioned |
| (él dice que) yo tengo una manzana | (he says that) I have an apple | (li diras, ke) mi havas pomon | (er sagt, (dass)) ich habe einen Apfel | (er säit, (dass)) ich hegi en Ŏpfel / (er säit, (dass)) ich hetti en Ŏpfel / ich würde | B1, Indirect speech |
| (él dice que) tú tienes una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) du habest einen Apfel | (er säit, (dass)) du hegisch en Ŏpfel / (er säit, (dass)) du hettisch en Ŏpfel | B1, Informal, Indirect speech |
| (él dice que) usted tiene una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) Sie haben einen Apfel | (er säit, (dass)) Si heged en Ŏpfel / (er säit, (dass)) Si hetted en Ŏpfel | B1, Formal, Indirect speech |
| (él dice que) él tiene una manzana | (he says that) he has an apple | (li diras, ke) li havas pomon | (er sagt, (dass)) er habe einen Apfel | (er säit, (dass)) er hegi en Ŏpfel / (er säit, (dass)) er hetti en Ŏpfel | B1, Indirect speech |
| (él dice que) ella tiene una manzana | (he says that) she has an apple | (li diras, ke) ŝi havas pomon | (er sagt, (dass)) sie habe einen Apfel | (er säit, (dass)) si hegi en Ŏpfel / (er säit, (dass)) si hetti en Ŏpfel | B1, Indirect speech |
| (él dice que) tiene una manzana | (he says that) it has an apple | (li diras, ke) ĝi havas pomon | (er sagt, (dass)) es habe einen Apfel | (er säit, (dass)) es hegi en Ŏpfel / (er säit, (dass)) es hetti en Ŏpfel | B1, Indirect speech |
| (él dice que) nosotros tenemos una manzana | (he says that) we have an apple | (li diras, ke) ni havas pomon | (er sagt, (dass)) wir haben einen Apfel | (er säit, (dass)) mir heged en Ŏpfel / (er säit, (dass)) mir hetted en Ŏpfel | B1, Indirect speech |
| (él dice que) nosotras tenemos una manzana | (he says that) we have an apple | (li diras, ke) ni havas pomon | (er sagt, (dass)) wir haben einen Apfel | (er säit, (dass)) mir heged en Ŏpfel / (er säit, (dass)) mir hetted en Ŏpfel | B1, Indirect speech |
| (él dice que) vosotros tenéis una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) ihr habet einen Apfel | (er säit, (dass)) ir heged en Ŏpfel / (er säit, (dass)) ir hetted en Ŏpfel | B1, Informal, Indirect speech |
| (él dice que) vosotras tenéis una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) ihr habet einen Apfel | (er säit, (dass)) ir heged en Ŏpfel / (er säit, (dass)) ir hetted en Ŏpfel | B1, Informal, Indirect speech |
| (él dice que) ustedes tienen una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) Sie haben einen Apfel | (er säit, (dass)) Si heged en Ŏpfel / (er säit, (dass)) Si hetted en Ŏpfel | B1, Formal, Indirect speech |
| (él dice que) ustedes tienen una manzana | (he says that) you have an apple | (li diras, ke) vi havas pomon | (er sagt, (dass)) Sie haben einen Apfel | (er säit, (dass)) Si heged en Ŏpfel / (er säit, (dass)) Si hetted en Ŏpfel | B1, Formal, Indirect speech |
| (él dice que) ellos tienen una manzana | (he says that) they have an apple | (li diras, ke) ili havas pomon | (er sagt, (dass)) sie haben einen Apfel | (er säit, (dass)) si heged en Ŏpfel / (er säit, (dass)) si hetted en Ŏpfel | B1, Indirect speech |
| (él dice que) ellas tienen una manzana | (he says that) they have an apple | (li diras, ke) ili havas pomon | (er sagt, (dass)) sie haben einen Apfel | (er säit, (dass)) si heged en Ŏpfel / (er säit, (dass)) si hetted en Ŏpfel | B1, Indirect speech |

### Verb "to be" for constant trait
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ser | to be | esti | sein | sii | A1, Infinitive |
| sido | been | estita | gewesen | gsii | A1, Past Participle |
| yo soy grande | I am big | mi estas granda / mi grandas | ich bin groß | ich bi grooss | A1, Present Simple |
| tu eres grande | you are big | vi estas granda / vi grandas | du bist groß | du bisch grooss | A1, Informal, Present Simple |
| usted es grande | you are big | vi estas granda / vi grandas | Sie sind groß | Si sind grooss | A1, Formal, Present Simple |
| él es grande | he is big | li estas granda / li grandas | er ist groß | er isch grooss | A1, Present Simple |
| ella es grande | she is big | ŝi estas granda / ŝi grandas | sie ist groß | si isch grooss | A1, Present Simple |
| es grande | it is big | ĝi estas granda / ĝi grandas | es ist groß | es isch grooss | A1, Present Simple |
| nosotros somos grandes | we are big | ni estas grandaj / ni grandas | wir sind groß | mir sind grooss | A1, Present Simple |
| nosotras somos grandes | we are big | ni estas grandaj / ni grandas | wir sind groß | mir sind grooss | A1, Present Simple |
| vosotros sois grandes | you are big | vi estas grandaj / vi grandas | ihr seid groß | ir sind grooss | A1, Informal, Present Simple |
| vosotras sois grandes | you are big | vi estas grandaj / vi grandas | ihr seid groß | ir sind grooss | A1, Informal, Present Simple |
| ustedes son grandes | you are big | vi estas grandaj / vi grandas | Sie sind groß | Si sind grooss | A1, Formal, Present Simple |
| ustedes son grandes | you are big | vi estas grandaj / vi grandas | Sie sind groß | Si sind grooss | A1, Formal, Present Simple |
| ellos son grandes | they are big | ili estas grandaj / ili grandas | sie sind groß | si sind grooss | A1, Present Simple |
| ellas son grandes | they are big | ili estas grandaj / ili grandas | sie sind groß | si sind grooss | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo fui grande | I was big | mi estis granda / mi grandis | ich war groß |  | A1, Past Simple |
| tú fuiste grande | you were big | vi estis granda / vi grandis | du warst groß |  | A1, Informal, Past Simple |
| usted fue grande | you were big | vi estis granda / vi grandis | Sie waren groß |  | A1, Formal, Past Simple |
| él fue grande | he was big | li estis granda / li grandis | er war groß |  | A1, Past Simple |
| ella fue grande | she was big | ŝi estis granda / ŝi grandis | sie war groß |  | A1, Past Simple |
| fue grande | it was big | ĝi estis granda / ĝi grandis | es war groß |  | A1, Past Simple |
| nosotros fuimos grandes | we were big | ni estis grandaj / ni grandis | wir waren groß |  | A1, Past Simple |
| nosotras fuimos grandes | we were big | ni estis grandaj / ni grandis | wir waren groß |  | A1, Past Simple |
| vosotros fuisteis grandes | you were big | vi estis grandaj / vi grandis | ihr wart groß |  | A1, Informal, Past Simple |
| vosotras fuisteis grandes | you were big | vi estis grandaj / vi grandis | ihr wart groß |  | A1, Informal, Past Simple |
| ustedes fueron grandes | you were big | vi estis grandaj / vi grandis | Sie waren groß |  | A1, Formal, Past Simple |
| ustedes fueron grandes | you were big | vi estis grandaj / vi grandis | Sie waren groß |  | A1, Formal, Past Simple |
| ellos fueron grandes | they were big | ili estis grandaj / ili grandis | sie waren groß |  | A1, Past Simple |
| ellas fueron grandes | they were big | ili estis grandaj / ili grandis | sie waren groß |  | A1, Past Simple |
| yo he sido grande | I've been big / I have been big |  | ich bin groß gewesen | ich bi grooss gsii | A1, Past Perfect |
| tú has sido grande | you've been big / you've been big |  | du bist groß gewesen | du bisch grooss gsii | A1, Informal, Past Perfect |
| usted ha sido grande | you've been big / you've been big |  | Sie sind groß gewesen | Si sind grooss gsii | A1, Formal, Past Perfect |
| él ha sido grande | he has been big / he's been big |  | er ist groß gewesen | er isch grooss gsii | A1, Past Perfect |
| ella ha sido grande | she has been big / she's been big |  | sie ist groß gewesen | si isch grooss gsii | A1, Past Perfect |
| ha sido grande | it has been big / it's been big |  | es ist groß gewesen | es isch grooss gsii | A1, Past Perfect |
| nosotros hemos sido grandes | we've been big / we have been big |  | wir sind groß gewesen | mir sind grooss gsii | A1, Past Perfect |
| nosotras hemos sido grandes | we've been big / we have been big |  | wir sind groß gewesen | mir sind grooss gsii | A1, Past Perfect |
| vosotros habéis sido grandes | you've been big / you have been big |  | ihr seid groß gewesen | ir sind grooss gsii | A1, Informal, Past Perfect |
| vosotras habéis sido grandes | you've been big / you have been big |  | ihr seid groß gewesen | ir sind grooss gsii | A1, Informal, Past Perfect |
| ustedes han sido grandes | you've been big / you have been big |  | Sie sind groß gewesen | Si sind grooss gsii | A1, Formal, Past Perfect |
| ustedes han sido grandes | you've been big / you have been big |  | Sie sind groß gewesen | Si sind grooss gsii | A1, Formal, Past Perfect |
| ellos han sido grandes | they've been big / they have been big |  | sie sind groß gewesen | si sind grooss gsii | A1, Past Perfect |
| ellas han sido grandes | they've been big / they have been big |  | sie sind groß gewesen | si sind grooss gsii | A1, Past Perfect |
| yo seré grande | I will be big | mi estos granda / mi grandos | Ich werde groß sein | ich bi (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| tú serás grande | you will be big | vi estos granda / vi grandos | du wirst groß sein | du bisch (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| usted será grande | you will be big | vi estos granda / vi grandos | Sie werden groß sein | Si sind (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| él será grande | he will be big | li estos granda / li grandos | er wird groß sein | er isch (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| ella será grande | she will be big | ŝi estos granda / ŝi grandos | sie wird groß sein | si isch (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| será grande | it will be big | ĝi estos granda / ĝi grandos | es wird groß sein | es isch (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| nosotros seremos grandes | we will be big | ni estos grandaj / ni grandos | wir werden groß sein | mir sind (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| nosotras seremos grandes | we will be big | ni estos grandaj / ni grandos | wir werden groß sein | mir sind (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| vosotros seréis grandes | you will be big | vi estos grandaj / vi grandos | ihr wirst groß sein | ir sind (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| vosotras seréis grandes | you will be big | vi estos grandaj / vi grandos | ihr wirst groß sein | ir sind (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| ustedes serán grandes | you will be big | vi estos grandaj / vi grandos | Sie werden groß sein | Si sind (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| ustedes serán grandes | you will be big | vi estos grandaj / vi grandos | Sie werden groß sein | Si sind (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| ellos serán grandes | they will be big | ili estos grandaj / ili grandos | sie werden groß sein | si sind (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| ellas serán grandes | they will be big | ili estos grandaj / ili grandos | sie werden groß sein | si sind (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| sé grande! | be big! | estu granda! | sei groß! | bis grooss! | A2, Informal, Imperative |
| sea grande! | be big! | estu granda! | sind Sie groß! | sind Si grooss! | A2, Formal, Imperative |
| seamos grandes! | let's be big! | ni estu grandaj! | sind groß! | sind grooss! | A2, Imperative |
| sed grandes! | be big! | estu grandaj! | seid groß! | sind grooss! | A2, Informal, Imperative |
| sean grandes! | be big! | estu grandaj! | sind Sie groß! | sind Si grooss! | A2, Formal, Imperative |
| si yo fuera grande / si yo fuese grande | were I big / was I big / if I were big / if I was big | se mi estus granda / se mi grandus | wenn ich groß wäre | wänn ich grooss weer(i) | B1, Condition |
| si tú fueras grande / si tú fueses grande | were you big / if you were big | se vi estus granda / se vi grandus | wenn du groß wärst | wänn du grooss weer(i)sch | B1, Informal, Condition |
| si usted fuera grande / si usted fuese grande | were you big / if you were big | se vi estus granda / se vi grandus | wenn Sie groß wären | wänn Si grooss weered | B1, Formal, Condition |
| si él fuera grande / si él fuese grande | were he big / was he big / if he were big / if he was big | se li estus granda / se li grandus | wenn er groß wäre | wänn er grooss weer(i) | B1, Condition |
| si ella fuera grande / si ella fuese grande | were she big / was she big / if she were big / if she was big | se ŝi estus granda / se ŝi grandus | wenn sie groß wäre | wänn si grooss weer(i) | B1, Condition |
| si fuera grande / si fuese grande | were it big / was it big / if it were big / if it was big | se ĝi estus granda / se ĝi grandus | wenn es groß wäre | wänn es grooss weer(i) | B1, Condition |
| si nosotros fueramos grandes / si nosotros fuésemos grandes | were we big / if we were big | se ni estus grandaj / se ni grandus | wenn wir groß wären | wänn mir grooss weered | B1, Condition |
| si nosotras fueramos grandes / si nosotras fuésemos grandes | were we big / if we were big | se ni estus grandaj / se ni grandus | wenn wir groß wären | wänn mir grooss weered | B1, Condition |
| si vosotros fuerais grandes / si vosotros fuéseis grandes | were you big / if you were big | se vi estus grandaj / se vi grandus | wenn ihr groß wärt | wänn ir grooss weered | B1, Informal, Condition |
| si vosotras fuerais grandes / si vosotras fuéseis grandes | were you big / if you were big | se vi estus grandaj / se vi grandus | wenn ihr  groß wärt | wänn ir grooss weered | B1, Informal, Condition |
| si ustedes fueran grandes / si ustedes fuesen grandes | were you big / if you were big | se vi estus grandaj / se vi grandus | wenn Sie groß wären | wänn Si grooss weered | B1, Formal, Condition |
| si ustedes fueran grandes / si ustedes fuesen grandes | were you big / if you were big | se vi estus grandaj / se vi grandus | wenn Sie groß wären | wänn Si grooss weered | B1, Formal, Condition |
| si ellos fueran grandes / si ellos fuesen grandes | were they big / if they were big | se ili estus grandaj / se ili grandus | wenn sie groß wären | wänn si grooss weered | B1, Condition |
| si ellas fueran grandes / si ellas fuesen grandes | were they big / if they were big | se ili estus grandaj / se ili grandus | wenn sie groß wären | wänn si grooss weered | B1, Condition |
| yo sería grande | I would be big | mi estus granda / mi grandus | ich wäre groß | ich weer(i) grooss | B1, Conditioned |
| tú serías grande | you would be big | vi estus granda / vi grandus | du wärst groß | du weer(i)sch grooss | B1, Informal, Conditioned |
| usted sería grande | you would be big | vi estus granda / vi grandus | Sie wären groß | Si weered grooss | B1, Formal, Conditioned |
| él sería grande | he would be big | li estus granda / li grandus | er wäre groß | er weer(i) grooss | B1, Conditioned |
| ella sería grande | she would be big | ŝi estus granda / ŝi grandus | sie wäre groß | si weer(i) grooss | B1, Conditioned |
| sería grande | it would be big | ĝi estus granda / ĝi grandus | es wäre groß | es weer(i) grooss | B1, Conditioned |
| nosotros seríamos grandes | we would be big | ni estus grandaj / ni grandus | wir wären groß | mir weered grooss | B1, Conditioned |
| nosotras seríamos grandes | we would be big | ni estus grandaj / ni grandus | wir wären groß | mir weered grooss | B1, Conditioned |
| vosotros seríais grandes | you would be big | vi estus grandaj / vi grandus | ihr wärt groß | ir weered grooss | B1, Informal, Conditioned |
| vosotras seríais grandes | you would be big | vi estus grandaj / vi grandus | ihr wärt groß | ir weered grooss | B1, Informal, Conditioned |
| ustedes serían grandes | you would be big | vi estus grandaj / vi grandus | Sie wären groß | Si weered grooss | B1, Formal, Conditioned |
| ustedes serían grandes | you would be big | vi estus grandaj / vi grandus | Sie wären groß | Si weered grooss | B1, Formal, Conditioned |
| ellos serían grandes | they would be big | ili estus grandaj / ili grandus | sie wären groß | si weered grooss | B1, Conditioned |
| ellas serían grandes | they would be big | ili estus grandaj / ili grandus | sie wären groß | si weered grooss | B1, Conditioned |
| (él dice que) yo soy grande | (he says that) I am big | (li diras, ke) mi estas granda / (li diras, ke) mi grandas | (er sagt, (dass)) ich sei groß | (er säit, (dass)) ich segi grooss | B1, Indirect speech |
| (él dice que) tu eres grande | (he says that) you are big | (li diras, ke) vi estas granda / (li diras, ke) vi grandas | (er sagt, (dass)) du seiest groß / (er sagt, (dass)) du seist groß | (er säit, (dass)) du segisch grooss | B1, Informal, Indirect speech |
| (él dice que) usted es grande | (he says that) you are big | (li diras, ke) vi estas granda / (li diras, ke) vi grandas | (er sagt, (dass)) Sie seien groß | (er säit, (dass)) Si seged grooss | B1, Formal, Indirect speech |
| (él dice que) él es grande | (he says that) he is big | (li diras, ke) li estas granda / (li diras, ke) li grandas | (er sagt, (dass)) er sei groß | (er säit, (dass)) er segi grooss | B1, Indirect speech |
| (él dice que) ella es grande | (he says that) she is big | (li diras, ke) ŝi estas granda / (li diras, ke) ŝi grandas | (er sagt, (dass)) sie sei groß | (er säit, (dass)) si segi grooss | B1, Indirect speech |
| (él dice que) es grande | (he says that) it is big | (li diras, ke) ĝi estas granda / (li diras, ke) ĝi grandas | (er sagt, (dass)) es sei groß | (er säit, (dass)) es segi grooss | B1, Indirect speech |
| (él dice que) nosotros somos grandes | (he says that) we are big | (li diras, ke) ni estas grandaj / (li diras, ke) ni grandas | (er sagt, (dass)) wir seien groß | (er säit, (dass)) mir seged grooss | B1, Indirect speech |
| (él dice que) nosotras somos grandes | (he says that) we are big | (li diras, ke) ni estas grandaj / (li diras, ke) ni grandas | (er sagt, (dass)) wir seien groß | (er säit, (dass)) mir seged grooss | B1, Indirect speech |
| (él dice que) vosotros sois grandes | (he says that) you are big | (li diras, ke) vi estas grandaj / (li diras, ke) vi grandas | (er sagt, (dass)) ihr seiet groß | (er säit, (dass)) ir seged grooss | B1, Informal, Indirect speech |
| (él dice que) vosotras sois grandes | (he says that) you are big | (li diras, ke) vi estas grandaj / (li diras, ke) vi grandas | (er sagt, (dass)) ihr seiet groß | (er säit, (dass)) ir seged grooss | B1, Informal, Indirect speech |
| (él dice que) ustedes son grandes | (he says that) you are big | (li diras, ke) vi estas grandaj / (li diras, ke) vi grandas | (er sagt, (dass)) Sie seien groß | (er säit, (dass)) Si seged grooss | B1, Formal, Indirect speech |
| (él dice que) ustedes son grandes | (he says that) you are big | (li diras, ke) vi estas grandaj / (li diras, ke) vi grandas | (er sagt, (dass)) Sie seien groß | (er säit, (dass)) Si seged grooss | B1, Formal, Indirect speech |
| (él dice que) ellos son grandes | (he says that) they are big | (li diras, ke) ili estas grandaj / (li diras, ke) ili grandas | (er sagt, (dass)) sie seien groß | (er säit, (dass)) si seged grooss | B1, Indirect speech |
| (él dice que) ellas son grandes | (he says that) they are big | (li diras, ke) ili estas grandaj / (li diras, ke) ili grandas | (er sagt, (dass)) sie seien groß | (er säit, (dass)) si seged grooss | B1, Indirect speech |

### Verb "to be" for transient state
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
|   |   |   |   |   | A1, Infinitive, Infinitive |
| estar | to be | esti | sein | sii | A1, Infinitive |
| estado | been | estita | gewesen | gsii | A1, Past Participle |
| yo estoy cansado | I am tired | mi estas laca / mi lacas | ich bin müde | ich bi müed | A1, Present Simple |
| tú estás cansado | you are tired | vi estas laca / vi lacas | du bist müde | du bisch müed | A1, Informal, Present Simple |
| usted está cansado | you are tired | vi estas laca / vi lacas | Sie sind müde | Si sind müed | A1, Formal, Present Simple |
| él está cansado | he is tired | li estas laca / li lacas | er ist müde | er isch müed | A1, Present Simple |
| ella está cansada | she is tired | ŝi estas laca / ŝi lacas | sie ist müde | si isch müed | A1, Present Simple |
| está cansado | it is tired | ĝi estas laca / ĝi lacas | es ist müde | es isch müed | A1, Present Simple |
| nosotros estamos cansados | we are tired | ni estas lacaj / ni lacas | wir sind müde | mir sind müed | A1, Present Simple |
| nosotras estamos cansadas | we are tired | ni estas lacaj / ni lacas | wir sind müde | mir sind müed | A1, Present Simple |
| vosotros estáis cansados | you are tired | vi estas lacaj / vi lacas | ihr seid müde | ir sind müed | A1, Informal, Present Simple |
| vosotras estáis cansadas | you are tired | vi estas lacaj / vi lacas | ihr seid müde | ir sind müed | A1, Informal, Present Simple |
| ustedes están cansados | you are tired | vi estas lacaj / vi lacas | Sie sind müde | Si sind müed | A1, Formal, Present Simple |
| ustedes están cansadas | you are tired | vi estas lacaj / vi lacas | Sie sind müde | Si sind müed | A1, Formal, Present Simple |
| ellos están cansados | they are tired | ili estas lacaj / ili lacas | sie sind müde | si sind müed | A1, Present Simple |
| ellas están cansadas | they are tired | ili estas lacaj / ili lacas | sie sind müde | si sind müed | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo estoy cansado | I was tired | mi estis laca / mi lacis | ich war müde |  | A1, Past Simple |
| tú estabas cansado | you were tired | vi estis laca / vi lacis | du warst müde |  | A1, Informal, Past Simple |
| usted estaba cansado | you were tired | vi estis laca / vi lacis | Sie waren müde |  | A1, Formal, Past Simple |
| él estaba cansado | he was tired | li estis laca / li lacis | er war müde |  | A1, Past Simple |
| ella estaba cansada | she was tired | ŝi estis laca / ŝi lacis | sie war müde |  | A1, Past Simple |
| estaba cansado | it was tired | ĝi estis laca / ĝi lacis | es war müde |  | A1, Past Simple |
| nosotros estabamos cansados | we were tired | ni estis lacaj / ni lacis | wir waren müde |  | A1, Past Simple |
| nosotras estabamos cansados | we were tired | ni estis lacaj / ni lacis | wir waren müde |  | A1, Past Simple |
| vosotros estábais cansados | you were tired | vi estis lacaj / vi lacis | ihr wart müde |  | A1, Informal, Past Simple |
| vosotras estábais cansados | you were tired | vi estis lacaj / vi lacis | ihr wart müde |  | A1, Informal, Past Simple |
| ustedes estaban cansados | you were tired | vi estis lacaj / vi lacis | Sie waren müde |  | A1, Formal, Past Simple |
| ustedes estaban cansadas | you were tired | vi estis lacaj / vi lacis | Sie waren müde |  | A1, Formal, Past Simple |
| ellos estaban cansados | they were tired | ili estis lacaj / ili lacis | sie waren müde |  | A1, Past Simple |
| ellas estaban cansados | they were tired | ili estis lacaj / ili lacis | sie waren müde |  | A1, Past Simple |
| yo he estado cansado | I've been tired |  | ich bin müde gewesen | ich bi müed gsii | A1, Past Perfect |
| tú has estado cansado | you've been tired |  | du bist müde gewesen | du bisch müed gsii | A1, Informal, Past Perfect |
| usted ha estado cansado | you've been tired |  | Sie sind müde gewesen | Si sind müed gsii | A1, Formal, Past Perfect |
| él ha estado cansado | he has been tired |  | er ist müde gewesen | er isch müed gsii | A1, Past Perfect |
| ella ha estado cansada | she has been tired |  | sie ist müde gewesen | si isch müed gsii | A1, Past Perfect |
| ha estado cansado | it has been tired |  | es ist müde gewesen | es isch müed gsii | A1, Past Perfect |
| nosotros hemos estado cansados | we've been tired |  | wir sind müde gewesen | mir sind müed gsii | A1, Past Perfect |
| nosotras hemos estado cansadas | we've been tired |  | wir sind müde gewesen | mir sind müed gsii | A1, Past Perfect |
| vosotros habéis estado cansados | you've been tired |  | ihr seid müde gewesen | ir sind müed gsii | A1, Informal, Past Perfect |
| vosotras habéis estado cansadas | you've been tired |  | ihr seid müde gewesen | ir sind müed gsii | A1, Informal, Past Perfect |
| ustedes han estado cansados | you've been tired |  | Sie sind müde gewesen | Si sind müed gsii | A1, Formal, Past Perfect |
| ustedes han estado cansadas | you've been tired |  | Sie sind müde gewesen | Si sind müed gsii | A1, Formal, Past Perfect |
| ellos han estado cansados | they've been tired |  | sie sind müde gewesen | si sind müed gsii | A1, Past Perfect |
| ellas han estado cansados | they've been tired |  | sie sind müde gewesen | si sind müed gsii | A1, Past Perfect |
| yo estaré cansado | I will be tired | mi estos laca / mi lacos | Ich werde müde sein | ich bi (Zuekunft Ziitadverb) müed | A2, Future Simple |
| tú estarás cansado | you will be tired | vi estos laca / vi lacos | du wirst müde sein | du bisch (Zuekunft Ziitadverb) müed | A2, Informal, Future Simple |
| usted estará cansado | you will be tired | vi estos laca / vi lacos | Sie werden müde sein | Si sind (Zuekunft Ziitadverb) müed | A2, Formal, Future Simple |
| él estará cansado | he will be tired | li estos laca / li lacos | er wird müde sein | er isch (Zuekunft Ziitadverb) müed | A2, Future Simple |
| ella estará cansada | she will be tired | ŝi estos laca / ŝi lacos | sie wird müde sein | si isch (Zuekunft Ziitadverb) müed | A2, Future Simple |
| estará cansado | it will be tired | ĝi estos laca / ĝi lacos | es wird müde sein | es isch (Zuekunft Ziitadverb) müed | A2, Future Simple |
| nosotros estaremos cansados | we will be tired | ni estos lacaj / ni lacos | wir werden müde sein | mir sind (Zuekunft Ziitadverb) müed | A2, Future Simple |
| nosotras estaremos cansadas | we will be tired | ni estos lacaj / ni lacos | wir werden müde sein | mir sind (Zuekunft Ziitadverb) müed | A2, Future Simple |
| vosotros estaréis cansados | you will be tired | vi estos lacaj / vi lacos | du wirst müde sein | ir sind (Zuekunft Ziitadverb) müed | A2, Informal, Future Simple |
| vosotras estaréis cansadas | you will be tired | vi estos lacaj / vi lacos | du wirst müde sein | ir sind (Zuekunft Ziitadverb) müed | A2, Informal, Future Simple |
| ustedes estarán cansados | you will be tired | vi estos lacaj / vi lacos | Sie werden müde sein | Si sind (Zuekunft Ziitadverb) müed | A2, Formal, Future Simple |
| ustedes estarán cansadas | you will be tired | vi estos lacaj / vi lacos | Sie werden müde sein | Si sind (Zuekunft Ziitadverb) müed | A2, Formal, Future Simple |
| ellos estarán cansados | they will be tired | ili estos lacaj / ili lacos | sie werden müde sein | si sind (Zuekunft Ziitadverb) müed | A2, Future Simple |
| ellas estarán cansadas | they will be tired | ili estos lacaj / ili lacos | sie werden müde sein | si sind (Zuekunft Ziitadverb) müed | A2, Future Simple |
| estate allí! | be there! | estu tie! | sei dort! | bis deet! | A2, Informal, Imperative |
| esté allí! | be there! | estu tie! | sind Sie dort! | sind Si deet! | A2, Formal, Imperative |
| estemos allí! | let's be there! | ni estu tie! | sind dort! | sind deet! | A2, Imperative |
| estad allí! | be there! | estu tie! | seid dort! | sind deet! | A2, Informal, Imperative |
| estén allí! | be there! | estu tie! | sind Sie dort! | sind Si deet! | A2, Formal, Imperative |
| si yo estuviera cansado / si yo estuviese cansado | were I tired / was I tired / if I were tired / if I was tired | se mi estus laca / se mi lacus | wenn ich müde wäre | wänn ich müed weer(i) | B1, Condition |
| si tú estuvieras cansado / si tú estuvieses cansado | were you tired / if you were tired | se vi estus laca / se vi lacus | wenn du müde wärst | wänn du müed weer(i)sch | B1, Informal, Condition |
| si usted estuviera cansado / si usted estuviese cansado | were you tired / if you were tired | se vi estus laca / se vi lacus | wenn Sie müde wären | wänn Si müed weered | B1, Formal, Condition |
| si él estuviera cansado / si él estuviese cansado | were he tired / was he tired / if he were tired / if he was tired | se li estus laca / se li lacus | wenn er müde wäre | wänn er müed weer(i) | B1, Condition |
| si ella estuviera cansado / si ella estuviese cansado | were she tired / was she tired / if she were tired / if she was tired | se ŝi estus laca / se ŝi lacus | wenn sie müde wäre | wänn si müed weer(i) | B1, Condition |
| si estuviera cansado / si estuviese cansado | were it tired / was it tired / if it were tired / if it was tired | se ĝi estus laca / se ĝi lacus | wenn es müde wäre | wänn es müed weer(i) | B1, Condition |
| si nosotros estuviéramos cansados / si nosotros estuviésemos cansados | were we tired / if we were tired | se ni estus lacaj / se ni lacus | wenn wir müde wären | wänn mir müed weered | B1, Condition |
| si nosotras estuviéramos cansadas / si nosotras estuviésemos cansadas | were we tired / if we were tired | se ni estus lacaj / se ni lacus | wenn wir müde wären | wänn mir müed weered | B1, Condition |
| si vosotros estuviérais cansados / si vosotros estuviéseis cansados | were you tired / if you were tired | se vi estus lacaj / se vi lacus | wenn ihr müde wärt | wänn ir müed weered | B1, Informal, Condition |
| si vosotras estuviérais cansadas / si vosotras estuviéseis cansadas | were you tired / if you were tired | se vi estus lacaj / se vi lacus | wenn ihr müde wärt | wänn ir müed weered | B1, Informal, Condition |
| si ustedes estuvieran cansados / si ustedes estuviesen cansados | were you tired / if you were tired | se vi estus lacaj / se vi lacus | wenn Sie müde wären | wänn Si müed weered | B1, Formal, Condition |
| si ustedes estuvieran cansadas / si ustedes estuviesen cansadas | were you tired / if you were tired | se vi estus lacaj / se vi lacus | wenn Sie müde wären | wänn Si müed weered | B1, Formal, Condition |
| si ellos estuvieran cansados / si ellos estuviesen cansados | were they tired / if they were tired | se ili estus lacaj / se ili lacus | wenn sie müde wären | wänn si müed weered | B1, Condition |
| si ellas estuvieran cansadas / si ellas estuviesen cansadas | were they tired / if they were tired | se ili estus lacaj / se ili lacus | wenn sie müde wären | wänn si müed weered | B1, Condition |
| yo estaría cansado | I would be tired | mi estus laca / mi lacus | ich wäre müde | ich weer(i) müed | B1, Conditioned |
| tú estarías cansado | you would be tired | vi estus laca / vi lacus | du wärst müde | du weer(i)sch müed | B1, Informal, Conditioned |
| usted estaría cansado | you would be tired | vi estus laca / vi lacus | Sie wären müde | Si weered müed | B1, Formal, Conditioned |
| él estaría cansado | he would be tired | li estus laca / li lacus | er wäre müde | er weer(i) müed | B1, Conditioned |
| ella estaría cansado | she would be tired | ŝi estus laca / ŝi lacus | sie wäre müde | si weer(i) müed | B1, Conditioned |
| estaría cansado | it would be tired | ĝi estus laca / ĝi lacus | es wäre müde | es weer(i) müed | B1, Conditioned |
| nosotros estaríamos cansados | we would be tired | ni estus lacaj / ni lacus | wir wären müde | mir weered müed | B1, Conditioned |
| nosotras estaríamos cansadas | we would be tired | ni estus lacaj / ni lacus | wir wären müde | mir weered müed | B1, Conditioned |
| vosotros estaríais cansados | you would be tired | vi estus lacaj / vi lacus | ihr wärt müde | ir weered müed | B1, Informal, Conditioned |
| vosotras estaríais cansadas | you would be tired | vi estus lacaj / vi lacus | ihr wärt müde | ir weered müed | B1, Informal, Conditioned |
| ustedes estarían cansados | you would be tired | vi estus lacaj / vi lacus | Sie wären müde | Si weered müed | B1, Formal, Conditioned |
| ustedes estarían cansadas | you would be tired | vi estus lacaj / vi lacus | Sie wären müde | Si weered müed | B1, Formal, Conditioned |
| ellos estarían cansados | they would be tired | ili estus lacaj / ili lacus | sie wären müde | si weered müed | B1, Conditioned |
| ellas estarían cansadas | they would be tired | ili estus lacaj / ili lacus | sie wären müde | si weered müed | B1, Conditioned |
| (él dice que) yo estoy cansado | (he says that) I am tired | (li diras, ke) mi estas laca / (li diras, ke) mi lacas | (er sagt, (dass)) ich sei müde | (er säit, (dass)) ich segi müed | B1, Indirect speech |
| (él dice que) tú estás cansado | (he says that) you are tired | (li diras, ke) vi estas laca / (li diras, ke) vi lacas | (er sagt, (dass)) du seiest müde / (er sagt, (dass)) du seist müde | (er säit, (dass)) du segisch müed | B1, Informal, Indirect speech |
| (él dice que) usted está cansado | (he says that) you are tired | (li diras, ke) vi estas laca / (li diras, ke) vi lacas | (er sagt, (dass)) Sie seien müde | (er säit, (dass)) Si seged müed | B1, Formal, Indirect speech |
| (él dice que) él está cansado | (he says that) he is tired | (li diras, ke) li estas laca / (li diras, ke) li lacas | (er sagt, (dass)) er sei müde | (er säit, (dass)) er segi müed | B1, Indirect speech |
| (él dice que) ella está cansada | (he says that) she is tired | (li diras, ke) ŝi estas laca / (li diras, ke) ŝi lacas | (er sagt, (dass)) sie sei müde | (er säit, (dass)) si segi müed | B1, Indirect speech |
| (él dice que) está cansado | (he says that) it is tired | (li diras, ke) ĝi estas laca / (li diras, ke) ĝi lacas | (er sagt, (dass)) es sei müde | (er säit, (dass)) es segi müed | B1, Indirect speech |
| (él dice que) nosotros estamos cansados | (he says that) we are tired | (li diras, ke) ni estas lacaj / (li diras, ke) ni lacas | (er sagt, (dass)) wir seien müde | (er säit, (dass)) mir seged müed | B1, Indirect speech |
| (él dice que) nosotras estamos cansadas | (he says that) we are tired | (li diras, ke) ni estas lacaj / (li diras, ke) ni lacas | (er sagt, (dass)) wir seien müde | (er säit, (dass)) mir seged müed | B1, Indirect speech |
| (él dice que) vosotros estáis cansados | (he says that) you are tired | (li diras, ke) vi estas lacaj / (li diras, ke) vi lacas | (er sagt, (dass)) ihr seiet müde | (er säit, (dass)) ir seged müed | B1, Informal, Indirect speech |
| (él dice que) vosotras estáis cansadas | (he says that) you are tired | (li diras, ke) vi estas lacaj / (li diras, ke) vi lacas | (er sagt, (dass)) ihr seiet müde | (er säit, (dass)) ir seged müed | B1, Informal, Indirect speech |
| (él dice que) ustedes están cansados | (he says that) you are tired | (li diras, ke) vi estas lacaj / (li diras, ke) vi lacas | (er sagt, (dass)) Sie seien müde | (er säit, (dass)) Si seged müed | B1, Formal, Indirect speech |
| (él dice que) ustedes están cansadas | (he says that) you are tired | (li diras, ke) vi estas lacaj / (li diras, ke) vi lacas | (er sagt, (dass)) Sie seien müde | (er säit, (dass)) Si seged müed | B1, Formal, Indirect speech |
| (él dice que) ellos están cansados | (he says that) they are tired | (li diras, ke) ili estas lacaj / (li diras, ke) ili lacas | (er sagt, (dass)) sie seien müde | (er säit, (dass)) si seged müed | B1, Indirect speech |
| (él dice que) ellas están cansadas | (he says that) they are tired | (li diras, ke) ili estas lacaj / (li diras, ke) ili lacas | (er sagt, (dass)) sie seien müde | (er säit, (dass)) si seged müed | B1, Indirect speech |

### Verb "to become"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hacerse | to become | iĝi | werden | werde | A1, Infinitive |
| hecho | become | iĝita | geworden | gworde | A1, Past Participle |
| yo me hago grande | I become big | mi iĝas granda / mi grandiĝas | ich werde groß | ich wiirde grooss | A1, Present Simple |
| tú te haces grande | you become big | vi iĝas granda / vi grandiĝas | du wirst groß | du wiirsch grooss | A1, Informal, Present Simple |
| usted se hace grande | you become big | vi iĝas granda / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Simple |
| él se hace grande | he becomes big | li iĝas granda / li grandiĝas | er wird groß | er wiirt grooss | A1, Present Simple |
| ella se hace grande | she becomes big | ŝi iĝas granda / ŝi grandiĝas | sie wird groß | si wiirt grooss | A1, Present Simple |
| se hace grande | it becomes big | ĝi iĝas granda / ĝi grandiĝas | es wird groß | es wiirt grooss | A1, Present Simple |
| nosotros nos hacemos grandes | we become big | ni iĝas grandaj / ni grandiĝas | wir werden groß | mir werded grooss | A1, Present Simple |
| nosotras nos hacemos grandes | we become big | ni iĝas grandaj / ni grandiĝas | wir werden groß | mir werded grooss | A1, Present Simple |
| vosotros os hacéis grandes | you become big | vi iĝas grandaj / vi grandiĝas | ihr werdet groß | ir werded grooss | A1, Informal, Present Simple |
| vosotras os hacéis grandes | you become big | vi iĝas grandaj / vi grandiĝas | ihr werdet groß | ir werded grooss | A1, Informal, Present Simple |
| ustedes se hacen grandes | you become big | vi iĝas grandaj / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Simple |
| ustedes se hacen grandes | you become big | vi iĝas grandaj / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Simple |
| ellos se hacen grandes | they become big | ili iĝas grandaj / ili grandiĝas | sie werden groß | si werded grooss | A1, Present Simple |
| ellas se hacen grandes | they become big | ili iĝas grandaj / ili grandiĝas | sie werden groß | si werded grooss | A1, Present Simple |
| yo me estoy haciendo grande | I am becoming big | mi iĝas granda / mi grandiĝas | ich werde groß | ich wiirde grooss | A1, Present Continuous |
| tú te estás haciendo grande | you are becoming big | vi iĝas granda / vi grandiĝas | du wirst groß | du wiirsch grooss | A1, Informal, Present Continuous |
| usted se está haciendo grande | you are becoming big | vi iĝas granda / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Continuous |
| él se está haciendo grande | he is becoming big | li iĝas granda / li grandiĝas | er wird groß | er wiirt grooss | A1, Present Continuous |
| ella se está haciendo grande | she is becoming big | ŝi iĝas granda / ŝi grandiĝas | sie wird groß | si wiirt grooss | A1, Present Continuous |
| se está haciendo grande | it is becoming big | ĝi iĝas granda / ĝi grandiĝas | es wird groß | es wiirt grooss | A1, Present Continuous |
| nosotros nos estamos haciendo grandes | we are becoming big | ni iĝas grandaj / ni grandiĝas | wir werden groß | mir werded grooss | A1, Present Continuous |
| nosotras nos estamos haciendo grandes | we are becoming big | ni iĝas grandaj / ni grandiĝas | wir werden groß | mir werded grooss | A1, Present Continuous |
| vosotros os estáis haciendo grandes | you are becoming big | vi iĝas grandaj / vi grandiĝas | ihr werdet groß | ir werded grooss | A1, Informal, Present Continuous |
| vosotras os estáis haciendo grandes | you are becoming big | vi iĝas grandaj / vi grandiĝas | ihr werdet groß | ir werded grooss | A1, Informal, Present Continuous |
| ustedes se están haciendo grandes | you are becoming big | vi iĝas grandaj / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Continuous |
| ustedes se están haciendo grandes | you are becoming big | vi iĝas grandaj / vi grandiĝas | Sie werden groß | Si werded grooss | A1, Formal, Present Continuous |
| ellos se están haciendo grandes | they are becoming big | ili iĝas grandaj / ili grandiĝas | sie werden groß | si werded grooss | A1, Present Continuous |
| ellas se están haciendo grandes | they are becoming big | ili iĝas grandaj / ili grandiĝas | sie werden groß | si werded grooss | A1, Present Continuous |
| yo me hice grande | I became big | mi iĝis granda / mi grandiĝis | ich wurde groß |  | A1, Past Simple |
| tú te hiciste grande | you became big | vi iĝis granda / vi grandiĝis | du wurdest groß |  | A1, Informal, Past Simple |
| usted se hizo grande | you became big | vi iĝis granda / vi grandiĝis | Sie wurden groß |  | A1, Formal, Past Simple |
| él se hizo grande | he becames big | li iĝis granda / li grandiĝis | er wurde groß |  | A1, Past Simple |
| ella se hizo grande | she becames big | ŝi iĝis granda / ŝi grandiĝis | sie wurde groß |  | A1, Past Simple |
| se hizo grande | it becames big | ĝi iĝis granda / ĝi grandiĝis | es wurde groß |  | A1, Past Simple |
| nosotros nos hicimos grandes | we became big | ni iĝis grandaj / ni grandiĝis | wir wurden groß |  | A1, Past Simple |
| nosotras nos hicimos grandes | we became big | ni iĝis grandaj / ni grandiĝis | wir wurden groß |  | A1, Past Simple |
| vosotros os hicísteis grandes | you became big | vi iĝis grandaj / vi grandiĝis | ihr wurdet groß |  | A1, Informal, Past Simple |
| vosotras os hicísteis grandes | you became big | vi iĝis grandaj / vi grandiĝis | ihr wurdet groß |  | A1, Informal, Past Simple |
| ustedes se hicieron grandes | you became big | vi iĝis grandaj / vi grandiĝis | Sie wurden groß |  | A1, Formal, Past Simple |
| ustedes se hicieron grandes | you became big | vi iĝis grandaj / vi grandiĝis | Sie wurden groß |  | A1, Formal, Past Simple |
| ellos se hicieron grandes | they became big | ili iĝis grandaj / ili grandiĝis | sie wurden groß |  | A1, Past Simple |
| ellas se hicieron grandes | they became big | ili iĝis grandaj / ili grandiĝis | sie wurden groß |  | A1, Past Simple |
| yo me he hecho grande | I've become big |  | ich bin groß geworden | ich bi grooss gworde | A1, Past Perfect |
| tú te has hecho grande | you've become big |  | du bist groß geworden | du bisch grooss gworde | A1, Informal, Past Perfect |
| usted se ha hecho grande | you've become big |  | Sie sind groß geworden | Si sind grooss gworde | A1, Formal, Past Perfect |
| él se ha hecho grande | he has become big |  | er ist groß geworden | er isch grooss gworde | A1, Past Perfect |
| ella se ha hecho grande | she has become big |  | sie ist groß geworden | si isch grooss gworde | A1, Past Perfect |
| se ha hecho grande | it has become big |  | es ist groß geworden | es isch grooss gworde | A1, Past Perfect |
| nosotros nos hemos hecho grandes | we've become big |  | wir sind groß geworden | mir sind grooss gworde | A1, Past Perfect |
| nosotras nos hemos hecho grandes | we've become big |  | wir sind groß geworden | mir sind grooss gworde | A1, Past Perfect |
| vosotros os habéis hecho grandes | you've become big |  | ihr seid groß geworden | ir sind grooss gworde | A1, Informal, Past Perfect |
| vosotras os habéis hecho grandes | you've become big |  | ihr seid groß geworden | ir sind grooss gworde | A1, Informal, Past Perfect |
| ustedes se han hecho grandes | you've become big |  | Sie sind groß geworden | Si sind grooss gworde | A1, Formal, Past Perfect |
| ustedes se han hecho grandes | you've become big |  | Sie sind groß geworden | Si sind grooss gworde | A1, Formal, Past Perfect |
| ellos se han hecho grandes | they've become big |  | sie sind groß geworden | si sind grooss gworde | A1, Past Perfect |
| ellas se han hecho grandes | they've become big |  | sie sind groß geworden | si sind grooss gworde | A1, Past Perfect |
| yo me haré grande | I will become big | mi iĝos granda / mi grandiĝos | ich werde groß | ich wiirde (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| tú te harás grande | you will become big | vi iĝos granda / vi grandiĝos | du wirst groß | du wiirsch (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| usted se hará grande | you will become big | vi iĝos granda / vi grandiĝos | Sie werden groß | Si werded (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| él se hará grande | he will becomes big | li iĝos granda / li grandiĝos | er wird groß | er wiirt (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| ella se hará grande | she will becomes big | ŝi iĝos granda / ŝi grandiĝos | sie wird groß | si wiirt (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| se hará grande | it will becomes big | ĝi iĝos granda / ĝi grandiĝos | es wird groß | es wiirt (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| nosotros nos haremos grandes | we will become big | ni iĝos grandaj / ni grandiĝos | wir werden groß | mir werded (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| nosotras nos haremos grandes | we will become big | ni iĝos grandaj / ni grandiĝos | wir werden groß | mir werded (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| vosotros os haréis grandes | you will become big | vi iĝos grandaj / vi grandiĝos | ihr werden groß | ir werded (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| vosotras os haréis grandes | you will become big | vi iĝos grandaj / vi grandiĝos | ihr werden groß | ir werded (Zuekunft Ziitadverb) grooss | A2, Informal, Future Simple |
| ustedes se han harán grandes | you will become big | vi iĝos grandaj / vi grandiĝos | Sie werden groß | Si werded (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| ustedes se han harán grandes | you will become big | vi iĝos grandaj / vi grandiĝos | Sie werden groß | Si werded (Zuekunft Ziitadverb) grooss | A2, Formal, Future Simple |
| ellos se harán grandes | they will become big | ili iĝos grandaj / ili grandiĝos | sie werden groß | si werded (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| ellas se harán grandes | they will become big | ili iĝos grandaj / ili grandiĝos | sie werden groß | si werded (Zuekunft Ziitadverb) grooss | A2, Future Simple |
| hazte grande! | become big! | iĝu granda! | werde groß! | wird groß! | A2, Informal, Imperative |
| hágase grande! | become big! | iĝu granda! | werden Sie groß! | werded Si groß! | A2, Formal, Imperative |
| hagámosnos grandes! | let's become big! | ni iĝu grandaj! | werden groß! | werded groß! | A2, Imperative |
| háganse grandes! | become big! | iĝu grandaj! | werdet groß! | werded groß! | A2, Informal, Imperative |
| haceros grandes! | become big! | iĝu grandaj! | werden Sie groß! | werded Si groß! | A2, Formal, Imperative |
| si yo me hiciera grande / si yo me hiciese grande | were I to become big / was I to become big / if I became big | se mi iĝus granda / se mi grandiĝus | wenn ich groß würde | wänn ich grooss wüür(d) | B1, Condition |
| si tú te hicieras grande / si tú te hicieses grande | were you to become big / if you became big | se vi iĝus granda / se vi grandiĝus | wenn du groß würdest | wänn du grooss wüür(d)sch | B1, Informal, Condition |
| si usted se hiciera grande / si usted se hiciese grande | were you to become big / if you became big | se vi iĝus granda / se vi grandiĝus | wenn Sie groß würden | wänn Si grooss wüür(d)ed | B1, Formal, Condition |
| si él se hiciera grande / si él se hiciese grande | were he to become big / was he to become big / if he became big | se li iĝus granda / se li grandiĝus | wenn er groß würde | wänn er grooss wüür(d) | B1, Condition |
| si ella se hiciera grande / si ella se hiciese grande | were she to become big / was she to become big / if she became big | se ŝi iĝus granda / se ŝi grandiĝus | wenn sie groß würde | wänn si grooss wüür(d) | B1, Condition |
| si se hiciera grande / si se hiciese grande | were it to become big / was it to become big / if it became big | se ĝi iĝus granda / se ĝi grandiĝus | wenn es groß würde | wänn es grooss wüür(d) | B1, Condition |
| si nosotros nos hiciéramos grandes / si nosotros nos hiciésemos grandes | were we to become big / if we became big | se ni iĝus grandaj / se ni grandiĝus | wenn wir groß würden | wänn mir grooss wüür(d)ed | B1, Condition |
| si nosotras nos hiciéramos grandes / si nosotras nos hiciésemos grandes | were we to become big / if we became big | se ni iĝus grandaj / se ni grandiĝus | wenn wir groß würden | wänn mir grooss wüür(d)ed | B1, Condition |
| si vosotros os hiciérais grandes / si vosotros os hiciéseis grandes | were you to become big / if you became big | se vi iĝus grandaj / se vi grandiĝus | wenn ihr groß würdet | wänn ir grooss wüür(d)ed | B1, Informal, Condition |
| si vosotras os hiciérais grandes / si vosotras os hiciéseis grandes | were you to become big / if you became big | se vi iĝus grandaj / se vi grandiĝus | wenn ihr groß würdet | wänn ir grooss wüür(d)ed | B1, Informal, Condition |
| si ustedes se hicieran grandes / si ustedes se hiciesen grandes | were you to become big / if you became big | se vi iĝus grandaj / se vi grandiĝus | wenn Sie groß würden | wänn Si grooss wüür(d)ed | B1, Formal, Condition |
| si ustedes se hicieran grandes / si ustedes se hiciesen grandes | were you to become big / if you became big | se vi iĝus grandaj / se vi grandiĝus | wenn Sie groß würden | wänn Si grooss wüür(d)ed | B1, Formal, Condition |
| si ellos se hicieran grandes / si ellos se hiciesen grandes | were they to become big / if they became big | se ili iĝus grandaj / se ili grandiĝus | wenn sie groß würden | wänn si grooss wüür(d)ed | B1, Condition |
| si ellas se hicieran grandes / si ellas se hiciesen grandes | were they to become big / if they became big | se ili iĝus grandaj / se ili grandiĝus | wenn sie groß würden | wänn si grooss wüür(d)ed | B1, Condition |
| yo me haría grande | I would become big | mi iĝus granda / mi grandiĝus | ich würde groß | ich wüür(d) grooss | B1, Conditioned |
| tú te harías grande | you would become big | vi iĝus granda / vi grandiĝus | du würdest groß | du wüür(d)sch grooss | B1, Informal, Conditioned |
| usted se haría grande | you would become big | vi iĝus granda / vi grandiĝus | Sie würden groß | Si wüür(d)ed grooss | B1, Formal, Conditioned |
| él se haría grande | he would become big | li iĝus granda / li grandiĝus | er würde groß | er wüür(d) grooss | B1, Conditioned |
| ella se haría grande | she would become big | ŝi iĝus granda / ŝi grandiĝus | sie würde groß | si wüür(d) grooss | B1, Conditioned |
| se haría grande | it would become big | ĝi iĝus granda / ĝi grandiĝus | es würde groß | es wüür(d) grooss | B1, Conditioned |
| nosotros nos haríamos grandes | we would become big | ni iĝus grandaj / ni grandiĝus | wir würden groß | mir wüür(d)ed grooss | B1, Conditioned |
| nosotras nos haríamos grandes | we would become big | ni iĝus grandaj / ni grandiĝus | wir würden groß | mir wüür(d)ed grooss | B1, Conditioned |
| vosotros os haríais grandes | you would become big | vi iĝus grandaj / vi grandiĝus | ihr würdet groß | ir wüür(d)ed grooss | B1, Informal, Conditioned |
| vosotras os haríais grandes | you would become big | vi iĝus grandaj / vi grandiĝus | ihr würdet groß | ir wüür(d)ed grooss | B1, Informal, Conditioned |
| ustedes se harían grandes | you would become big | vi iĝus grandaj / vi grandiĝus | Sie würden groß | Si wüür(d)ed grooss | B1, Formal, Conditioned |
| ustedes se harían grandes | you would become big | vi iĝus grandaj / vi grandiĝus | Sie würden groß | Si wüür(d)ed grooss | B1, Formal, Conditioned |
| ellos se harían grandes | they would become big | ili iĝus grandaj / ili grandiĝus | sie würden groß | si wüür(d)ed grooss | B1, Conditioned |
| ellas se harían grandes | they would become big | ili iĝus grandaj / ili grandiĝus | sie würden groß | si wüür(d)ed grooss | B1, Conditioned |
| (él dice que) yo me hago grande | (he says that) I become big | (li diras, ke) mi iĝas granda / (li diras, ke) mi grandiĝas | (er sagt, (dass)) ich werde groß | (er säit, (dass)) ich weerdi grooss / (er säit, (dass)) ich wiirdi grooss | B1, Indirect speech |
| (él dice que) tú te haces grande | (he says that) you become big | (li diras, ke) vi iĝas granda / (li diras, ke) vi grandiĝas | (er sagt, (dass)) du werdest groß | (er säit, (dass)) du weerdisch grooss / (er säit, (dass)) du wiirdisch grooss | B1, Informal, Indirect speech |
| (él dice que) usted se hace grande | (he says that) you become big | (li diras, ke) vi iĝas granda / (li diras, ke) vi grandiĝas | (er sagt, (dass)) Sie werde groß | (er säit, (dass)) Si weerded grooss / (er säit, (dass)) Si wiirded grooss | B1, Formal, Indirect speech |
| (él dice que) él se hace grande | (he says that) he becomes big | (li diras, ke) li iĝas granda / (li diras, ke) li grandiĝas | (er sagt, (dass)) er werde groß | (er säit, (dass)) er weerdi grooss / (er säit, (dass)) er wiirdi grooss | B1, Indirect speech |
| (él dice que) ella se hace grande | (he says that) she becomes big | (li diras, ke) ŝi iĝas granda / (li diras, ke) ŝi grandiĝas | (er sagt, (dass)) sie werd groß | (er säit, (dass)) si weerdi grooss / (er säit, (dass)) si wiirdi grooss | B1, Indirect speech |
| (él dice que) se hace grande | (he says that) it becomes big | (li diras, ke) ĝi iĝas granda / (li diras, ke) ĝi grandiĝas | (er sagt, (dass)) es werd groß | (er säit, (dass)) es weerdi grooss / (er säit, (dass)) es wiirdi grooss | B1, Indirect speech |
| (él dice que) nosotros nos hacemos grandes | (he says that) we become big | (li diras, ke) ni iĝas grandaj / (li diras, ke) ni grandiĝas | (er sagt, (dass)) wir werden groß | (er säit, (dass)) mir weerded grooss / (er säit, (dass)) mir wiirded grooss | B1, Indirect speech |
| (él dice que) nosotras nos hacemos grandes | (he says that) we become big | (li diras, ke) ni iĝas grandaj / (li diras, ke) ni grandiĝas | (er sagt, (dass)) wir werden groß | (er säit, (dass)) mir weerded grooss / (er säit, (dass)) mir wiirded grooss | B1, Indirect speech |
| (él dice que) vosotros os hacéis grandes | (he says that) you become big | (li diras, ke) vi iĝas grandaj / (li diras, ke) vi grandiĝas | (er sagt, (dass)) ihr werdet groß | (er säit, (dass)) ir weerded grooss / (er säit, (dass)) ir wiirded grooss | B1, Informal, Indirect speech |
| (él dice que) vosotras os hacéis grandes | (he says that) you become big | (li diras, ke) vi iĝas grandaj / (li diras, ke) vi grandiĝas | (er sagt, (dass)) ihr werdet groß | (er säit, (dass)) ir weerded grooss / (er säit, (dass)) ir wiirded grooss | B1, Informal, Indirect speech |
| (él dice que) ustedes se hacen grandes | (he says that) you become big | (li diras, ke) vi iĝas grandaj / (li diras, ke) vi grandiĝas | (er sagt, (dass)) Sie werden groß | (er säit, (dass)) Si weerded grooss / (er säit, (dass)) Si wiirded grooss | B1, Formal, Indirect speech |
| (él dice que) ustedes se hacen grandes | (he says that) you become big | (li diras, ke) vi iĝas grandaj / (li diras, ke) vi grandiĝas | (er sagt, (dass)) Sie werden groß | (er säit, (dass)) Si weerded grooss / (er säit, (dass)) Si wiirded grooss | B1, Formal, Indirect speech |
| (él dice que) ellos se hacen grandes | (he says that) they become big | (li diras, ke) ili iĝas grandaj / (li diras, ke) ili grandiĝas | (er sagt, (dass)) sie werden groß | (er säit, (dass)) si weerded grooss / (er säit, (dass)) si wiirded grooss | B1, Indirect speech |
| (él dice que) ellas se hacen grandes | (he says that) they become big | (li diras, ke) ili iĝas grandaj / (li diras, ke) ili grandiĝas | (er sagt, (dass)) sie werden groß | (er säit, (dass)) si weerded grooss / (er säit, (dass)) si wiirded grooss | B1, Indirect speech |

### Verb "to may"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tener permiso para | to may / to be allowed to | rajti | dürfen | dörfe | A1, Infinitive |
| tenido permiso para | been allowed to | rajtita |  |  | A1, Past Participle |
| yo tengo permiso | I may | mi rajtas | ich darf | ich dörf | A1, Present Simple |
| tú tienes permiso | you may | vi rajtas | du darfst | du dörfsch | A1, Informal, Present Simple |
| usted tiene permiso | you may | vi rajtas | Sie dürfen | Si dörfed | A1, Formal, Present Simple |
| él tiene permiso | he may | li rajtas | er darf | er dörf | A1, Present Simple |
| ella tiene permiso | she may | ŝi rajtas | sie darf | si dörf | A1, Present Simple |
| tiene permiso | it may | ĝi rajtas | es darf | es dörf | A1, Present Simple |
| nosotros tenemos permiso | we may | ni rajtas | wir dürfen | mir dörfed | A1, Present Simple |
| nosotras tenemos permiso | we may | ni rajtas | wir dürfen | mir dörfed | A1, Present Simple |
| vosotros tenéis permiso | you may | vi rajtas | ihr dürft | ir dörfed | A1, Informal, Present Simple |
| vosotras tenéis permiso | you may | vi rajtas | ihr dürft | ir dörfed | A1, Informal, Present Simple |
| ustedes tienen permiso | you may | vi rajtas | Sie dürfen | Si dörfed | A1, Formal, Present Simple |
| ustedes tienen permiso | you may | vi rajtas | Sie dürfen | Si dörfed | A1, Formal, Present Simple |
| ellos tienen permiso | they may | ili rajtas | sie dürfen | si dörfed | A1, Present Simple |
| ellas tienen permiso | they may | ili rajtas | sie dürfen | si dörfed | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo tenía permiso | I might | mi rajtis | ich durfte |  | A1, Past Simple |
| tú tenías permiso | you might | vi rajtis | du durftest |  | A1, Informal, Past Simple |
| usted tenía permiso | you might | vi rajtis | Sie durften |  | A1, Formal, Past Simple |
| él tenía permiso | he might | li rajtis | er durfte |  | A1, Past Simple |
| ella tenía permiso | she might | ŝi rajtis | sie durfte |  | A1, Past Simple |
| tenía permiso | it might | ĝi rajtis | es durfte |  | A1, Past Simple |
| nosotros teníamos permiso | we might | ni rajtis | wir durften |  | A1, Past Simple |
| nosotras teníamos permiso | we might | ni rajtis | wir durften |  | A1, Past Simple |
| vosotros teníais permiso | you might | vi rajtis | ihr durftet |  | A1, Informal, Past Simple |
| vosotras teníais permiso | you migthmight | vi rajtis | ihr durftet |  | A1, Informal, Past Simple |
| ustedes tenían permiso | you might | vi rajtis | Sie durften |  | A1, Formal, Past Simple |
| ustedes tenían permiso | you might | vi rajtis | Sie durften |  | A1, Formal, Past Simple |
| ellos tenían permiso | they might | ili rajtis | sie durften |  | A1, Past Simple |
| ellas tenían permiso | they might | ili rajtis | sie durften |  | A1, Past Simple |
| yo he tenido permiso | I have been allowed to |  |  |  | A1, Past Perfect |
| tú has tenido permiso | you have been allowed to |  |  |  | A1, Informal, Past Perfect |
| usted ha tenido permiso | you have been allowed to |  |  |  | A1, Formal, Past Perfect |
| él ha tenido permiso | he has been allowed to |  |  |  | A1, Past Perfect |
| ella ha tenido permiso | she has been allowed to |  |  |  | A1, Past Perfect |
| ha tenido permiso | it has been allowed to |  |  |  | A1, Past Perfect |
| nosotros hemos tenido permiso | we have been allowed to |  |  |  | A1, Past Perfect |
| nosotras hemos tenido permiso | we have been allowed to |  |  |  | A1, Past Perfect |
| vosotros habéis tenido permiso | you have been allowed to |  |  |  | A1, Informal, Past Perfect |
| vosotras habéis tenido permiso | you have been allowed to |  |  |  | A1, Informal, Past Perfect |
| ustedes han tenido permiso | you have been allowed to |  |  |  | A1, Formal, Past Perfect |
| ustedes han tenido permiso | you have been allowed to |  |  |  | A1, Formal, Past Perfect |
| ellos han tenido permiso | they have been allowed to |  |  |  | A1, Past Perfect |
| ellas han tenido permiso | they have been allowed to |  |  |  | A1, Past Perfect |
| yo tendré permiso | I will be allowed | mi rajtos |  |  | A2, Future Simple |
| tú tendrás permiso | you will be allowed | vi rajtos |  |  | A2, Informal, Future Simple |
| usted tendrá permiso | you will be allowed | vi rajtos |  |  | A2, Formal, Future Simple |
| él tendrá permiso | he will be allowed | li rajtos |  |  | A2, Future Simple |
| ella tendrá permiso | she will be allowed | ŝi rajtos |  |  | A2, Future Simple |
| tendrá permiso | it will be allowed | ĝi rajtos |  |  | A2, Future Simple |
| nosotros tendremos permiso | we will be allowed | ni rajtos |  |  | A2, Future Simple |
| nosotras tendremos permiso | we will be allowed | ni rajtos |  |  | A2, Future Simple |
| vosotros tendréis permiso | you will be allowed | vi rajtos |  |  | A2, Informal, Future Simple |
| vosotras tendréis permiso | you will be allowed | vi rajtos |  |  | A2, Informal, Future Simple |
| ustedes tendrán permiso | you will be allowed | vi rajtos |  |  | A2, Formal, Future Simple |
| ustedes tendrán permiso | you will be allowed | vi rajtos |  |  | A2, Formal, Future Simple |
| ellos tendrán permiso | they will be allowed | ili rajtos |  |  | A2, Future Simple |
| ellas tendrán permiso | they will be allowed | ili rajtos |  |  | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
| si yo tuviera permiso / si yo tuviese permiso | were I allowed / was I allowed / if I were allowed / if I was allowed | se mi rajtus | wenn ich dürfte | wänn ich därft(i) | B1, Condition |
| si tú tuvieras permiso / si tú tuvieses permiso | were you allowed / if you were allowed | se vi rajtus | wenn du dürftest | wänn du därft(i)sch | B1, Informal, Condition |
| si usted tuviera permiso / si usted tuviese permiso | were you allowed / if you were allowed | se vi rajtus | wenn Sie dürften | wänn Si därfted | B1, Formal, Condition |
| si él tuviera permiso / si él tuviese permiso | were he allowed / was he allowed / if he were allowed / if he was allowed | se li rajtus | wenn er dürfte | wänn er därft(i) | B1, Condition |
| si ella tuviera permiso / si ella tuviese permiso | were she allowed / was she allowed / if she were allowed / if she was allowed | se ŝi rajtus | wenn sie dürfte | wänn si därft(i) | B1, Condition |
| si tuviera permiso / si tuviese permiso | were it allowed / was it allowed / if it were allowed / if it was allowed | se ĝi rajtus | wenn es dürfte | wänn es därft(i) | B1, Condition |
| si nosotros tuviéramos permiso / si nosotros tuviésemos permiso | were we allowed / if we were allowed | se ni rajtus | wenn wir dürften | wänn mir därfted | B1, Condition |
| si nosotras tuviéramos permiso / si nosotras tuviésemos permiso | were we allowed / if we were allowed | se ni rajtus | wenn wir dürften | wänn mir därfted | B1, Condition |
| si vosotros tuviérais permiso / si vosotros tuviéseis permiso | were you allowed / if you were allowed | se vi rajtus | wenn ihr dürftet | wänn ir därfted | B1, Informal, Condition |
| si vosotras tuviérais permiso / si vosotras tuviéseis permiso | were you allowed / if you were allowed | se vi rajtus | wenn ihr dürftet | wänn ir därfted | B1, Informal, Condition |
| si ustedes tuvieran permiso / si ustedes tuviesen permiso | were you allowed / if you were allowed | se vi rajtus | wenn Sie dürften | wänn Si därfted | B1, Formal, Condition |
| si ustedes tuvieran permiso / si ustedes tuviesen permiso | were you allowed / if you were allowed | se vi rajtus | wenn Sie dürften | wänn Si därfted | B1, Formal, Condition |
| si ellos tuvieran permiso / si ellos tuviesen permiso | were they allowed / if they were allowed | se ili rajtus | wenn sie dürften | wänn si därfted | B1, Condition |
| si ellas tuvieran permiso / si ellas tuviesen permiso | were they allowed / if they were allowed | se ili rajtus | wenn sie dürften | wänn si därfted | B1, Condition |
| yo tendría permiso | I would be allowed | mi rajtus | ich dürfte | ich därft(i) | B1, Conditioned |
| tú tendrías permiso | you would be allowed | vi rajtus | du dürftest | du därft(i)sch | B1, Informal, Conditioned |
| usted tendría permiso | you would be allowed | vi rajtus | Sie alt dürften | Si därfted | B1, Formal, Conditioned |
| él tendría permiso | he would be allowed | li rajtus | er dürfte | er därft(i) | B1, Conditioned |
| ella tendría permiso | she would be allowed | ŝi rajtus | sie dürfte | si därft(i) | B1, Conditioned |
| tendría permiso | it would be allowed | ĝi rajtus | es dürfte | es därft(i) | B1, Conditioned |
| nosotros tendríamos permiso | we would be allowed | ni rajtus | wir dürften | mir därfted | B1, Conditioned |
| nosotras tendríamos permiso | we would be allowed | ni rajtus | wir dürften | mir därfted | B1, Conditioned |
| vosotros tendríais permiso | you would be allowed | vi rajtus | ihr dürftet | ir därfted | B1, Informal, Conditioned |
| vosotras tendríais permiso | you would be allowed | vi rajtus | ihr dürftet | ir därfted | B1, Informal, Conditioned |
| ustedes tendrían permiso | you would be allowed | vi rajtus | Sie dürften | Si därfted | B1, Formal, Conditioned |
| ustedes tendrían permiso | you would be allowed | vi rajtus | Sie dürften | Si därfted | B1, Formal, Conditioned |
| ellos tendrían permiso | they would be allowed | ili rajtus | sie dürften | si därfted | B1, Conditioned |
| ellas tendrían permiso | they would be allowed | ili rajtus | sie dürften | si därfted | B1, Conditioned |
| (él dice que) yo tengo permiso | (he says that) I may | (li diras, ke) mi rajtas | (er sagt, (dass)) ich dürfe | (er säit, (dass)) ich dörfi | B1, Indirect speech |
| (él dice que) tú tienes permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) du dürfest | (er säit, (dass)) du dörfisch | B1, Informal, Indirect speech |
| (él dice que) usted tiene permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) Sie dürfe | (er säit, (dass)) Si dörfed | B1, Formal, Indirect speech |
| (él dice que) él tiene permiso | (he says that) he may | (li diras, ke) li rajtas | (er sagt, (dass)) er dürfe | (er säit, (dass)) er dörfi | B1, Indirect speech |
| (él dice que) ella tiene permiso | (he says that) she may | (li diras, ke) ŝi rajtas | (er sagt, (dass)) sie dürf | (er säit, (dass)) si dörfi | B1, Indirect speech |
| (él dice que) tiene permiso | (he says that) it may | (li diras, ke) ĝi rajtas | (er sagt, (dass)) es dürf | (er säit, (dass)) es dörfi | B1, Indirect speech |
| (él dice que) nosotros tenemos permiso | (he says that) we may | (li diras, ke) ni rajtas | (er sagt, (dass)) wir dürfen | (er säit, (dass)) mir dörfed | B1, Indirect speech |
| (él dice que) nosotras tenemos permiso | (he says that) we may | (li diras, ke) ni rajtas | (er sagt, (dass)) wir dürfen | (er säit, (dass)) mir dörfed | B1, Indirect speech |
| (él dice que) vosotros tenéis permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) ihr dürfet | (er säit, (dass)) ir dörfed | B1, Informal, Indirect speech |
| (él dice que) vosotras tenéis permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) ihr dürfet | (er säit, (dass)) ir dörfed | B1, Informal, Indirect speech |
| (él dice que) ustedes tienen permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) Sie dürfen | (er säit, (dass)) Si dörfed | B1, Formal, Indirect speech |
| (él dice que) ustedes tienen permiso | (he says that) you may | (li diras, ke) vi rajtas | (er sagt, (dass)) Sie dürfen | (er säit, (dass)) Si dörfed | B1, Formal, Indirect speech |
| (él dice que) ellos tienen permiso | (he says that) they may | (li diras, ke) ili rajtas | (er sagt, (dass)) sie dürfen | (er säit, (dass)) si dörfed | B1, Indirect speech |
| (él dice que) ellas tienen permiso | (he says that) they may | (li diras, ke) ili rajtas | (er sagt, (dass)) sie dürfen | (er säit, (dass)) si dörfed | B1, Indirect speech |

### Verb: "to can"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| poder | to can / to be able | povi | können | chöne | A1, Infinitive |
| podido | was/were able | povita | gekonnt | chöne | A1, Past Participle |
| yo puedo | I can / I am able | mi povas | ich kann | ich cha / ich chan | A1, Present Simple |
| tú puedes | you can / you are able | vi povas | du kannst | du chasch | A1, Informal, Present Simple |
| usted puede | you can / you are able | vi povas | Sie können | Si chönd | A1, Formal, Present Simple |
| él puede | he can / he is able | li povas | er kann | er cha | A1, Present Simple |
| ella puede | she can / she is able | ŝi povas | sie kann | si cha | A1, Present Simple |
| puede | it can / it is able | ĝi povas | es kann | es cha | A1, Present Simple |
| nosotros podemos | we can / we are able | ni povas | wir können | mir chönd | A1, Present Simple |
| nosotras podemos | we can / we are able | ni povas | wir können | mir chönd | A1, Present Simple |
| vosotros podéis | you can / you are able | vi povas | ihr könnt | ir chönd | A1, Informal, Present Simple |
| vosotras podéis | you can / you are able | vi povas | ihr könnt | ir chönd | A1, Informal, Present Simple |
| ustedes pueden | you can / you are able | vi povas | Sie können | Si chönd | A1, Formal, Present Simple |
| ustedes pueden | you can / you are able | vi povas | Sie können | Si chönd | A1, Formal, Present Simple |
| ellos pueden | they can / they are able | ili povas | sie können | si chönd | A1, Present Simple |
| ellas pueden | they can / they are able | ili povas | sie können | si chönd | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo podía | I could / I was able | mi povis | ich konnte |  | A1, Past Simple |
| tú podías | you could / you were able | vi povis | du konntest |  | A1, Informal, Past Simple |
| usted podía | you could / you were able | vi povis | Sie konnten |  | A1, Formal, Past Simple |
| él podía | he could / he was able | li povis | er konnte |  | A1, Past Simple |
| ella podía | she could / she was able | ŝi povis | sie konnte |  | A1, Past Simple |
| podía | it could / it was able | ĝi povis | es konnte |  | A1, Past Simple |
| nosotros podíamos | we could / we were able | ni povis | wir konnten |  | A1, Past Simple |
| nosotras podíamos | we could / we were able | ni povis | wir konnten |  | A1, Past Simple |
| vosotros podíais | you could / you were able | vi povis | ihr konntet |  | A1, Informal, Past Simple |
| vosotras podíais | you could / you were able | vi povis | ihr konntet |  | A1, Informal, Past Simple |
| ustedes podían | you could / you were able | vi povis | Sie konnten |  | A1, Formal, Past Simple |
| ustedes podían | you could / you were able | vi povis | Sie konnten |  | A1, Formal, Past Simple |
| ellos podían | they could / they were able | ili povis | sie konnten |  | A1, Past Simple |
| ellas podían | they could / they were able | ili povis | sie konnten |  | A1, Past Simple |
| yo he podido | I have been able |  |  | ich han wele | A1, Past Perfect |
| tú has podido | you have been able |  |  | du häsch wele | A1, Informal, Past Perfect |
| usted ha podido | you have been able |  |  | Si händ wele | A1, Formal, Past Perfect |
| él ha podido | he has been able |  |  | er hät wele | A1, Past Perfect |
| ella ha podido | she has been able |  |  | si hät wele | A1, Past Perfect |
| ha podido | it has been able |  |  | es hät wele | A1, Past Perfect |
| nosotros hemos podido | we have been able |  |  | mir händ wele | A1, Past Perfect |
| nosotras hemos podido | we have been able |  |  | mir händ wele | A1, Past Perfect |
| vosotros habéis podido | you have been able |  |  | ir händ wele | A1, Informal, Past Perfect |
| vosotras habéis podido | you have been able |  |  | ir händ wele | A1, Informal, Past Perfect |
| ustedes han podido | you have been able |  |  | Si händ wele | A1, Formal, Past Perfect |
| ustedes han podido | you have been able |  |  | Si händ wele | A1, Formal, Past Perfect |
| ellos han podido | they have been able |  |  | si händ wele | A1, Past Perfect |
| ellas han podido | they have been able |  |  | si händ wele | A1, Past Perfect |
| yo podré | I will be able | mi povos |  |  | A2, Future Simple |
| tú podrás | you will be able | vi povos |  |  | A2, Informal, Future Simple |
| usted podrá | you will be able | vi povos |  |  | A2, Formal, Future Simple |
| él podrá | he will be able | li povos |  |  | A2, Future Simple |
| ella podrá | she will be able | ŝi povos |  |  | A2, Future Simple |
| podrá | it will be able | ĝi povos |  |  | A2, Future Simple |
| nosotros podremos | we will be able | ni povos |  |  | A2, Future Simple |
| nosotras podremos | we will be able | ni povos |  |  | A2, Future Simple |
| vosotros podréis | you will be able | vi povos |  |  | A2, Informal, Future Simple |
| vosotras podréis | you will be able | vi povos |  |  | A2, Informal, Future Simple |
| ustedes podrán | you will be able | vi povos |  |  | A2, Formal, Future Simple |
| ustedes podrán | you will be able | vi povos |  |  | A2, Formal, Future Simple |
| ellos podrán | they will be able | ili povos |  |  | A2, Future Simple |
| ellas podrán | they will be able | ili povos |  |  | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
| si yo pudiera / si yo pudiese | could I / if I could | se mi povus | wenn ich könnte | wänn ich chönt(i) | B1, Condition |
| si tú pudieras / si tú pudieses | could you / if you could | se vi povus | wenn du könntest | wänn du chönt(i)sch | B1, Informal, Condition |
| si usted pudiera / si usted pudiese | could you / if you could | se vi povus | wenn Sie könnten | wänn Si chönted | B1, Formal, Condition |
| si él pudiera / si él pudiese | could he / if he could | se li povus | wenn er könnte | wänn er chönt(i) | B1, Condition |
| si ella pudiera / si ella pudiese | could she / if she could | se ŝi povus | wenn sie könnte | wänn si chönt(i) | B1, Condition |
| si pudiera / si pudiese | could it / if it could | se ĝi povus | wenn es könnte | wänn es chönt(i) | B1, Condition |
| si nosotros pudiéramos / si nosotros pudiésemos | could we / if we could | se ni povus | wenn wir könnten | wänn mir chönted | B1, Condition |
| si nosotras pudiéramos / si nosotras pudiésemos | could we / if we could | se ni povus | wenn wir könnten | wänn mir chönted | B1, Condition |
| si vosotros pudiérais / si vosotros pudiéseis | could you / if you could | se vi povus | wenn ihr könntet | wänn ir chönted | B1, Informal, Condition |
| si vosotras pudiérais / si vosotras pudiéseis | could you / if you could | se vi povus | wenn ihr könntet | wänn ir chönted | B1, Informal, Condition |
| si ustedes pudieran / si ustedes pudiesen | could you / if you could | se vi povus | wenn Sie könnten | wänn Si chönted | B1, Formal, Condition |
| si ustedes pudieran / si ustedes pudiesen | could you / if you could | se vi povus | wenn Sie könnten | wänn Si chönted | B1, Formal, Condition |
| si ellos pudieran / si ellos pudiesen | could they / if they could | se ili povus | wenn sie könnten | wänn si chönted | B1, Condition |
| si ellas pudieran / si ellas pudiesen | could they / if they could | se ili povus | wenn sie könnten | wänn si chönted | B1, Condition |
| yo podría | I could | mi povus | ich könnte | ich chönt(i) | B1, Conditioned |
| tú podrías | you could | vi povus | du könntest | du chönt(i)sch | B1, Informal, Conditioned |
| usted podría | you could | vi povus | Sie alt könnten | Si chönted | B1, Formal, Conditioned |
| él podría | he could | li povus | er könnte | er chönt(i) | B1, Conditioned |
| ella podría | she could | ŝi povus | sie könnte | si chönt(i) | B1, Conditioned |
| podría | it could | ĝi povus | es könnte | es chönt(i) | B1, Conditioned |
| nosotros podríamos | we could | ni povus | wir könnten | mir chönted | B1, Conditioned |
| nosotras podríamos | we could | ni povus | wir könnten | mir chönted | B1, Conditioned |
| vosotros podríais | you could | vi povus | ihr könntet | ir chönted | B1, Informal, Conditioned |
| vosotras podríais | you could | vi povus | ihr könntet | ir chönted | B1, Informal, Conditioned |
| ustedes podrían | you could | vi povus | Sie könnten | Si chönted | B1, Formal, Conditioned |
| ustedes podrían | you could | vi povus | Sie könnten | Si chönted | B1, Formal, Conditioned |
| ellos podrían | they could | ili povus | sie könnten | si chönted | B1, Conditioned |
| ellas podrían | they could | ili povus | sie könnten | si chönted | B1, Conditioned |
| (él dice que) yo puedo | (he says that) I can / I am able | (li diras, ke) mi povas | (er sagt, (dass)) ich könne | (er säit, (dass)) ich chöni | B1, Indirect speech |
| (él dice que) tú puedes | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) du könnest | (er säit, (dass)) du chönisch | B1, Informal, Indirect speech |
| (él dice que) usted puede | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) Sie könne | (er säit, (dass)) Si chöned | B1, Formal, Indirect speech |
| (él dice que) él puede | (he says that) he can / he is able | (li diras, ke) li povas | (er sagt, (dass)) er könne | (er säit, (dass)) er chöni | B1, Indirect speech |
| (él dice que) ella puede | (he says that) she can / she is able | (li diras, ke) ŝi povas | (er sagt, (dass)) sie könn | (er säit, (dass)) si chöni | B1, Indirect speech |
| (él dice que) puede | (he says that) it can / it is able | (li diras, ke) ĝi povas | (er sagt, (dass)) es könn | (er säit, (dass)) es chöni | B1, Indirect speech |
| (él dice que) nosotros podemos | (he says that) we can / we are able | (li diras, ke) ni povas | (er sagt, (dass)) wir können | (er säit, (dass)) mir chöned | B1, Indirect speech |
| (él dice que) nosotras podemos | (he says that) we can / we are able | (li diras, ke) ni povas | (er sagt, (dass)) wir können | (er säit, (dass)) mir chöned | B1, Indirect speech |
| (él dice que) vosotros podéis | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) ihr könnet | (er säit, (dass)) ir chöned | B1, Informal, Indirect speech |
| (él dice que) vosotras podéis | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) ihr könnet | (er säit, (dass)) ir chöned | B1, Informal, Indirect speech |
| (él dice que) ustedes pueden | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) Sie können | (er säit, (dass)) Si chöned | B1, Formal, Indirect speech |
| (él dice que) ustedes pueden | (he says that) you can / you are able | (li diras, ke) vi povas | (er sagt, (dass)) Sie können | (er säit, (dass)) Si chöned | B1, Formal, Indirect speech |
| (él dice que) ellos pueden | (he says that) they can / they are able | (li diras, ke) ili povas | (er sagt, (dass)) sie können | (er säit, (dass)) si chöned | B1, Indirect speech |
| (él dice que) ellas pueden | (he says that) they can / they are able | (li diras, ke) ili povas | (er sagt, (dass)) sie können | (er säit, (dass)) si chöned | B1, Indirect speech |

### Verb "to shall"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| deber | to shall | devi | sollen | söle | A1, Infinitive, soft necessity / suggestion |
| debido |  | devita |  |  | A1, Past Participle |
| yo debo | I shall | mi devas | ich soll | ich söll | A1, Present Simple |
| tú debes | you shall | vi devas | du sollst | du sölsch | A1, Informal, Present Simple |
| usted debe | you shall | vi devas | Sie sollen | Si söled | A1, Formal, Present Simple |
| él debe | he shall | li devas | er soll | er söll | A1, Present Simple |
| ella debe | she shall | ŝi devas | sie soll | si söll | A1, Present Simple |
| debe | it shall | ĝi devas | es soll | es söll | A1, Present Simple |
| nosotros debemos | we shall | ni devas | wir sollen | mir söled | A1, Present Simple |
| nosotras debemos | we shall | ni devas | wir sollen | mir söled | A1, Present Simple |
| vosotros debéis | you shall | vi devas | ihr sollt | ir söled | A1, Informal, Present Simple |
| vosotras debéis | you shall | vi devas | ihr sollt | ir söled | A1, Informal, Present Simple |
| ustedes deben | you shall | vi devas | Sie sollen | Si söled | A1, Formal, Present Simple |
| ustedes deben | you shall | vi devas | Sie sollen | Si söled | A1, Formal, Present Simple |
| ellos deben | they shall | ili devas | sie sollen | si söled | A1, Present Simple |
| ellas deben | they shall | ili devas | sie sollen | si söled | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo debía | I should | mi devis | ich sollte |  | A1, Past Simple |
| tú debías | you should | vi devis | du solltest |  | A1, Informal, Past Simple |
| usted debía | you should | vi devis | Sie sollten |  | A1, Formal, Past Simple |
| él debía | he should | li devis | er sollte |  | A1, Past Simple |
| ella debía | she should | ŝi devis | sie sollte |  | A1, Past Simple |
| debía | it should | ĝi devis | es sollte |  | A1, Past Simple |
| nosotros debíamos | we should | ni devis | wir sollten |  | A1, Past Simple |
| nosotras debíamos | we should | ni devis | wir sollten |  | A1, Past Simple |
| vosotros debíais | you should | vi devis | ihr solltet |  | A1, Informal, Past Simple |
| vosotras debíais | you should | vi devis | ihr solltet |  | A1, Informal, Past Simple |
| ustedes debían | you should | vi devis | Sie sollten |  | A1, Formal, Past Simple |
| ustedes debían | you should | vi devis | Sie sollten |  | A1, Formal, Past Simple |
| ellos debían | they should | ili devis | sie sollten |  | A1, Past Simple |
| ellas debían | they should | ili devis | sie sollten |  | A1, Past Simple |
| yo he debido |  |  |  |  | A1, Past Perfect |
| tú has debido |  |  |  |  | A1, Informal, Past Perfect |
| usted ha debido |  |  |  |  | A1, Formal, Past Perfect |
| él ha debido |  |  |  |  | A1, Past Perfect |
| ella ha debido |  |  |  |  | A1, Past Perfect |
| ha debido |  |  |  |  | A1, Past Perfect |
| nosotros hemos debido |  |  |  |  | A1, Past Perfect |
| nosotras hemos debido |  |  |  |  | A1, Past Perfect |
| vosotros habéis debido |  |  |  |  | A1, Informal, Past Perfect |
| vosotras habéis debido |  |  |  |  | A1, Informal, Past Perfect |
| ustedes han debido |  |  |  |  | A1, Formal, Past Perfect |
| ustedes han debido |  |  |  |  | A1, Formal, Past Perfect |
| ellos han debido |  |  |  |  | A1, Past Perfect |
| ellas han debido |  |  |  |  | A1, Past Perfect |
| yo deberé |  | mi devos |  |  | A2, Future Simple |
| tú deberás |  | vi devos |  |  | A2, Informal, Future Simple |
| usted deberá |  | vi devos |  |  | A2, Formal, Future Simple |
| él deberá |  | li devos |  |  | A2, Future Simple |
| ella deberá |  | ŝi devos |  |  | A2, Future Simple |
| deberá |  | ĝi devos |  |  | A2, Future Simple |
| nosotros deberemos |  | ni devos |  |  | A2, Future Simple |
| nosotras deberemos |  | ni devos |  |  | A2, Future Simple |
| vosotros deberéis |  | vi devos |  |  | A2, Informal, Future Simple |
| vosotras deberéis |  | vi devos |  |  | A2, Informal, Future Simple |
| ustedes deberán |  | vi devos |  |  | A2, Formal, Future Simple |
| ustedes deberán |  | vi devos |  |  | A2, Formal, Future Simple |
| ellos deberán |  | ili devos |  |  | A2, Future Simple |
| ellas deberán |  | ili devos |  |  | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Informal, Condition |
|  |  |  |  |  | B1, Formal, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Informal, Condition |
|  |  |  |  |  | B1, Informal, Condition |
|  |  |  |  |  | B1, Formal, Condition |
|  |  |  |  |  | B1, Formal, Condition |
|  |  |  |  |  | B1, Condition |
|  |  |  |  |  | B1, Condition |
| yo debería | I should | mi devus | ich sollte | ich sött(i) | B1, Conditioned |
| tú deberías | you should | vi devus | du solltest | du sött(i)sch | B1, Informal, Conditioned |
| usted debería | you should | vi devus | Sie alt sollten | Si sötted | B1, Formal, Conditioned |
| él debería | he should | li devus | er sollte | er sött(i) | B1, Conditioned |
| ella debería | she should | ŝi devus | sie sollte | si sött(i) | B1, Conditioned |
| debería | it should | ĝi devus | es sollte | es sött(i) | B1, Conditioned |
| nosotros deberíamos | we should | ni devus | wir sollten | mir sötted | B1, Conditioned |
| nosotras deberíamos | we should | ni devus | wir sollten | mir sötted | B1, Conditioned |
| vosotros deberíais | you should | vi devus | ihr solltet | ir sötted | B1, Informal, Conditioned |
| vosotras deberíais | you should | vi devus | ihr solltet | ir sötted | B1, Informal, Conditioned |
| ustedes deberían | you should | vi devus | Sie sollten | Si sötted | B1, Formal, Conditioned |
| ustedes deberían | you should | vi devus | Sie sollten | Si sötted | B1, Formal, Conditioned |
| ellos deberían | they should | ili devus | sie sollten | si sötted | B1, Conditioned |
| ellas deberían | they should | ili devus | sie sollten | si sötted | B1, Conditioned |
| (él dice que) yo debo | (he says that) I shall | (li diras, ke) mi devas | (er sagt, (dass)) ich solle | (er säit, (dass)) ich söll / (er säit, (dass)) ich sött | B1, Indirect speech |
| (él dice que) tú debes | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) du sollest | (er säit, (dass)) du söllsch / (er säit, (dass)) du söttsch | B1, Informal, Indirect speech |
| (él dice que) usted debe | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) Sie solle | (er säit, (dass)) Si sölled / (er säit, (dass)) Si sötted | B1, Formal, Indirect speech |
| (él dice que) él debe | (he says that) he shall | (li diras, ke) li devas | (er sagt, (dass)) er solle | (er säit, (dass)) er söll / (er säit, (dass)) er sött | B1, Indirect speech |
| (él dice que) ella debe | (he says that) she shall | (li diras, ke) ŝi devas | (er sagt, (dass)) sie soll | (er säit, (dass)) si söll / (er säit, (dass)) si sött | B1, Indirect speech |
| (él dice que) debe | (he says that) it shall | (li diras, ke) ĝi devas | (er sagt, (dass)) es soll | (er säit, (dass)) es söll / (er säit, (dass)) es sött | B1, Indirect speech |
| (él dice que) nosotros debemos | (he says that) we shall | (li diras, ke) ni devas | (er sagt, (dass)) wir sollen | (er säit, (dass)) mir sölled / (er säit, (dass)) mir sötted | B1, Indirect speech |
| (él dice que) nosotras debemos | (he says that) we shall | (li diras, ke) ni devas | (er sagt, (dass)) wir sollen | (er säit, (dass)) mir sölled / (er säit, (dass)) mir sötted | B1, Indirect speech |
| (él dice que) vosotros debéis | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) ihr sollet | (er säit, (dass)) ir sölled / (er säit, (dass)) ir sötted | B1, Informal, Indirect speech |
| (él dice que) vosotras debéis | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) ihr sollet | (er säit, (dass)) ir sölled / (er säit, (dass)) ir sötted | B1, Informal, Indirect speech |
| (él dice que) ustedes deben | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) Sie sollen | (er säit, (dass)) Si sölled / (er säit, (dass)) Si sötted | B1, Formal, Indirect speech |
| (él dice que) ustedes deben | (he says that) you shall | (li diras, ke) vi devas | (er sagt, (dass)) Sie sollen | (er säit, (dass)) Si sölled / (er säit, (dass)) Si sötted | B1, Formal, Indirect speech |
| (él dice que) ellos deben | (he says that) they shall | (li diras, ke) ili devas | (er sagt, (dass)) sie sollen | (er säit, (dass)) si sölled / (er säit, (dass)) si sötted | B1, Indirect speech |
| (él dice que) ellas deben | (he says that) they shall | (li diras, ke) ili devas | (er sagt, (dass)) sie sollen | (er säit, (dass)) si sölled / (er säit, (dass)) si sötted | B1, Indirect speech |

### Verb "to must"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| deber / tener que | to must / to have to / to ought to | devi | müssen | müese | A1, Infinitive, hard necessity |
| debido | had to / oughted to | devita | müssen | müese | A1, Past Participle |
| yo debo / yo tengo que | I must / I have to / I ought to | mi devas | ich muss | ich mues | A1, Present Simple |
| tú debes / tú tienes que | you must / you have to / you ought to | vi devas | du musst | du muesch | A1, Informal, Present Simple |
| usted debe / usted tiene que | you must / you have to / you ought to | vi devas | Sie müssen | Si müend | A1, Formal, Present Simple |
| él debe / él tiene que | he must / he has to / he oughts to | li devas | er muss | er mues | A1, Present Simple |
| ella debe / ella tiene que | she must / she has to / she oughts to | ŝi devas | sie muss | si mues | A1, Present Simple |
| debe / tiene que | it must / it has to / it oughts to | ĝi devas | es muss | es mues | A1, Present Simple |
| nosotros debemos / nosotros tenemos que | we must / we have to / we ought to | ni devas | wir müssen | mir müend | A1, Present Simple |
| nosotras debemos / nosotras tenemos que | we must / we have to / we ought to | ni devas | wir müssen | mir müend | A1, Informal, Present Simple |
| vosotros debéis / vosotros tenéis que | you must / you have to / you ought to | vi devas | ihr müsst | ir müend | A1, Informal, Present Simple |
| vosotras debéis / vosotras tenéis que | you must / you have to / you ought to | vi devas | ihr müsst | ir müend | A1, Formal, Present Simple |
| ustedes deben / ustedes tienen que | you must / you have to / you ought to | vi devas | Sie müssen | Si müend | A1, Formal, Present Simple |
| ustedes deben / ustedes tienen que | you must / you have to / you ought to | vi devas | Sie müssen | Si müend | A1, Present Simple |
| ellos deben / ellos tienen que | they must / they have to / they ought to | ili devas | sie müssen | si müend | A1, Present Simple |
| ellas deben / ellas tienen que | they must / they have to / they ought to | ili devas | sie müssen | si müend | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo debía / yo tenía que | I must / I had to / I oughted to | mi devis | ich musste |  | A1, Past Simple |
| tú debías / tú tenías que | you must / you had to / you oughted to | vi devis | du musstest |  | A1, Informal, Past Simple |
| usted debía / usted tenía que | you must / you had to /you oughted to | vi devis | Sie mussten |  | A1, Formal, Past Simple |
| él debía / él tenía que | he must / he had to / he oughted to | li devis | er musste |  | A1, Past Simple |
| ella debía / ella tenía que | she must / she had to / she oughted to | ŝi devis | sie musste |  | A1, Past Simple |
| debía / tenía que | it must / it had to / it oughted to | ĝi devis | es musste |  | A1, Past Simple |
| nosotros debíamos / nosotros teníamos que | we must / we had to / we oughted to | ni devis | wir mussten |  | A1, Past Simple |
| nosotras debíamos / nosotras teníamos que | we must / we had to / we oughted to | ni devis | wir mussten |  | A1, Past Simple |
| vosotros debíais / vosotros teníais que | you must / you had to / you oughted to | vi devis | ihr musstet |  | A1, Informal, Past Simple |
| vosotras debíais / vosotras teníais que | you must / you had to / you oughted to | vi devis | ihr musstet |  | A1, Informal, Past Simple |
| ustedes debían / ustedes tenían que | you must / you had to / you oughted to | vi devis | Sie mussten |  | A1, Formal, Past Simple |
| ustedes debían / ustedes tenían que | you must / you had to / you oughted to | vi devis | Sie mussten |  | A1, Formal, Past Simple |
| ellos debían / ellos tenían que | they must / they had to / they oughted to | ili devis | sie mussten |  | A1, Past Simple |
| ellas debían / ellas tenían que | they must / they had to / they oughted to | ili devis | sie mussten |  | A1, Past Simple |
| yo he debido / yo he tenido que | had I to / oughted I to | se mi devus |  |  | A1, Past Perfect |
| tú has debido / tú has tenido que | had you to / oughted you to | se vi devus |  |  | A1, Informal, Past Perfect |
| usted ha debido / usted ha tenido que | had you to / oughted you to | se vi devus |  |  | A1, Formal, Past Perfect |
| él ha debido / él ha tenido que | had he to / oughted he to | se li devus |  |  | A1, Past Perfect |
| ella ha debido / ella ha tenido que | had she to / oughted she to | se ŝi devus |  |  | A1, Past Perfect |
| ha debido / ha tenido que | had it to / oughted it to | se ĝi devus |  |  | A1, Past Perfect |
| nosotros hemos debido / nosotros hemos tenido que | had we to / oughted we to | se ni devus |  |  | A1, Past Perfect |
| nosotras hemos debido / nosotras hemos tenido que | had we to / oughted we to | se ni devus |  |  | A1, Past Perfect |
| vosotros habéis debido / vosotros hemos tenido que | had you to / oughted you to | se vi devus |  |  | A1, Informal, Past Perfect |
| vosotras habéis debido / vosotras habéis tenido que | had you to / oughted you to | se vi devus |  |  | A1, Informal, Past Perfect |
| ustedes han debido / ustedes han tenido que | had you to / oughted you to | se vi devus |  |  | A1, Formal, Past Perfect |
| ustedes han debido / ustedes han tenido que | had you to / oughted you to | se vi devus |  |  | A1, Formal, Past Perfect |
| ellos han debido / ellos han tenido que | had they to / oughted they to | se ili devus |  |  | A1, Past Perfect |
| ellas han debido / ellas han tenido que | had they to / oughted they to | se ili devus |  |  | A1, Past Perfect |
| yo deberé / yo tendré que |  | mi devos |  |  | A2, Future Simple |
| tú deberás / tú tendrás que |  | vi devos |  |  | A2, Informal, Future Simple |
| usted deberá / usted tendrá que |  | vi devos |  |  | A2, Formal, Future Simple |
| él deberá / él tendrá que |  | li devos |  |  | A2, Future Simple |
| ella deberá / ella tendrá que |  | ŝi devos |  |  | A2, Future Simple |
| deberá / tendrá que |  | ĝi devos |  |  | A2, Future Simple |
| nosotros deberemos / nosotros tendremos que |  | ni devos |  |  | A2, Future Simple |
| nosotras deberemos / nosotras tendremos que |  | ni devos |  |  | A2, Future Simple |
| vosotros deberéis / vosotros tendréis que |  | vi devos |  |  | A2, Informal, Future Simple |
| vosotras deberéis / vosotras tendréis que |  | vi devos |  |  | A2, Informal, Future Simple |
| ustedes deberán / ustedes tendrán que |  | vi devos |  |  | A2, Formal, Future Simple |
| ustedes deberán / ustedes tendrán que |  | vi devos |  |  | A2, Formal, Future Simple |
| ellos deberán / ellos tendrán que |  | ili devos |  |  | A2, Future Simple |
| ellas deberán / ellas tendrán que |  | ili devos |  |  | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
| si yo tuviera que / si yo tuviese que |  |  | wenn ich müsste |  | B1, Condition |
| si tú tuvieras que / si tú tuvieses que |  |  | wenn du müsstest |  | B1, Informal, Condition |
| si usted tuviera que / si usted tuviese que |  |  | wenn Sie müssten |  | B1, Formal, Condition |
| si él tuviera que / si él tuviese que |  |  | wenn er müsste |  | B1, Condition |
| si ella tuviera que / si ella tuviese que |  |  | wenn sie müsste |  | B1, Condition |
| si tuviera que / si tuviese que |  |  | wenn es müsste |  | B1, Condition |
| si nosotros tuvieramos que / si nosotros tuviesemos que |  |  | wenn wir müssten |  | B1, Condition |
| si nosotras tuvieramos que / si nosotras tuviesemos que |  |  | wenn wir müssten |  | B1, Condition |
| si vosotros tuviérais que / si vosotros tuviéseis que |  |  | wenn ihr müsstet |  | B1, Informal, Condition |
| si vosotras tuviérais que / si vosotras tuviéseis que |  |  | wenn ihr müsstet |  | B1, Informal, Condition |
| si ustedes tuvieran que / si ustedes tuviesen que |  |  | wenn Sie müssten |  | B1, Formal, Condition |
| si ustedes tuvieran que / si ustedes tuviesen que |  |  | wenn Sie müssten |  | B1, Formal, Condition |
| si ellos tuvieran que / si ellos tuviesen que |  |  | wenn sie müssten |  | B1, Condition |
| si ellas tuvieran que / si ellas tuviesen que |  |  | wenn sie müssten |  | B1, Condition |
| yo debería / yo tendría que | I should | mi devus | ich müsste | ich müest(i) | B1, Conditioned |
| tú deberías / tú tendrías que | you should | vi devus | du müsstest | du müest(i)sch | B1, Informal, Conditioned |
| usted debería / usted tendría que | you should | vi devus | Sie alt müssten | Si müested | B1, Formal, Conditioned |
| él debería / él tendría que | he should | li devus | er müsste | er müest(i) | B1, Conditioned |
| ella debería / ella tendría que | she should | ŝi devus | sie müsste | si müest(i) | B1, Conditioned |
| debería / tendría que | it should | ĝi devus | es müsste | es müest(i) | B1, Conditioned |
| nosotros deberíamos / nosotros tendríamos que | we should | ni devus | wir müssten | mir müested | B1, Conditioned |
| nosotras deberíamos / nosotras tendríamos que | we should | ni devus | wir müssten | mir müested | B1, Conditioned |
| vosotros deberíamos / vosotros tendríamos que | you should | vi devus | ihr müsstet | ir müested | B1, Informal, Conditioned |
| vosotras deberíamos / vosotras tendríamos que | you should | vi devus | ihr müsstet | ir müested | B1, Informal, Conditioned |
| ustedes deberían / ustedes tendrían que | you should | vi devus | Sie müssten | Si müested | B1, Formal, Conditioned |
| ustedes deberían / ustedes tendrían que | you should | vi devus | Sie müssten | Si müested | B1, Formal, Conditioned |
| ellos deberían / ellos tendrían que | they should | ili devus | sie müssten | si müested | B1, Conditioned |
| ellas deberían / ellas tendrían que | they should | ili devus | sie müssten | si müested | B1, Conditioned |
| (él dice que) yo debo / (él dice que) yo tengo que | (he says that) I must / (he says that) I have to / (he says that) I ought to | (li diras, ke) mi devas | (er sagt, (dass)) ich müsse | (er säit, (dass)) ich mües / (er säit, (dass)) ich müesi | B1, Indirect speech |
| (él dice que) tú debes / (él dice que) tú tienes que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) du müssest | (er säit, (dass)) du müessch / (er säit, (dass)) du müesisch | B1, Informal, Indirect speech |
| (él dice que) usted debe / (él dice que) usted tiene que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) Sie müsse | (er säit, (dass)) Si müesed | B1, Formal, Indirect speech |
| (él dice que) él debe / (él dice que) él tiene que | (he says that) he must / (he says that) he has to / (he says that) he oughts to | (li diras, ke) li devas | (er sagt, (dass)) er müsse | (er säit, (dass)) er mües / (er säit, (dass)) er müesi | B1, Indirect speech |
| (él dice que) ella debe / (él dice que) ella tiene que | (he says that) she must / (he says that) she has to / (he says that) she oughts to | (li diras, ke) ŝi devas | (er sagt, (dass)) sie müss | (er säit, (dass)) si mües / (er säit, (dass)) si müesi | B1, Indirect speech |
| (él dice que) debe / (él dice que) tiene que | (he says that) it must / (he says that) it has to / (he says that) it oughts to | (li diras, ke) ĝi devas | (er sagt, (dass)) es müss | (er säit, (dass)) es mües / (er säit, (dass)) es müesi | B1, Indirect speech |
| (él dice que) nosotros debemos / (él dice que) nosotros tenemos que | (he says that) we must / (he says that) we have to / (he says that) we ought to | (li diras, ke) ni devas | (er sagt, (dass)) wir müssen | (er säit, (dass)) mir müesed | B1, Indirect speech |
| (él dice que) nosotras debemos / (él dice que) nosotras tenemos que | (he says that) we must / (he says that) we have to / (he says that) we ought to | (li diras, ke) ni devas | (er sagt, (dass)) wir müssen | (er säit, (dass)) mir müesed | B1, Indirect speech |
| (él dice que) vosotros debéis / (él dice que) vosotros tenéis que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) ihr müsset | (er säit, (dass)) ir müesed | B1, Informal, Indirect speech |
| (él dice que) vosotras debéis / (él dice que) vosotras tenéis que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) ihr müsset | (er säit, (dass)) ir müesed | B1, Informal, Indirect speech |
| (él dice que) ustedes deben / (él dice que) ustedes tienen que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) Sie müssen | (er säit, (dass)) Si müesed | B1, Formal, Indirect speech |
| (él dice que) ustedes deben / (él dice que) ustedes tienen que | (he says that) you must / (he says that) you have to / (he says that) you ought to | (li diras, ke) vi devas | (er sagt, (dass)) Sie müssen | (er säit, (dass)) Si müesed | B1, Formal, Indirect speech |
| (él dice que) ellos deben / (él dice que) ellos tienen que | (he says that) they must / (he says that) they have to / (he says that) they ought to | (li diras, ke) ili devas | (er sagt, (dass)) sie müssen | (er säit, (dass)) si müesed | B1, Indirect speech |
| (él dice que) ellas deben / (él dice que) ellas tienen que | (he says that) they must / (he says that) they have to / (he says that) they ought to | (li diras, ke) ili devas | (er sagt, (dass)) sie müssen | (er säit, (dass)) si müesed | B1, Indirect speech |

### Verb "to want"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| querer | to want | voli | wollen | wele | A1, Infinitive |
| querido | wanted | volita | gewollt | wele | A1, Past Participle |
| yo quiero | I want | mi volas | ich will | ich will / ich wott | A1, Present Simple |
| tú quieres | you want | vi volas | du willst | du willsch / du wottsch | A1, Informal, Present Simple |
| usted quiere | you want | vi volas | Sie wollen | Si wänd | A1, Formal, Present Simple |
| él quiere | he wants | li volas | er will | er will / er wott | A1, Present Simple |
| ella quiere | she wants | ŝi volas | sie will | si will / si wott | A1, Present Simple |
| quiere | it wants | ĝi volas | es will | es will / es wott | A1, Present Simple |
| nosotros queremos | we want | ni volas | wir wollen | mir wänd | A1, Present Simple |
| nosotras queremos | we want | ni volas | wir wollen | mir wänd | A1, Present Simple |
| vosotros queréis | you want | vi volas | ihr wollet | ir wänd | A1, Informal, Present Simple |
| vosotras queréis | you want | vi volas | ihr wollet | ir wänd | A1, Informal, Present Simple |
| ustedes quieren | you want | vi volas | Sie wollen | Si wänd | A1, Formal, Present Simple |
| ustedes quieren | you want | vi volas | Sie wollen | Si wänd | A1, Formal, Present Simple |
| ellos quieren | they want | ili volas | sie wollen | si wänd | A1, Present Simple |
| ellas quieren | they want | ili volas | sie wollen | si wänd | A1, Present Simple |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Informal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Formal, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
|  |  |  |  |  | A1, Present Continuous |
| yo quería | I wanted | mi volis | ich wollte |  | A1, Past Simple |
| tú querías | you wanted | vi volis | du wolltest |  | A1, Informal, Past Simple |
| usted quería | you wanted | vi volis | Sie wollten |  | A1, Formal, Past Simple |
| él quería | he wanted | li volis | er wollte |  | A1, Past Simple |
| ella quería | she wanted | ŝi volis | sie wollte |  | A1, Past Simple |
| quería | it wanted | ĝi volis | es wollte |  | A1, Past Simple |
| nosotros queríamos | we wanted | ni volis | wir wollten |  | A1, Past Simple |
| nosotras queríamos | we wanted | ni volis | wir wollten |  | A1, Past Simple |
| vosotros queríais | you wanted | vi volis | ihr wolltet |  | A1, Informal, Past Simple |
| vosotras queríais | you wanted | vi volis | ihr wolltet |  | A1, Informal, Past Simple |
| ustedes querían | you wanted | vi volis | Sie wollten |  | A1, Formal, Past Simple |
| ustedes querían | you wanted | vi volis | Sie wollten |  | A1, Formal, Past Simple |
| ellos querían | they wanted | ili volis | sie wollten |  | A1, Past Simple |
| ellas querían | they wanted | ili volis | sie wollten |  | A1, Past Simple |
| yo he querido | I have wanted |  | ich habe gewollt | ich han chöne | A1, Past Perfect |
| tú has querido | you have wanted |  | du hast gewollt | du häsch chöne | A1, Informal, Past Perfect |
| usted ha querido | you have wanted |  | Sie haben gewollt | Si händ chöne | A1, Formal, Past Perfect |
| él ha querido | he has wanted |  | er hat gewollt | er hät chöne | A1, Past Perfect |
| ella ha querido | she has wanted |  | sie hat gewollt | si hät chöne | A1, Past Perfect |
| ha querido | it has wanted |  | es hat gewollt | es hät chöne | A1, Past Perfect |
| nosotros hemos querido | we have wanted |  | wir haben gewollt | mir händ chöne | A1, Past Perfect |
| nosotras hemos querido | we have wanted |  | wir haben gewollt | mir händ chöne | A1, Past Perfect |
| vosotros habéis querido | you have wanted |  | ihr habt gewollt | ir händ chöne | A1, Informal, Past Perfect |
| vosotras habéis querido | you have wanted |  | ihr habt gewollt | ir händ chöne | A1, Informal, Past Perfect |
| ustedes han querido | you have wanted |  | Sie haben gewollt | Si händ chöne | A1, Formal, Past Perfect |
| ustedes han querido | you have wanted |  | Sie haben gewollt | Si händ chöne | A1, Formal, Past Perfect |
| ellos han querido | they have wanted |  | sie haben gewollt | si händ chöne | A1, Past Perfect |
| ellas han querido | they have wanted |  | sie haben gewollt | si händ chöne | A1, Past Perfect |
| yo querré | I will want | mi volos | Ich werde wollen | ich will (Zuekunft Ziitadverb) / ich wott (Zuekunft Ziitadverb) | A2, Future Simple |
| tú querrás | you will want | vi volos | du wirst wollen | du willsch (Zuekunft Ziitadverb) / du wottsch (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| usted querrá | you will want | vi volos | Sie werden wollen | Si wänd (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| él querrá | he will want | li volos | er wird wollen | er will (Zuekunft Ziitadverb) / er wott (Zuekunft Ziitadverb) | A2, Future Simple |
| ella querrá | she will want | ŝi volos | sie wird wollen | si will (Zuekunft Ziitadverb) / si wott (Zuekunft Ziitadverb) | A2, Future Simple |
| querrá | it will want | ĝi volos | es wird wollen | es will (Zuekunft Ziitadverb) / es wott (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotros querremos | we will want | ni volos | wir werden wollen | mir wänd (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotras querremos | we will want | ni volos | wir werden wollen | mir wänd (Zuekunft Ziitadverb) | A2, Future Simple |
| vosotros querréis | you will want | vi volos | du wirst wollen | ir wänd (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| vosotras querréis | you will want | vi volos | du wirst wollen | ir wänd (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| ustedes querrán | you will want | vi volos | Sie werden wollen | Si wänd (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ustedes querrán | you will want | vi volos | Sie werden wollen | Si wänd (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ellos querrán | they will want | ili volos | sie werden wollen | si wänd (Zuekunft Ziitadverb) | A2, Future Simple |
| ellas querrán | they will want | ili volos | sie werden wollen | si wänd (Zuekunft Ziitadverb) | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
| si yo quisiera / si yo quisiese | had I wanted / if I wanted |  | wenn ich wollte | wänn ich wett(i) | B1, Condition |
| si tú quisieras / si tú quisieses | had you wanted / if you wanted |  | wenn du wolltest | wänn du wett(i)sch | B1, Informal, Condition |
| si usted quisiera / si usted quisiese | had you wanted / if you wanted |  | wenn Sie wollten | wänn Si wetted | B1, Formal, Condition |
| si él quisiera / si él quisiese | had he wanted / if he wanted |  | wenn er wollte | wänn er wett(i) | B1, Condition |
| si ella quisiera / si ella quisiese | had she wanted / if she wanted |  | wenn sie wollte | wänn si wett(i) | B1, Condition |
| si quisiera / si quisiese | had it wanted / if it wanted |  | wenn es wollte | wänn es wett(i) | B1, Condition |
| si nosotros quisieramos / si nosotros quisiesemos | had we wanted / if we wanted |  | wenn wir wollten | wänn mir wetted | B1, Condition |
| si nosotras quisieramos / si nosotras quisiesemos | had we wanted / if we wanted |  | wenn wir wollten | wänn mir wetted | B1, Condition |
| si vosotros quisiérais / si vosotros quisiéseis | had you wanted / if you wanted |  | wenn ihr wolltet | wänn ir wetted | B1, Informal, Condition |
| si vosotras quisiérais / si vosotras quisiéseis | had you wanted / if you wanted |  | wenn ihr wolltet | wänn ir wetted | B1, Informal, Condition |
| si ustedes quisieran / si ustedes quisiesen | had you wanted / if you wanted |  | wenn Sie wollten | wänn Si wetted | B1, Formal, Condition |
| si ustedes quisieran / si ustedes quisiesen | had you wanted / if you wanted |  | wenn Sie wollten | wänn Si wetted | B1, Formal, Condition |
| si ellos quisieran / si ellos quisiesen | had they wanted / if they wanted |  | wenn sie wollten | wänn si wetted | B1, Condition |
| si ellas quisieran / si ellas quisiesen | had they wanted / if they wanted |  | wenn sie wollten | wänn si wetted | B1, Condition |
| yo querría | I would want | mi volus | ich wollte | ich wett(i) | B1, Conditioned |
| tú querrías | you would want | vi volus | du wolltest | du wett(i)sch | B1, Informal, Conditioned |
| usted querría | you would want | vi volus | Sie alt wollten | Si wetted | B1, Formal, Conditioned |
| él querría | he would want | li volus | er wollte | er wett(i) | B1, Conditioned |
| ella querría | she would want | ŝi volus | sie wollte | si wett(i) | B1, Conditioned |
| querría | it would want | ĝi volus | es wollte | es wett(i) | B1, Conditioned |
| nosotros querríamos | we would want | ni volus | wir wollten | mir wetted | B1, Conditioned |
| nosotras querríamos | we would want | ni volus | wir wollten | mir wetted | B1, Conditioned |
| vosotros querríais | you would want | vi volus | ihr wollten | ir wetted | B1, Informal, Conditioned |
| vosotras querríais | you would want | vi volus | ihr wollten | ir wetted | B1, Informal, Conditioned |
| ustedes querrían | you would want | vi volus | Sie wollten | Si wetted | B1, Formal, Conditioned |
| ustedes querrían | you would want | vi volus | Sie wollten | Si wetted | B1, Formal, Conditioned |
| ellos querrían | they would want | ili volus | sie wollten | si wetted | B1, Conditioned |
| ellas querrían | they would want | ili volus | sie wollten | si wetted | B1, Conditioned |
| (él dice que) yo quiero | (he says that) I want | (li diras, ke) mi volas | (er sagt, (dass)) ich wolle | (er säit, (dass)) ich well / (er säit, (dass)) ich welli | B1, Indirect speech |
| (él dice que) tú quieres | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) du wollest | (er säit, (dass)) du wellsch / (er säit, (dass)) du wellisch | B1, Informal, Indirect speech |
| (él dice que) usted quiere | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) Sie wolle | (er säit, (dass)) Si welled | B1, Formal, Indirect speech |
| (él dice que) él quiere | (he says that) he wants | (li diras, ke) li volas | (er sagt, (dass)) er wolle | (er säit, (dass)) er well / (er säit, (dass)) er welli | B1, Indirect speech |
| (él dice que) ella quiere | (he says that) she wants | (li diras, ke) ŝi volas | (er sagt, (dass)) sie woll | (er säit, (dass)) si well / (er säit, (dass)) si welli | B1, Indirect speech |
| (él dice que) quiere | (he says that) it wants | (li diras, ke) ĝi volas | (er sagt, (dass)) es woll | (er säit, (dass)) es well / (er säit, (dass)) es welli | B1, Indirect speech |
| (él dice que) nosotros queremos | (he says that) we want | (li diras, ke) ni volas | (er sagt, (dass)) wir wollen | (er säit, (dass)) mir welled | B1, Indirect speech |
| (él dice que) nosotras queremos | (he says that) we want | (li diras, ke) ni volas | (er sagt, (dass)) wir wollen | (er säit, (dass)) mir welled | B1, Indirect speech |
| (él dice que) vosotros queréis | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) ihr wollet | (er säit, (dass)) ir welled | B1, Informal, Indirect speech |
| (él dice que) vosotras queréis | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) ihr wollet | (er säit, (dass)) ir welled | B1, Informal, Indirect speech |
| (él dice que) ustedes quieren | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) Sie wollen | (er säit, (dass)) Si welled | B1, Formal, Indirect speech |
| (él dice que) ustedes quieren | (he says that) you want | (li diras, ke) vi volas | (er sagt, (dass)) Sie wollen | (er säit, (dass)) Si welled | B1, Formal, Indirect speech |
| (él dice que) ellos quieren | (he says that) they want | (li diras, ke) ili volas | (er sagt, (dass)) sie wollen | (er säit, (dass)) si welled | B1, Indirect speech |
| (él dice que) ellas quieren | (he says that) they want | (li diras, ke) ili volas | (er sagt, (dass)) sie wollen | (er säit, (dass)) si welled | B1, Indirect speech |

### Verb "to do"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hacer | to do | fari | tun | tue | A1, Infinitive |
| hecho | done | farita | getan | taa | A1, Past Participle |
| yo hago | I do | mi faras | ich tue | ich tue(n) | A1, Present Simple |
| tú haces | you do | vi faras | du tust | du tuesch | A1, Informal, Present Simple |
| usted hace | you do | vi faras | Sie tun | Si tüend | A1, Formal, Present Simple |
| él hace | he does | li faras | er tut | er tuet | A1, Present Simple |
| ella hace | she does | ŝi faras | sie tut | si tuet | A1, Present Simple |
| hace | it does | ĝi faras | es tut | es tuet | A1, Present Simple |
| nosotros hacemos | we do | ni faras | wir tun | mir tüend | A1, Present Simple |
| nosotras hacemos | we do | ni faras | wir tun | mir tüend | A1, Present Simple |
| vosotros hacéis | you do | vi faras | ihr tut | ir tüend | A1, Informal, Present Simple |
| vosotras hacéis | you do | vi faras | ihr tut | ir tüend | A1, Informal, Present Simple |
| ustedes hacen | you do | vi faras | Sie tun | Si tüend | A1, Formal, Present Simple |
| ustedes hacen | you do | vi faras | Sie tun | Si tüend | A1, Formal, Present Simple |
| ellos hacen | they do | ili faras | sie tun | si tüend | A1, Present Simple |
| ellas hacen | they do | ili faras | sie tun | si tüend | A1, Present Simple |
| yo estoy haciendo | I am doing | mi faras | ich tue | ich tue(n) | A1, Present Continuous |
| tú estás haciendo | you are doing | vi faras | du tust | du tuesch | A1, Informal, Present Continuous |
| usted está haciendo | you are doing | vi faras | Sie tun | Si tüend | A1, Formal, Present Continuous |
| él está haciendo | he is doing | li faras | er tut | er tuet | A1, Present Continuous |
| ella está haciendo | she is doing | ŝi faras | sie tut | si tuet | A1, Present Continuous |
| está haciendo | it is doing | ĝi faras | es tut | es tuet | A1, Present Continuous |
| nosotros estamos haciendo | we are doing | ni faras | wir tun | mir tüend | A1, Present Continuous |
| nosotras estamos haciendo | we are doing | ni faras | wir tun | mir tüend | A1, Present Continuous |
| vosotros estáis haciendo | you are doing | vi faras | ihr tut | ir tüend | A1, Informal, Present Continuous |
| vosotras estáis haciendo | you are doing | vi faras | ihr tut | ir tüend | A1, Informal, Present Continuous |
| ustedes están haciendo | you are doing | vi faras | Sie tun | Si tüend | A1, Formal, Present Continuous |
| ustedes están haciendo | you are doing | vi faras | Sie tun | Si tüend | A1, Formal, Present Continuous |
| ellos están haciendo | they are doing | ili faras | sie tun | si tüend | A1, Present Continuous |
| ellas están haciendo | they are doing | ili faras | sie tun | si tüend | A1, Present Continuous |
| yo hacía | I did | mi faris | ich tat |  | A1, Past Simple |
| tú hacías | you did | vi faris | du tatst / du tatest |  | A1, Informal, Past Simple |
| usted hacía | you did | vi faris | Sie tatesttaten |  | A1, Formal, Past Simple |
| él hacía | he did | li faris | er tat |  | A1, Past Simple |
| ella hacía | she did | ŝi faris | sie tat |  | A1, Past Simple |
| hacía | it did | ĝi faris | es tat |  | A1, Past Simple |
| nosotros hacíamos | we did | ni faris | wir taten |  | A1, Past Simple |
| nosotras hacíamos | we did | ni faris | wir taten |  | A1, Past Simple |
| vosotros hacíais | you did | vi faris | ihr tatet |  | A1, Informal, Past Simple |
| vosotras hacíais | you did | vi faris | ihr tatet |  | A1, Informal, Past Simple |
| ustedes hacían | you did | vi faris | Sie tatesttaten |  | A1, Formal, Past Simple |
| ustedes hacían | you did | vi faris | Sie tatesttaten |  | A1, Formal, Past Simple |
| ellos hacían | they did | ili faris | sie taten |  | A1, Past Simple |
| ellas hacían | they did | ili faris | sie taten |  | A1, Past Simple |
| yo he hecho | I have done |  | ich habe getan | ich han taa | A1, Past Perfect |
| tú has hecho | you have done |  | du hast getan | du häsch taa | A1, Informal, Past Perfect |
| usted ha hecho | you have done |  | Sie haben getan | Si händ taa | A1, Formal, Past Perfect |
| él ha hecho | he has done |  | er hat getan | er hät taa | A1, Past Perfect |
| ella ha hecho | she has done |  | sie hat getan | si hät taa | A1, Past Perfect |
| ha hecho | it has done |  | es hat getan | es hät taa | A1, Past Perfect |
| nosotros hemos hecho | we have done |  | wir haben getan | mir händ taa | A1, Past Perfect |
| nosotras hemos hecho | we have done |  | wir haben getan | mir händ taa | A1, Past Perfect |
| vosotros habéis hecho | you have done |  | ihr habt getan | ir händ taa | A1, Informal, Past Perfect |
| vosotras habéis hecho | you have done |  | ihr habt getan | ir händ taa | A1, Informal, Past Perfect |
| ustedes han hecho | you have done |  | Sie haben getan | Si händ taa | A1, Formal, Past Perfect |
| ustedes han hecho | you have done |  | Sie haben getan | Si händ taa | A1, Formal, Past Perfect |
| ellos han hecho | they have done |  | sie haben getan | si händ taa | A1, Past Perfect |
| ellas han hecho | they have done |  | sie haben getan | si händ taa | A1, Past Perfect |
| yo haré | I will do | mi faros | Ich werde tun | ich tue (Zuekunft Ziitadverb) / ich tuen (Zuekunft Ziitadverb) | A2, Future Simple |
| tú harás | you will do | vi faros | du wirst tun | du tuesch (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| usted hará | you will do | vi faros | Sie werden tun | Si tüend (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| él hará | he will do | li faros | er wird tun | er tuet (Zuekunft Ziitadverb) | A2, Future Simple |
| ella hará | she will do | ŝi faros | sie wird tun | si tuet (Zuekunft Ziitadverb) | A2, Future Simple |
| hará | it will do | ĝi faros | es wird tun | es tuet (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotros haremos | we will do | ni faros | wir werden tun | mir tüend (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotras haremos | we will do | ni faros | wir werden tun | mir tüend (Zuekunft Ziitadverb) | A2, Future Simple |
| vosotros haréis | you will do | vi faros | du wirst tun | ir tüend (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| vosotras haréis | you will do | vi faros | du wirst tun | ir tüend (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| ustedes harán | you will do | vi faros | Sie werden tun | Si tüend (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ustedes harán | you will do | vi faros | Sie werden tun | Si tüend (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ellos harán | they will do | ili faros | sie werden tun | si tüend (Zuekunft Ziitadverb) | A2, Future Simple |
| ellas harán | they will do | ili faros | sie werden tun | si tüend (Zuekunft Ziitadverb) | A2, Future Simple |
| haz! | do! | faru! | tue! | tue! | A2, Informal, Imperative |
| haga! | do! | faru! | tun Sie! | tüend Si! | A2, Formal, Imperative |
| hagamos! | let's do! | ni faru! | tun! | tüend! | A2, Imperative |
| hagan! | do! | faru! | tut! | tüend! | A2, Informal, Imperative |
| haced! | do! | faru! | tun Sie! | tüend Si! | A2, Formal, Imperative |
| si yo hiciera / si yo hiciese | had I done / if I did | se mi farus | wenn ich täte / wenn ich würde tun | wänn ich tet(i) | B1, Condition |
| si tú hicieras / si tú hicieses | had you done / if you did | se vi farus | wenn du tätest / wenn du würdest tun | wänn du tet(i)sch | B1, Informal, Condition |
| si usted hiciera / si usted hiciese | had you done / if you did | se vi farus | wenn Sie täten / wenn Sie würden tun | wänn Si teted | B1, Formal, Condition |
| si él hiciera / si él hiciese | had he done / if he did | se li farus | wenn er täte / wenn er würde tun | wänn er tet(i) | B1, Condition |
| si ella hiciera / si ella hiciese | had she done / if she did | se ŝi farus | wenn sie täte / wenn sie würde tun | wänn si tet(i) | B1, Condition |
| si hiciera / si hiciese | had it done / if it did | se ĝi farus | wenn es täte / wenn es würde tun | wänn es tet(i) | B1, Condition |
| si nosotros hicieramos / si nosotros hiciesemos | had we done / if we did | se ni farus | wenn wir täten / wenn wir würden tun | wänn mir teted | B1, Condition |
| si nosotras hicieramos / si nosotras hiciesemos | had we done / if we did | se ni farus | wenn wir täten / wenn wir würden tun | wänn mir teted | B1, Condition |
| si vosotros hiciérais / si vosotros hiciéseis | had you done / if you did | se vi farus | wenn ihr tätet / wenn ihr würden tun | wänn ir teted | B1, Informal, Condition |
| si vosotras hiciérais / si vosotras hiciéseis | had you done / if you did | se vi farus | wenn ihr tätet / wenn ihr würden tun | wänn ir teted | B1, Informal, Condition |
| si ustedes hicieran / si ustedes hiciesen | had you done / if you did | se vi farus | wenn Sie täten / wenn Sie würden tun | wänn Si teted | B1, Formal, Condition |
| si ustedes hicieran / si ustedes hiciesen | had you done / if you did | se vi farus | wenn Sie täten / wenn Sie würden tun | wänn Si teted | B1, Formal, Condition |
| si ellos hicieran / si ellos hiciesen | had they done / if they did | se ili farus | wenn sie täten / wenn sie würden tun | wänn si teted | B1, Condition |
| si ellas hicieran / si ellas hiciesen | had they done / if they did | se ili farus | wenn sie täten / wenn sie würden tun | wänn si teted | B1, Condition |
| yo haría | I would do | mi farus | ich täte / ich würde tun | ich tet(i) | B1, Conditioned |
| tú harías | you would do | vi farus | du tätest / du würdest tun | du tet(i)sch | B1, Informal, Conditioned |
| usted haría | you would do | vi farus | Sie täten / Sie würden tun | Si teted | B1, Formal, Conditioned |
| él haría | he would do | li farus | er täte / er würde tun | er tet(i) | B1, Conditioned |
| ella haría | she would do | ŝi farus | sie täte / sie würde tun | si tet(i) | B1, Conditioned |
| haría | it would do | ĝi farus | es täte / es würde tun | es tet(i) | B1, Conditioned |
| nosotros haríamos | we would do | ni farus | wir täten / wir würden tun | mir teted | B1, Conditioned |
| nosotras haríamos | we would do | ni farus | wir täten / wir würden tun | mir teted | B1, Conditioned |
| vosotros haríais | you would do | vi farus | ihr tätet / ihr würden tun | ir teted | B1, Informal, Conditioned |
| vosotras haríais | you would do | vi farus | ihr tätet / ihr würden tun | ir teted | B1, Informal, Conditioned |
| ustedes harían | you would do | vi farus | Sie täten / Sie würden tun | Si teted | B1, Formal, Conditioned |
| ustedes harían | you would do | vi farus | Sie täten / Sie würden tun | Si teted | B1, Formal, Conditioned |
| ellos harían | they would do | ili farus | sie täten / sie würden tun | si teted | B1, Conditioned |
| ellas harían | they would do | ili farus | sie täten / sie würden tun | si teted | B1, Conditioned |
| (él dice que) yo hago | (he says that) I do | (li diras, ke) mi faras | (er sagt, (dass)) ich tue | (er säit, (dass)) ich tüeg / (er säit, (dass)) ich tüegi | B1, Indirect speech |
| (él dice que) tú haces | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) du tuest | (er säit, (dass)) du tüegsch / (er säit, (dass)) du tüegisch | B1, Informal, Indirect speech |
| (él dice que) usted hace | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) Sie tue | (er säit, (dass)) Si tüeged | B1, Formal, Indirect speech |
| (él dice que) él hace | (he says that) he does | (li diras, ke) li faras | (er sagt, (dass)) er tue | (er säit, (dass)) er tüeg / (er säit, (dass)) er tüegi | B1, Indirect speech |
| (él dice que) ella hace | (he says that) she does | (li diras, ke) ŝi faras | (er sagt, (dass)) sie tu | (er säit, (dass)) si tüeg / (er säit, (dass)) si tüegi | B1, Indirect speech |
| (él dice que) hace | (he says that) it does | (li diras, ke) ĝi faras | (er sagt, (dass)) es tu | (er säit, (dass)) es tüeg / (er säit, (dass)) es tüegi | B1, Indirect speech |
| (él dice que) nosotros hacemos | (he says that) we do | (li diras, ke) ni faras | (er sagt, (dass)) wir tuen | (er säit, (dass)) mir tüeged | B1, Indirect speech |
| (él dice que) nosotras hacemos | (he says that) we do | (li diras, ke) ni faras | (er sagt, (dass)) wir tuen | (er säit, (dass)) mir tüeged | B1, Indirect speech |
| (él dice que) vosotros hacéis | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) ihr tuet | (er säit, (dass)) ir tüeged | B1, Informal, Indirect speech |
| (él dice que) vosotras hacéis | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) ihr tuet | (er säit, (dass)) ir tüeged | B1, Informal, Indirect speech |
| (él dice que) ustedes hacen | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) Sie tuen | (er säit, (dass)) Si tüeged | B1, Formal, Indirect speech |
| (él dice que) ustedes hacen | (he says that) you do | (li diras, ke) vi faras | (er sagt, (dass)) Sie tuen | (er säit, (dass)) Si tüeged | B1, Formal, Indirect speech |
| (él dice que) ellos hacen | (he says that) they do | (li diras, ke) ili faras | (er sagt, (dass)) sie tuen | (er säit, (dass)) si tüeged | B1, Indirect speech |
| (él dice que) ellas hacen | (he says that) they do | (li diras, ke) ili faras | (er sagt, (dass)) sie tuen | (er säit, (dass)) si tüeged | B1, Indirect speech |

### Verb "to make"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hacer | to make | fari | machen | mache | A1, Infinitive |
| hecho | made | farita | getan | taa | A1, Past Participle |
| yo hago | I make | mi faras | ich mache | ich mach(e) | A1, Present Simple |
| tú haces | you make | vi faras | du machst | du machsch | A1, Informal, Present Simple |
| usted hace | you make | vi faras | Sie machen | Si mached | A1, Formal, Present Simple |
| él hace | he makes | li faras | er macht | er macht | A1, Present Simple |
| ella hace | she makes | ŝi faras | sie macht | si macht | A1, Present Simple |
| hace | it makes | ĝi faras | es macht | es macht | A1, Present Simple |
| nosotros hacemos | we make | ni faras | wir machen | mir mached | A1, Present Simple |
| nosotras hacemos | we make | ni faras | wir machen | mir mached | A1, Present Simple |
| vosotros hacéis | you make | vi faras | ihr macht | ir mached | A1, Informal, Present Simple |
| vosotras hacéis | you make | vi faras | ihr macht | ir mached | A1, Informal, Present Simple |
| ustedes hacen | you make | vi faras | Sie machen | Si mached | A1, Formal, Present Simple |
| ustedes hacen | you make | vi faras | Sie machen | Si mached | A1, Formal, Present Simple |
| ellos hacen | they make | ili faras | sie machen | si mached | A1, Present Simple |
| ellas hacen | they make | ili faras | sie machen | si mached | A1, Present Simple |
| yo estoy haciendo | I am doing | mi faras | ich mache | ich mache | A1, Present Continuous |
| tú estás haciendo | you are doing | vi faras | du machst | du machsch | A1, Informal, Present Continuous |
| usted está haciendo | you are doing | vi faras | Sie machen | Si mached | A1, Formal, Present Continuous |
| él está haciendo | he is doing | li faras | er macht | er macht | A1, Present Continuous |
| ella está haciendo | she is doing | ŝi faras | sie macht | si macht | A1, Present Continuous |
| está haciendo | it is doing | ĝi faras | es macht | es macht | A1, Present Continuous |
| nosotros estamos haciendo | we are doing | ni faras | wir machen | mir mached | A1, Present Continuous |
| nosotras estamos haciendo | we are doing | ni faras | wir machen | mir mached | A1, Present Continuous |
| vosotros estáis haciendo | you are doing | vi faras | ihr macht | ir mached | A1, Informal, Present Continuous |
| vosotras estáis haciendo | you are doing | vi faras | ihr macht | ir mached | A1, Informal, Present Continuous |
| ustedes están haciendo | you are doing | vi faras | Sie machen | Si mached | A1, Formal, Present Continuous |
| ustedes están haciendo | you are doing | vi faras | Sie machen | Si mached | A1, Formal, Present Continuous |
| ellos están haciendo | they are doing | ili faras | sie machen | si mached | A1, Present Continuous |
| ellas están haciendo | they are doing | ili faras | sie machen | si mached | A1, Present Continuous |
| yo hacía | I made | mi faris | ich machte |  | A1, Past Simple |
| tú hacías | you made | vi faris | du machtest |  | A1, Informal, Past Simple |
| usted hacía | you made | vi faris | Sie machten |  | A1, Formal, Past Simple |
| él hacía | he made | li faris | er machte |  | A1, Past Simple |
| ella hacía | she made | ŝi faris | sie machte |  | A1, Past Simple |
| hacía | it made | ĝi faris | es machte |  | A1, Past Simple |
| nosotros hacíamos | we made | ni faris | wir machten |  | A1, Past Simple |
| nosotras hacíamos | we made | ni faris | wir machten |  | A1, Past Simple |
| vosotros hacíais | you made | vi faris | ihr machtet |  | A1, Informal, Past Simple |
| vosotras hacíais | you made | vi faris | ihr machtet |  | A1, Informal, Past Simple |
| ustedes hacían | you made | vi faris | Sie machten |  | A1, Formal, Past Simple |
| ustedes hacían | you made | vi faris | Sie machten |  | A1, Formal, Past Simple |
| ellos hacían | they made | ili faris | sie machten |  | A1, Past Simple |
| ellas hacían | they made | ili faris | sie machten |  | A1, Past Simple |
| yo he hecho | I have made |  | ich habe gemacht | ich han gmacht | A1, Past Perfect |
| tú has hecho | you have made |  | du hast gemacht | du häsch gmacht | A1, Informal, Past Perfect |
| usted ha hecho | you have made |  | Sie haben gemacht | Si händ gmacht | A1, Formal, Past Perfect |
| él ha hecho | he has made |  | er hat gemacht | er hät gmacht | A1, Past Perfect |
| ella ha hecho | she has made |  | sie hat gemacht | si hät gmacht | A1, Past Perfect |
| ha hecho | it has made |  | es hat gemacht | es hät gmacht | A1, Past Perfect |
| nosotros hemos hecho | we have made |  | wir haben gemacht | mir händ gmacht | A1, Past Perfect |
| nosotras hemos hecho | we have made |  | wir haben gemacht | mir händ gmacht | A1, Past Perfect |
| vosotros habéis hecho | you have made |  | ihr habt gemacht | ir händ gmacht | A1, Informal, Past Perfect |
| vosotras habéis hecho | you have made |  | ihr habt gemacht | ir händ gmacht | A1, Informal, Past Perfect |
| ustedes han hecho | you have made |  | Sie haben gemacht | Si händ gmacht | A1, Formal, Past Perfect |
| ustedes han hecho | you have made |  | Sie haben gemacht | Si händ gmacht | A1, Formal, Past Perfect |
| ellos han hecho | they have made |  | sie haben gemacht | si händ gmacht | A1, Past Perfect |
| ellas han hecho | they have made |  | sie haben gemacht | si händ gmacht | A1, Past Perfect |
| yo haré | I will make | mi faros | Ich werde machen | ich mache (Zuekunft Ziitadverb) | A2, Future Simple |
| tú harás | you will make | vi faros | du wirst machen | du machsch (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| usted hará | you will make | vi faros | Sie werden machen | Si mached (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| él hará | he will make | li faros | er wird machen | er macht (Zuekunft Ziitadverb) | A2, Future Simple |
| ella hará | she will make | ŝi faros | sie wird machen | si macht (Zuekunft Ziitadverb) | A2, Future Simple |
| hará | it will make | ĝi faros | es wird machen | es macht (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotros haremos | we will make | ni faros | wir werden machen | mir mached (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotras haremos | we will make | ni faros | wir werden machen | mir mached (Zuekunft Ziitadverb) | A2, Future Simple |
| vosotros haréis | you will make | vi faros | du wirst machen | ir mached (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| vosotras haréis | you will make | vi faros | du wirst machen | ir mached (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| ustedes harán | you will make | vi faros | Sie werden machen | Si mached (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ustedes harán | you will make | vi faros | Sie werden machen | Si mached (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ellos harán | they will make | ili faros | sie werden machen | si mached (Zuekunft Ziitadverb) | A2, Future Simple |
| ellas harán | they will make | ili faros | sie werden machen | si mached (Zuekunft Ziitadverb) | A2, Future Simple |
| haz! | make! | faru! | mache! | mach! | A2, Informal, Imperative |
| haga! | make! | faru! | machen Sie! | mached Si! | A2, Formal, Imperative |
| hagamos! | let's make! | ni faru! | machen! | mached! | A2, Imperative |
| hagan! | make! | faru! | macht! | mached! | A2, Informal, Imperative |
| haced! | make! | faru! | machen Sie! | mached Si! | A2, Formal, Imperative |
| si yo hiciera / si yo hiciese | had I made / if I made | se mi farus | wenn ich machte / wenn ich würde machen | wänn ich miech(i) | B1, Condition |
| si tú hicieras / si tú hicieses | had you made / if you made | se vi farus | wenn du machtest / wenn du würdest machen | wänn du miech(i)sch | B1, Informal, Condition |
| si usted hiciera / si usted hiciese | had you made / if you made | se vi farus | wenn Sie machten / wenn Sie würden machen | wänn Si mieched | B1, Formal, Condition |
| si él hiciera / si él hiciese | had he made / if he made | se li farus | wenn er machte / wenn er würde machen | wänn er miech(i) | B1, Condition |
| si ella hiciera / si ella hiciese | had she made / if she made | se ŝi farus | wenn sie machte / wenn sie würde machen | wänn si miech(i) | B1, Condition |
| si hiciera / si hiciese | had it made / if it made | se ĝi farus | wenn es machte / wenn es würde machen | wänn es miech(i) | B1, Condition |
| si nosotros hicieramos / si nosotros hiciesemos | had we made / if we made | se ni farus | wenn wir machten / wenn wir würden machen | wänn mir mieched | B1, Condition |
| si nosotras hicieramos / si nosotras hiciesemos | had we made / if we made | se ni farus | wenn wir machten / wenn wir würden machen | wänn mir mieched | B1, Condition |
| si vosotros hiciérais / si vosotros hiciéseis | had you made / if you made | se vi farus | wenn ihr machtet / wenn ihr würden machen | wänn ir mieched | B1, Informal, Condition |
| si vosotras hiciérais / si vosotras hiciéseis | had you made / if you made | se vi farus | wenn ihr machtet / wenn ihr würden machen | wänn ir mieched | B1, Informal, Condition |
| si ustedes hicieran / si ustedes hiciesen | had you made / if you made | se vi farus | wenn Sie machten / wenn Sie würden machen | wänn Si mieched | B1, Formal, Condition |
| si ustedes hicieran / si ustedes hiciesen | had you made / if you made | se vi farus | wenn Sie machten / wenn Sie würden machen | wänn Si mieched | B1, Formal, Condition |
| si ellos hicieran / si ellos hiciesen | had they made / if they made | se ili farus | wenn sie machten / wenn sie würden machen | wänn si mieched | B1, Condition |
| si ellas hicieran / si ellas hiciesen | had they made / if they made | se ili farus | wenn sie machten / wenn sie würden machen | wänn si mieched | B1, Condition |
| yo haría | I would make | mi farus | ich machte / ich würde machen | ich miech(i) | B1, Conditioned |
| tú harías | you would make | vi farus | du machtest / du würdest machen | du miech(i)sch | B1, Informal, Conditioned |
| usted haría | you would make | vi farus | Sie machten / Sie würden machen | Si mieched | B1, Formal, Conditioned |
| él haría | he would make | li farus | er machte / er würde machen | er miech(i) | B1, Conditioned |
| ella haría | she would make | ŝi farus | sie machte / sie würde machen | si miech(i) | B1, Conditioned |
| haría | it would make | ĝi farus | es machte / es würde machen | es miech(i) | B1, Conditioned |
| nosotros haríamos | we would make | ni farus | wir machten / wir würden machen | mir mieched | B1, Conditioned |
| nosotras haríamos | we would make | ni farus | wir machten / wir würden machen | mir mieched | B1, Conditioned |
| vosotros haríais | you would make | vi farus | ihr machtet / ihr würden machen | ir mieched | B1, Informal, Conditioned |
| vosotras haríais | you would make | vi farus | ihr machtet / ihr würden machen | ir mieched | B1, Informal, Conditioned |
| ustedes harían | you would make | vi farus | Sie machten / Sie würden machen | Si mieched | B1, Formal, Conditioned |
| ustedes harían | you would make | vi farus | Sie machten / Sie würden machen | Si mieched | B1, Formal, Conditioned |
| ellos harían | they would make | ili farus | sie machten / sie würden machen | si mieched | B1, Conditioned |
| ellas harían | they would make | ili farus | sie machten / sie würden machen | si mieched | B1, Conditioned |
| (él dice que) yo hago | (he says that) I make | (li diras, ke) mi faras | (er sagt, (dass)) ich mache | (er säit, (dass)) ich mach / (er säit, (dass)) ich machi | B1, Indirect speech |
| (él dice que) tú haces | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) du machest | (er säit, (dass)) du machsch / (er säit, (dass)) du machisch | B1, Informal, Indirect speech |
| (él dice que) usted hace | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) Sie mache | (er säit, (dass)) Si mached | B1, Formal, Indirect speech |
| (él dice que) él hace | (he says that) he makes | (li diras, ke) li faras | (er sagt, (dass)) er mache | (er säit, (dass)) er mach / (er säit, (dass)) er machi | B1, Indirect speech |
| (él dice que) ella hace | (he says that) she makes | (li diras, ke) ŝi faras | (er sagt, (dass)) sie mach | (er säit, (dass)) si mach / (er säit, (dass)) si machi | B1, Indirect speech |
| (él dice que) hace | (he says that) it makes | (li diras, ke) ĝi faras | (er sagt, (dass)) es mach | (er säit, (dass)) es mach / (er säit, (dass)) es machi | B1, Indirect speech |
| (él dice que) nosotros hacemos | (he says that) we make | (li diras, ke) ni faras | (er sagt, (dass)) wir machen | (er säit, (dass)) mir mached | B1, Indirect speech |
| (él dice que) nosotras hacemos | (he says that) we make | (li diras, ke) ni faras | (er sagt, (dass)) wir machen | (er säit, (dass)) mir mached | B1, Indirect speech |
| (él dice que) vosotros hacéis | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) ihr machet | (er säit, (dass)) ir mached | B1, Informal, Indirect speech |
| (él dice que) vosotras hacéis | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) ihr machet | (er säit, (dass)) ir mached | B1, Informal, Indirect speech |
| (él dice que) ustedes hacen | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) Sie machen | (er säit, (dass)) Si mached | B1, Formal, Indirect speech |
| (él dice que) ustedes hacen | (he says that) you make | (li diras, ke) vi faras | (er sagt, (dass)) Sie machen | (er säit, (dass)) Si mached | B1, Formal, Indirect speech |
| (él dice que) ellos hacen | (he says that) they make | (li diras, ke) ili faras | (er sagt, (dass)) sie machen | (er säit, (dass)) si mached | B1, Indirect speech |
| (él dice que) ellas hacen | (he says that) they make | (li diras, ke) ili faras | (er sagt, (dass)) sie machen | (er säit, (dass)) si mached | B1, Indirect speech |

### Verb "to like"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| gustar (a alguien) | to like | ŝati | mögen | gern (Verb) / gern haa (Objekt) / (möge) | A1, Infinitive |
|  | liked | ŝatita | gemocht | gern (Verb) / gern ghaa (Objekt) / (möge) | A1, Past Participle |
| a mí me gusta | I like | mi ŝatas | ich mag / ich (Verb) gern / es gefällt mir | ich han (Objekt) gern / ich (Verb) gern / es gfalt mir | A1, Present Simple |
| a ti te gusta | you like | vi ŝatas | du magst / du (Verb) gern / es gefällt dir | du häsch (Objekt) gern / du (Verb) gern / es gfalt dir | A1, Informal, Present Simple |
| a usted le gusta | you like | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Simple |
| a él le gusta | he likes | li ŝatas | er mag / er (Verb) gern / es gefällt ihm | er hät (Objekt) gern / er (Verb) gern / es gfalt im | A1, Present Simple |
| a ella le gusta | she likes | ŝi ŝatas | sie mag / sie (Verb) gern / es gefällt ihr | si hät (Objekt) gern / si (Verb) gern / es gfalt ire | A1, Present Simple |
| le gusta | it likes | ĝi ŝatas | es mag / es (Verb) gern / es gefällt ihm | es hät (Objekt) gern / es (Verb) gern / es gfalt im | A1, Present Simple |
| a nosotros nos gusta | we like | ni ŝatas | wir mögen / wir (Verb) gern / es gefällt uns | mir händ (Objekt) gern / mir (Verb) gern / es gfalt ois | A1, Present Simple |
| a nosotras nos gusta | we like | ni ŝatas | wir mögen / wir (Verb) gern / es gefällt uns | mir händ (Objekt) gern / mir (Verb) gern / es gfalt ois | A1, Present Simple |
| a vosotros os gusta | you like | vi ŝatas | ihr mögt / ihr (Verb) gern / es gefällt euch | ir händ (Objekt) gern / ir (Verb) gern / es gfalt oi | A1, Informal, Present Simple |
| a vosotras os gusta | you like | vi ŝatas | ihr mögt / ihr (Verb) gern / es gefällt euch | ir händ (Objekt) gern / ir (Verb) gern / es gfalt oi | A1, Informal, Present Simple |
| a ustedes les gusta | you like | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Simple |
| a ustedes les gusta | you like | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Simple |
| a ellos les gusta | they like | ili ŝatas | sie mögen / sie (Verb) gern / es gefällt ihnen | si händ (Objekt) gern / si (Verb) gern / es gfalt ine | A1, Present Simple |
| a ellas les gusta | they like | ili ŝatas | sie mögen / sie (Verb) gern / es gefällt ihnen | si händ (Objekt) gern / si (Verb) gern / es gfalt ine | A1, Present Simple |
| a mí me está gustando |  | mi ŝatas | ich mag / ich (Verb) gern / es gefällt mir | ich han (Objekt) gern / ich (Verb) gern / es gfalt mir | A1, Present Continuous |
| a ti te está gustando |  | vi ŝatas | du magst / du (Verb) gern / es gefällt dir | du häsch (Objekt) gern / du (Verb) gern / es gfalt dir | A1, Informal, Present Continuous |
| a usted le está gustando |  | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Continuous |
| a él le está gustando |  | li ŝatas | er mag / er (Verb) gern / es gefällt ihm | er hät (Objekt) gern / er (Verb) gern / es gfalt im | A1, Present Continuous |
| a ella le está gustando |  | ŝi ŝatas | sie mag / sie (Verb) gern / es gefällt ihr | si hät (Objekt) gern / si (Verb) gern / es gfalt ire | A1, Present Continuous |
| le está gustando |  | ĝi ŝatas | es mag / es (Verb) gern / es gefällt ihm | es hät (Objekt) gern / es (Verb) gern / es gfalt im | A1, Present Continuous |
| a nosotros nos está gustando |  | ni ŝatas | wir mögen / wir (Verb) gern / es gefällt uns | mir händ (Objekt) gern / mir (Verb) gern / es gfalt ois | A1, Present Continuous |
| a nosotras nos está gustando |  | ni ŝatas | wir mögen / wir (Verb) gern / es gefällt uns | mir händ (Objekt) gern / mir (Verb) gern / es gfalt ois | A1, Present Continuous |
| a vosotros os está gustando |  | vi ŝatas | ihr mögt / ihr (Verb) gern / es gefällt euch | ir händ (Objekt) gern / ir (Verb) gern / es gfalt oi | A1, Informal, Present Continuous |
| a vosotras os está gustando |  | vi ŝatas | ihr mögt / ihr (Verb) gern / es gefällt euch | ir händ (Objekt) gern / ir (Verb) gern / es gfalt oi | A1, Informal, Present Continuous |
| a ustedes les está gustando |  | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Continuous |
| a ustedes les está gustando |  | vi ŝatas | Sie mögen / Sie (Verb) gern / es gefällt Ihnen | Si händ (Objekt) gern / Si (Verb) gern / es gfalt Ine | A1, Formal, Present Continuous |
| a ellos les está gustando |  | ili ŝatas | sie mögen / sie (Verb) gern / es gefällt ihnen | si händ (Objekt) gern / si (Verb) gern / es gfalt ine | A1, Present Continuous |
| a ellas les está gustando |  | ili ŝatas | sie mögen / sie (Verb) gern / es gefällt ihnen | si händ (Objekt) gern / si (Verb) gern / es gfalt ine | A1, Present Continuous |
| a mí me gustaba | I liked | mi ŝatis | ich mochte / es gefiel mir |  /  | A1, Past Simple |
| a ti te gustaba | you liked | vi ŝatis | du mochtest / es gefiel dir |  /  | A1, Informal, Past Simple |
| a usted le gustaba | you liked | vi ŝatis | Sie mochten / es gefiel Ihnen |  /  | A1, Formal, Past Simple |
| a él le gustaba | he liked | li ŝatis | er mochte / es gefiel ihm |  /  | A1, Past Simple |
| a ella le gustaba | she liked | ŝi ŝatis | sie mochte / es gefiel ihr |  /  | A1, Past Simple |
| le gustaba | it liked | ĝi ŝatis | es mochte / es gefiel ihm |  /  | A1, Past Simple |
| a nosotros nos gustaba | we liked | ni ŝatis | wir mochten / es gefiel uns |  /  | A1, Past Simple |
| a nosotras nos gustaba | we liked | ni ŝatis | wir mochten / es gefiel uns |  /  | A1, Past Simple |
| a vosotros os gustaba | you liked | vi ŝatis | ihr mochtet / es gefiel euch |  /  | A1, Informal, Past Simple |
| a vosotras os gustaba | you liked | vi ŝatis | ihr mochtet / es gefiel euch |  /  | A1, Informal, Past Simple |
| a ustedes les gustaba | you liked | vi ŝatis | Sie mochten / es gefiel Ihnen |  /  | A1, Formal, Past Simple |
| a ustedes les gustaba | you liked | vi ŝatis | Sie mochten / es gefiel Ihnen |  /  | A1, Formal, Past Simple |
| a ellos les gustaba | they liked | ili ŝatis | sie mochten / es gefiel ihnen |  /  | A1, Past Simple |
| a ellas les gustaba | they liked | ili ŝatis | sie mochten / es gefiel ihnen |  /  | A1, Past Simple |
| a mí me había gustado | I have liked |  | ich habe gemocht / es hat mir gefallen | ich han gern ghaa / ich han gern ghaa / es hät mir gfale | A1, Past Perfect |
| a ti te había gustado | you have liked |  | du hast gemocht / es hat dir gefallen | du häsch gern ghaa / es hät dir gfale | A1, Informal, Past Perfect |
| a usted le había gustado | you have liked |  | Sie haben gemocht / es hat Ihnen gefallen | Si händ gern ghaa / es hät Ine gfale | A1, Formal, Past Perfect |
| a él le había gustado | he has liked |  | er hat gemocht / es hat ihm gefallen | er hät gern ghaa / es hät im gfale | A1, Past Perfect |
| a ella le había gustado | she has liked |  | sie hat gemocht / es hat ihr gefallen | si hät gern ghaa / es hät ire gfale | A1, Past Perfect |
| le había gustado | it has liked |  | es hat gemocht / es hat ihm gefallen | es hät gern ghaa / es hät im gfale | A1, Past Perfect |
| a nosotros nos había gustado | we have liked |  | wir haben gemocht / es hat uns gefallen | mir händ gern ghaa / es hät ois gfale | A1, Past Perfect |
| a nosotras nos había gustado | we have liked |  | wir haben gemocht / es hat uns gefallen | mir händ gern ghaa / es hät ois gfale | A1, Past Perfect |
| a vosotros nos había gustado | you have liked |  | ihr habt gemocht / es hat euch gefallen | ir händ gern ghaa / es hät oi gfale | A1, Informal, Past Perfect |
| a vosotras nos había gustado | you have liked |  | ihr habt gemocht / es hat euch gefallen | ir händ gern ghaa / es hät oi gfale | A1, Informal, Past Perfect |
| a ustedes les había gustado | you have liked |  | Sie haben gemocht / es hat Ihnen gefallen | Si händ gern ghaa / es hät Ine gfale | A1, Formal, Past Perfect |
| a ustedes les había gustado | you have liked |  | Sie haben gemocht / es hat Ihnen gefallen | Si händ gern ghaa / es hät Ine gfale | A1, Formal, Past Perfect |
| a ellos les había gustado | they have liked |  | sie haben gemocht / es hat ihnen gefallen | si händ gern ghaa / es hät ine gfale | A1, Past Perfect |
| a ellas les había gustado | they have liked |  | sie haben gemocht / es hat ihnen gefallen | si händ gern ghaa / es hät ine gfale | A1, Past Perfect |
| a mí me gustará | I will like | mi ŝatos | Ich werde mögen / es wird mir gefallen | ich han (Zuekunft Ziitadverb) (Objekt) gern / ich (Verb) (Zuekunft Ziitadverb) gern / es gfalt mir (Zuekunft Ziitadverb) | A2, Future Simple |
| a ti te gustará | you will like | vi ŝatos | du wirst mögen / es wird dir gefallen | du häsch (Zuekunft Ziitadverb) (Objekt) gern / du (Verb) (Zuekunft Ziitadverb) gern / es gfalt dir (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| a usted le gustará | you will like | vi ŝatos | Sie werden mögen / es wird Ihnen gefallen | Si händ (Zuekunft Ziitadverb) (Objekt) gern / Si (Verb) (Zuekunft Ziitadverb) gern / es gfalt Ine (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| a él le gustará | he will like | li ŝatos | er wird mögen / es wird ihm gefallen | er hät (Zuekunft Ziitadverb) (Objekt) gern / er (Verb) (Zuekunft Ziitadverb) gern / es gfalt im (Zuekunft Ziitadverb) | A2, Future Simple |
| a ella le gustará | she will like | ŝi ŝatos | sie wird mögen / es wird ihr gefallen | si hät (Zuekunft Ziitadverb) (Objekt) gern / si (Verb) (Zuekunft Ziitadverb) gern / es gfalt ire (Zuekunft Ziitadverb) | A2, Future Simple |
| le gustará | it will like | ĝi ŝatos | es wird mögen / es wird ihm gefallen | es hät (Zuekunft Ziitadverb) (Objekt) gern / es (Verb) (Zuekunft Ziitadverb) gern / es gfalt im (Zuekunft Ziitadverb) | A2, Future Simple |
| a nosotros nos gustará | we will like | ni ŝatos | wir werden mögen / es wird uns gefallen | mir händ (Zuekunft Ziitadverb) (Objekt) gern / mir (Verb) (Zuekunft Ziitadverb) gern / es gfalt ois (Zuekunft Ziitadverb) | A2, Future Simple |
| a nosotras nos gustará | we will like | ni ŝatos | wir werden mögen / es wird uns gefallen | mir händ (Zuekunft Ziitadverb) (Objekt) gern / mir (Verb) (Zuekunft Ziitadverb) gern / es gfalt ois (Zuekunft Ziitadverb) | A2, Future Simple |
| a vosotros os gustará | you will like | vi ŝatos | du wirst mögen / es wird euch gefallen | ir händ (Zuekunft Ziitadverb) (Objekt) gern / ir (Verb) (Zuekunft Ziitadverb) gern / es gfalt oi (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| a vosotras os gustará | you will like | vi ŝatos | du wirst mögen / es wird euch gefallen | ir händ (Zuekunft Ziitadverb) (Objekt) gern / ir (Verb) (Zuekunft Ziitadverb) gern / es gfalt oi (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| a ustedes les gustará | you will like | vi ŝatos | Sie werden mögen / es wird Ihnen gefallen | Si händ (Zuekunft Ziitadverb) (Objekt) gern / Si (Verb) (Zuekunft Ziitadverb) gern / es gfalt Ine (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| a ustedes les gustará | you will like | vi ŝatos | Sie werden mögen / es wird Ihnen gefallen | Si händ (Zuekunft Ziitadverb) (Objekt) gern / Si (Verb) (Zuekunft Ziitadverb) gern / es gfalt Ine (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| a ellos les gustará | they will like | ili ŝatos | sie werden mögen / es wird ihnen gefallen | si händ (Zuekunft Ziitadverb) (Objekt) gern / si (Verb) (Zuekunft Ziitadverb) gern / es gfalt ine (Zuekunft Ziitadverb) | A2, Future Simple |
| a ellas les gustará | they will like | ili ŝatos | sie werden mögen / es wird ihnen gefallen | si händ (Zuekunft Ziitadverb) (Objekt) gern / si (Verb) (Zuekunft Ziitadverb) gern / es gfalt ine (Zuekunft Ziitadverb) | A2, Future Simple |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
|  |  |  |  |  | A2, Imperative |
|  |  |  |  |  | A2, Informal, Imperative |
|  |  |  |  |  | A2, Formal, Imperative |
| si a mí me gustara / si a mí me gustase | had I liked / if I liked | se mi ŝatus | wenn ich möchte | wänn ich möcht(i) | B1, Condition |
| si a ti te gustara / si a ti te gustase | had you liked / if you liked | se vi ŝatus | wenn du möchtest | wänn du möcht(i)sch | B1, Informal, Condition |
| si a usted le gustara / si a usted le gustase | had you liked / if you liked | se vi ŝatus | wenn Sie möchten | wänn Si möchted | B1, Formal, Condition |
| si a él le gustara / si a él le gustase | had he liked / if he liked | se li ŝatus | wenn er möchte | wänn er möcht(i) | B1, Condition |
| si a ella le gustara / si a ella le gustase | had she liked / if she liked | se ŝi ŝatus | wenn sie möchte | wänn si möcht(i) | B1, Condition |
| si le gustara / si le gustase | had it liked / if it liked | se ĝi ŝatus | wenn es möchte | wänn es möcht(i) | B1, Condition |
| si a nosotros nos gustara / si a nosotros nos gustase | had we liked / if we liked | se ni ŝatus | wenn wir möchten | wänn mir möchted | B1, Condition |
| si a nosotras nos gustara / si a nosotras nos gustase | had we liked / if we liked | se ni ŝatus | wenn wir möchten | wänn mir möchted | B1, Condition |
| si a vosotros os gustara / si a vosotros os gustase | had you liked / if you liked | se vi ŝatus | wenn ihr möchtet | wänn ir möchted | B1, Informal, Condition |
| si a vosotras os gustara / si a vosotras os gustase | had you liked / if you liked | se vi ŝatus | wenn ihr möchtet | wänn ir möchted | B1, Informal, Condition |
| si a ustedes les gustara / si a ustedes les gustase | had you liked / if you liked | se vi ŝatus | wenn Sie möchten | wänn Si möchted | B1, Formal, Condition |
| si a ustedes les gustara / si a ustedes les gustase | had you liked / if you liked | se vi ŝatus | wenn Sie möchten | wänn Si möchted | B1, Formal, Condition |
| si a ellos les gustara / si a ellos les gustase | had they liked / if they liked | se ili ŝatus | wenn sie möchten | wänn si möchted | B1, Condition |
| si a ellas les gustara / si a ellas les gustase | had they liked / if they liked | se ili ŝatus | wenn sie möchten | wänn si möchted | B1, Condition |
| a mí me gustaría | I would like | mi ŝatus | ich möchte | ich möcht(i) | B1, Conditioned |
| a ti te gustaría | you would like | vi ŝatus | du möchtest | du möcht(i)sch | B1, Informal, Conditioned |
| a usted le gustaría | you would like | vi ŝatus | Sie möchten | Si möchted | B1, Formal, Conditioned |
| a él le gustaría | he would like | li ŝatus | er möchte | er möcht(i) | B1, Conditioned |
| a ella le gustaría | she would like | ŝi ŝatus | sie möchte | si möcht(i) | B1, Conditioned |
| le gustaría | it would like | ĝi ŝatus | es möchte | es möcht(i) | B1, Conditioned |
| a nosotros nos gustaría | we would like | ni ŝatus | wir möchten | mir möchted | B1, Conditioned |
| a nosotras nos gustaría | we would like | ni ŝatus | wir möchten | mir möchted | B1, Conditioned |
| a vosotros os gustaría | you would like | vi ŝatus | ihr möchtet | ir möchted | B1, Informal, Conditioned |
| a vosotras os gustaría | you would like | vi ŝatus | ihr möchtet | ir möchted | B1, Informal, Conditioned |
| a ustedes les gustaría | you would like | vi ŝatus | Sie möchten | Si möchted | B1, Formal, Conditioned |
| a ustedes les gustaría | you would like | vi ŝatus | Sie möchten | Si möchted | B1, Formal, Conditioned |
| a ellos les gustaría | they would like | ili ŝatus | sie möchten | si möchted | B1, Conditioned |
| a ellas les gustaría | they would like | ili ŝatus | sie möchten | si möchted | B1, Conditioned |
| (él dice que) a mí me gusta | (he says that) I like | (li diras, ke) mi ŝatas | (er sagt, (dass)) ich möge | ich hegi (Objekt) gern / ich hetti (Objekt) gern / ich (Verb) gern / es wüur(d) mir gfale | B1, Indirect speech |
| (él dice que) a ti te gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) du mögest | du hegisch (Objekt) gern / du hettisch (Objekt) gern / du (Verb) gern / es wüur(d) dir gfale | B1, Informal, Indirect speech |
| (él dice que) a usted le gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) Sie möge | Si heged (Objekt) gern / Si heged (Objekt) gern / Si (Verb) gern / es wüur(d) Ine gfale | B1, Formal, Indirect speech |
| (él dice que) a él le gusta | (he says that) he likes | (li diras, ke) li ŝatas | (er sagt, (dass)) er möge | er hegi (Objekt) gern / er hetti (Objekt) gern / er (Verb) gern / es wüur(d) im gfale | B1, Indirect speech |
| (él dice que) a ella le gusta | (he says that) she likes | (li diras, ke) ŝi ŝatas | (er sagt, (dass)) sie mög | si hegi (Objekt) gern / si hetti (Objekt) gern / si (Verb) gern / es wüur(d) ire gfale | B1, Indirect speech |
| (él dice que) le gusta | (he says that) it likes | (li diras, ke) ĝi ŝatas | (er sagt, (dass)) es mög | es hegi (Objekt) gern / es hetti (Objekt) gern / es (Verb) gern / es wüur(d) im gfale | B1, Indirect speech |
| (él dice que) a nosotros nos gusta | (he says that) we like | (li diras, ke) ni ŝatas | (er sagt, (dass)) wir mögen | mir heged (Objekt) gern / mir heged (Objekt) gern / mir (Verb) gern / es wüur(d) Ine gfale | B1, Indirect speech |
| (él dice que) a nosotras nos gusta | (he says that) we like | (li diras, ke) ni ŝatas | (er sagt, (dass)) wir mögen | mir heged (Objekt) gern / mir heged (Objekt) gern / mir (Verb) gern / es wüur(d) Ine gfale | B1, Indirect speech |
| (él dice que) a vosotros os gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) ihr möget | ir heged (Objekt) gern / ir heged (Objekt) gern / ir (Verb) gern / es wüur(d) Ine gfale | B1, Informal, Indirect speech |
| (él dice que) a vosotras os gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) ihr möget | ir heged (Objekt) gern / ir heged (Objekt) gern / ir (Verb) gern / es wüur(d) Ine gfale | B1, Informal, Indirect speech |
| (él dice que) a ustedes les gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) Sie mögen | Si heged (Objekt) gern / Si heged (Objekt) gern / Si (Verb) gern / es wüur(d) Ine gfale | B1, Formal, Indirect speech |
| (él dice que) a ustedes les gusta | (he says that) you like | (li diras, ke) vi ŝatas | (er sagt, (dass)) Sie mögen | Si heged (Objekt) gern / Si heged (Objekt) gern / Si (Verb) gern / es wüur(d) Ine gfale | B1, Formal, Indirect speech |
| (él dice que) a ellos les gusta | (he says that) they like | (li diras, ke) ili ŝatas | (er sagt, (dass)) sie mögen | si heged (Objekt) gern / si heged (Objekt) gern / si (Verb) gern / es wüur(d) Ine gfale | B1, Indirect speech |
| (él dice que) a ellas les gusta | (he says that) they like | (li diras, ke) ili ŝatas | (er sagt, (dass)) sie mögen | si heged (Objekt) gern / si heged (Objekt) gern / si (Verb) gern / es wüur(d) Ine gfale | B1, Indirect speech |

### Verb "to please"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| gustar (a alguien) | to please (someone) | plaĉi (iu) | (jemandem) gefallen | (öpperem) gfale | A1, Infinitive |
| gustado | pleased | plaĉita | gefallen | gfale | A1, Past Participle |
| yo gusto a | I please | mi plaĉas | ich gefalle | ich gfal(e) | A1, Present Simple |
| tú gustas a | you please | vi plaĉas | du gefällst | du gfalsch | A1, Informal, Present Simple |
| usted gusta a | you please | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Simple |
| él gusta a | he pleases | li plaĉas | er gefällt | er gfalt | A1, Present Simple |
| ella gusta a | she pleases | ŝi plaĉas | sie gefällt | si gfalt | A1, Present Simple |
| gusta a | it pleases | ĝi plaĉas | es gefällt | es gfalt | A1, Present Simple |
| nosotros gustamos a | we please | ni plaĉas | wir gefallen | mir gfaled | A1, Present Simple |
| nosotras gustamos a | we please | ni plaĉas | wir gefallen | mir gfaled | A1, Present Simple |
| vosotros gustáis a | you please | vi plaĉas | ihr gefallt | ir gfaled | A1, Informal, Present Simple |
| vosotras gustáis a | you please | vi plaĉas | ihr gefallt | ir gfaled | A1, Informal, Present Simple |
| ustedes gustan a | you please | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Simple |
| ustedes gustan a | you please | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Simple |
| ellos gustan a | they please | ili plaĉas | sie gefallen | si gfaled | A1, Present Simple |
| ellas gustan a | they please | ili plaĉas | sie gefallen | si gfaled | A1, Present Simple |
| yo estoy gustando a | I am pleasing | mi plaĉas | ich gefalle | ich gfale | A1, Present Continuous |
| tú estás gustando a | you are pleasing | vi plaĉas | du gefällst | du gfalsch | A1, Informal, Present Continuous |
| usted está gustando a | you are pleasing | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Continuous |
| él está gustando a | he is pleasing | li plaĉas | er gefällt | er gfalt | A1, Present Continuous |
| ella está gustando a | she is pleasing | ŝi plaĉas | sie gefällt | si gfalt | A1, Present Continuous |
| está gustando a | it is pleasing | ĝi plaĉas | es gefällt | es gfalt | A1, Present Continuous |
| nosotros estamos gustando a | we are pleasing | ni plaĉas | wir gefallen | mir gfaled | A1, Present Continuous |
| nosotras estamos gustando a | we are pleasing | ni plaĉas | wir gefallen | mir gfaled | A1, Present Continuous |
| vosotros estáis gustando a | you are pleasing | vi plaĉas | ihr gefallt | ir gfaled | A1, Informal, Present Continuous |
| vosotras estáis gustando a | you are pleasing | vi plaĉas | ihr gefallt | ir gfaled | A1, Informal, Present Continuous |
| ustedes están gustando a | you are pleasing | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Continuous |
| ustedes están gustando a | you are pleasing | vi plaĉas | Sie gefallen | Si gfaled | A1, Formal, Present Continuous |
| ellos están gustando a | they are pleasing | ili plaĉas | sie gefallen | si gfaled | A1, Present Continuous |
| ellas están gustando a | they are pleasing | ili plaĉas | sie gefallen | si gfaled | A1, Present Continuous |
| yo gustaba a | I pleased | mi plaĉis | ich gefiel |  | A1, Past Simple |
| tú gustabas a | you pleased | vi plaĉis | du gefielst |  | A1, Informal, Past Simple |
| usted gustaba a | you pleased | vi plaĉis | Sie gefielen |  | A1, Formal, Past Simple |
| él gustaba a | he pleased | li plaĉis | er gefiel |  | A1, Past Simple |
| ella gustaba a | she pleased | ŝi plaĉis | sie gefiel |  | A1, Past Simple |
| gustaba a | it pleased | ĝi plaĉis | es gefiel |  | A1, Past Simple |
| nosotros gustábamos a | we pleased | ni plaĉis | wir gefielen |  | A1, Past Simple |
| nosotras gustábamos a | we pleased | ni plaĉis | wir gefielen |  | A1, Past Simple |
| vosotros gustábais a | you pleased | vi plaĉis | ihr gefielt |  | A1, Informal, Past Simple |
| vosotras gustábais a | you pleased | vi plaĉis | ihr gefielt |  | A1, Informal, Past Simple |
| ustedes gustaban a | you pleased | vi plaĉis | Sie gefielen |  | A1, Formal, Past Simple |
| ustedes gustaban a | you pleased | vi plaĉis | Sie gefielen |  | A1, Formal, Past Simple |
| ellos gustaban a | they pleased | ili plaĉis | sie gefielen |  | A1, Past Simple |
| ellas gustaban a | they pleased | ili plaĉis | sie gefielen |  | A1, Past Simple |
| yo he gustado a | I have pleased |  | ich habe gefallen | ich han gfale | A1, Past Perfect |
| tú has gustado a | you have pleased |  | du hast gefallen | du häsch gfale | A1, Informal, Past Perfect |
| usted ha gustado a | you have pleased |  | Sie haben gefallen | Si händ gfale | A1, Formal, Past Perfect |
| él ha gustado a | he has pleased |  | er hat gefallen | er hät gfale | A1, Past Perfect |
| ella ha gustado a | she has pleased |  | sie hat gefallen | si hät gfale | A1, Past Perfect |
| ha gustado a | it has pleased |  | es hat gefallen | es hät gfale | A1, Past Perfect |
| nosotros hemos gustado a | we have pleased |  | wir haben gefallen | mir händ gfale | A1, Past Perfect |
| nosotras hemos gustado a | we have pleased |  | wir haben gefallen | mir händ gfale | A1, Past Perfect |
| vosotros habéis gustado a | you have pleased |  | ihr habt gefallen | ir händ gfale | A1, Informal, Past Perfect |
| vosotras habéis gustado a | you have pleased |  | ihr habt gefallen | ir händ gfale | A1, Informal, Past Perfect |
| ustedes han gustado a | you have pleased |  | Sie haben gefallen | Si händ gfale | A1, Formal, Past Perfect |
| ustedes han gustado a | you have pleased |  | Sie haben gefallen | Si händ gfale | A1, Formal, Past Perfect |
| ellos han gustado a | they have pleased |  | sie haben gefallen | si händ gfale | A1, Past Perfect |
| ellas han gustado a | they have pleased |  | sie haben gefallen | si händ gfale | A1, Past Perfect |
| yo gustaré a | I will please | mi plaĉos | Ich werde gefallen | ich gfale (Zuekunft Ziitadverb) | A2, Future Simple |
| tú gustarás a | you will please | vi plaĉos | du wirst gefallen | du gfalsch (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| usted gustará a | you will please | vi plaĉos | Sie werden gefallen | Si gfaled (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| él gustará a | he will please | li plaĉos | er wird gefallen | er gfalt (Zuekunft Ziitadverb) | A2, Future Simple |
| ella gustará a | she will please | ŝi plaĉos | sie wird gefallen | si gfalt (Zuekunft Ziitadverb) | A2, Future Simple |
| gustará a | it will please | ĝi plaĉos | es wird gefallen | es gfalt (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotros gustaremos a | we will please | ni plaĉos | wir werden gefallen | mir gfaled (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotras gustaremos a | we will please | ni plaĉos | wir werden gefallen | mir gfaled (Zuekunft Ziitadverb) | A2, Future Simple |
| vosotros gustaréis a | you will please | vi plaĉos | du wirst gefallen | ir gfaled (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| vosotras gustaréis a | you will please | vi plaĉos | du wirst gefallen | ir gfaled (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| ustedes gustarán a | you will please | vi plaĉos | Sie werden gefallen | Si gfaled (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ustedes gustarán a | you will please | vi plaĉos | Sie werden gefallen | Si gfaled (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ellos gustarán a | they will please | ili plaĉos | sie werden gefallen | si gfaled (Zuekunft Ziitadverb) | A2, Future Simple |
| ellas gustarán a | they will please | ili plaĉos | sie werden gefallen | si gfaled (Zuekunft Ziitadverb) | A2, Future Simple |
|  | please! | plaĉu! |  |  | A2, Informal, Imperative |
|  | please! | plaĉu! |  |  | A2, Formal, Imperative |
|  | let's please! | ni plaĉu! |  |  | A2, Imperative |
|  | please! | plaĉu! |  |  | A2, Informal, Imperative |
|  | please! | plaĉu! |  |  | A2, Formal, Imperative |
| si yo gustara a / si yo gustase a | had I pleased / if I pleased | se mi plaĉus | wenn ich gefiele / wenn ich würde gefallen | wänn ich gfale wüür(d) | B1, Condition |
| si tú gustaras a / si tú gustases a | had you pleased / if you pleased | se vi plaĉus | wenn du gefielest / wenn du würdest gefallen | wänn du gfale wüür(d)sch | B1, Informal, Condition |
| si usted gustara a / si usted gustase a | had you pleased / if you pleased | se vi plaĉus | wenn Sie gefielen / wenn Sie würden gefallen | wänn Si gfale wüür(d)ed | B1, Formal, Condition |
| si él gustara a / si él gustase a | had he pleased / if he pleased | se li plaĉus | wenn er gefiele / wenn er würde gefallen | wänn er gfale wüür(d) | B1, Condition |
| si ella gustara a / si ella gustase a | had she pleased / if she pleased | se ŝi plaĉus | wenn sie gefiele / wenn sie würde gefallen | wänn si gfale wüür(d) | B1, Condition |
| si gustara a / si gustase a | had it pleased / if it pleased | se ĝi plaĉus | wenn es gefiele / wenn es würde gefallen | wänn es gfale wüür(d) | B1, Condition |
| si nosotros gustaramos a / si nosotros gustasemos a | had we pleased / if we pleased | se ni plaĉus | wenn wir gefielen / wenn wir würden gefallen | wänn mir gfale wüür(d)ed | B1, Condition |
| si nosotras gustaramos a / si nosotras gustasemos a | had we pleased / if we pleased | se ni plaĉus | wenn wir gefielen / wenn wir würden gefallen | wänn mir gfale wüür(d)ed | B1, Condition |
| si vosotros gustárais a / si vosotros gustáseis a | had you pleased / if you pleased | se vi plaĉus | wenn ihr gefielet / wenn ihr würden gefallen | wänn ir gfale wüür(d)ed | B1, Informal, Condition |
| si vosotras gustárais a / si vosotras gustáseis a | had you pleased / if you pleased | se vi plaĉus | wenn ihr gefielet / wenn ihr würden gefallen | wänn ir gfale wüür(d)ed | B1, Informal, Condition |
| si ustedes gustaran a / si ustedes gustasen a | had you pleased / if you pleased | se vi plaĉus | wenn Sie gefielen / wenn Sie würden gefallen | wänn Si gfale wüür(d)ed | B1, Formal, Condition |
| si ustedes gustaran a / si ustedes gustasen a | had you pleased / if you pleased | se vi plaĉus | wenn Sie gefielen / wenn Sie würden gefallen | wänn Si gfale wüür(d)ed | B1, Formal, Condition |
| si ellos gustaran a / si ellos gustasen a | had they pleased / if they pleased | se ili plaĉus | wenn sie gefielen / wenn sie würden gefallen | wänn si gfale wüür(d)ed | B1, Condition |
| si ellas gustaran a / si ellas gustasen a | had they pleased / if they pleased | se ili plaĉus | wenn sie gefielen / wenn sie würden gefallen | wänn si gfale wüür(d)ed | B1, Condition |
| yo gustaría a | I would please | mi plaĉus | ich gefiele / ich würde gefallen | ich wüür(d) gfale | B1, Conditioned |
| tú gustarías a | you would please | vi plaĉus | du gefielest / du würdest gefallen | du wüür(d)sch gfale | B1, Informal, Conditioned |
| usted gustaría a | you would please | vi plaĉus | Sie gefielen / Sie würden gefallen | Si wüür(d)ed gfale | B1, Formal, Conditioned |
| él gustaría a | he would please | li plaĉus | er gefiele / er würde gefallen | er wüür(d) gfale | B1, Conditioned |
| ella gustaría a | she would please | ŝi plaĉus | sie gefiele / sie würde gefallen | si wüür(d) gfale | B1, Conditioned |
| gustaría a | it would please | ĝi plaĉus | es gefiele / es würde gefallen | es wüür(d) gfale | B1, Conditioned |
| nosotros gustaríamos a | we would please | ni plaĉus | wir gefielen / wir würden gefallen | mir wüür(d)ed gfale | B1, Conditioned |
| nosotras gustaríamos a | we would please | ni plaĉus | wir gefielen / wir würden gefallen | mir wüür(d)ed gfale | B1, Conditioned |
| vosotros gustaríais a | you would please | vi plaĉus | ihr gefielet / ihr würden gefallen | ir wüür(d)ed gfale | B1, Informal, Conditioned |
| vosotras gustaríais a | you would please | vi plaĉus | ihr gefielet / ihr würden gefallen | ir wüür(d)ed gfale | B1, Informal, Conditioned |
| ustedes gustarían a | you would please | vi plaĉus | Sie gefielen / Sie würden gefallen | Si wüür(d)ed gfale | B1, Formal, Conditioned |
| ustedes gustarían a | you would please | vi plaĉus | Sie gefielen / Sie würden gefallen | Si wüür(d)ed gfale | B1, Formal, Conditioned |
| ellos gustarían a | they would please | ili plaĉus | sie gefielen / sie würden gefallen | si wüür(d)ed gfale | B1, Conditioned |
| ellas gustarían a | they would please | ili plaĉus | sie gefielen / sie würden gefallen | si wüür(d)ed gfale | B1, Conditioned |
| (él dice que) yo gusto a | (he says that) I please | (li diras, ke) mi plaĉas | (er sagt, (dass)) ich gefalle | (er säit, (dass)) ich weerdi gfale / (er säit, (dass)) ich wiirdi gfale | B1, Indirect speech |
| (él dice que) tú gustas a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) du gefallest | (er säit, (dass)) du weerdisch gfale / (er säit, (dass)) du wiirdisch gfale | B1, Informal, Indirect speech |
| (él dice que) usted gusta a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) Sie gefalle | (er säit, (dass)) Si weerded gfale / (er säit, (dass)) Si wiirded gfale | B1, Formal, Indirect speech |
| (él dice que) él gusta a | (he says that) he pleases | (li diras, ke) li plaĉas | (er sagt, (dass)) er gefalle | (er säit, (dass)) er weerdi gfale / (er säit, (dass)) er wiirdi gfale | B1, Indirect speech |
| (él dice que) ella gusta a | (he says that) she pleases | (li diras, ke) ŝi plaĉas | (er sagt, (dass)) sie gefall | (er säit, (dass)) si weerdi gfale / (er säit, (dass)) si wiirdi gfale | B1, Indirect speech |
| (él dice que) gusta a | (he says that) it pleases | (li diras, ke) ĝi plaĉas | (er sagt, (dass)) es gefall | (er säit, (dass)) es weerdi gfale / (er säit, (dass)) es wiirdi gfale | B1, Indirect speech |
| (él dice que) nosotros gustamos a | (he says that) we please | (li diras, ke) ni plaĉas | (er sagt, (dass)) wir gefallen | (er säit, (dass)) mir weerded gfale / (er säit, (dass)) mir wiirded gfale | B1, Indirect speech |
| (él dice que) nosotras gustamos a | (he says that) we please | (li diras, ke) ni plaĉas | (er sagt, (dass)) wir gefallen | (er säit, (dass)) mir weerded gfale / (er säit, (dass)) mir wiirded gfale | B1, Indirect speech |
| (él dice que) vosotros gustáis a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) ihr gefallet | (er säit, (dass)) ir weerded gfale / (er säit, (dass)) ir wiirded gfale | B1, Informal, Indirect speech |
| (él dice que) vosotras gustáis a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) ihr gefallet | (er säit, (dass)) ir weerded gfale / (er säit, (dass)) ir wiirded gfale | B1, Informal, Indirect speech |
| (él dice que) ustedes gustan a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) Sie gefallen | (er säit, (dass)) Si weerded gfale / (er säit, (dass)) Si wiirded gfale | B1, Formal, Indirect speech |
| (él dice que) ustedes gustan a | (he says that) you please | (li diras, ke) vi plaĉas | (er sagt, (dass)) Sie gefallen | (er säit, (dass)) Si weerded gfale / (er säit, (dass)) Si wiirded gfale | B1, Formal, Indirect speech |
| (él dice que) ellos gustan a | (he says that) they please | (li diras, ke) ili plaĉas | (er sagt, (dass)) sie gefallen | (er säit, (dass)) si weerded gfale / (er säit, (dass)) si wiirded gfale | B1, Indirect speech |
| (él dice que) ellas gustan a | (he says that) they please | (li diras, ke) ili plaĉas | (er sagt, (dass)) sie gefallen | (er säit, (dass)) si weerded gfale / (er säit, (dass)) si wiirded gfale | B1, Indirect speech |

### Verb "to eat"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| comer | to eat | manĝi | essen | ässe | A1, Infinitive |
| comido | ate | manĝita | gegessen | gässe | A1, Past Participle |
| yo como | I eat | mi manĝas | ich esse | ich iss(e) | A1, Present Simple |
| tú comes | you eat | vi manĝas | du isst | du issisch | A1, Informal, Present Simple |
| usted come | you eat | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Simple |
| él come | he eats | li manĝas | er isst | er isst | A1, Present Simple |
| ella come | she eats | ŝi manĝas | sie isst | si isst | A1, Present Simple |
| come | it eats | ĝi manĝas | es isst | es isst | A1, Present Simple |
| nosotros comemos | we eat | ni manĝas | wir essen | mir ässed | A1, Present Simple |
| nosotras comemos | we eat | ni manĝas | wir essen | mir ässed | A1, Present Simple |
| vosotros coméis | you eat | vi manĝas | ihr esst | ir ässed | A1, Informal, Present Simple |
| vosotras coméis | you eat | vi manĝas | ihr esst | ir ässed | A1, Informal, Present Simple |
| ustedes comen | you eat | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Simple |
| ustedes comen | you eat | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Simple |
| ellos comen | they eat | ili manĝas | sie essen | si ässed | A1, Present Simple |
| ellas comen | they eat | ili manĝas | sie essen | si ässed | A1, Present Simple |
| yo estoy comiendo | I am eating | mi manĝas | ich esse | ich isse | A1, Present Continuous |
| tú estás comiendo | you are eating | vi manĝas | du isst | du issisch | A1, Informal, Present Continuous |
| usted está comiendo | you are eating | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Continuous |
| él está comiendo | he is eating | li manĝas | er isst | er isst | A1, Present Continuous |
| ella está comiendo | she is eating | ŝi manĝas | sie isst | si isst | A1, Present Continuous |
| está comiendo | it is eating | ĝi manĝas | es isst | es isst | A1, Present Continuous |
| nosotros estamos comiendo | we are eating | ni manĝas | wir essen | mir ässed | A1, Present Continuous |
| nosotras estamos comiendo | we are eating | ni manĝas | wir essen | mir ässed | A1, Present Continuous |
| vosotros estáis comiendo | you are eating | vi manĝas | ihr esst | ir ässed | A1, Informal, Present Continuous |
| vosotras estáis comiendo | you are eating | vi manĝas | ihr esst | ir ässed | A1, Informal, Present Continuous |
| ustedes están comiendo | you are eating | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Continuous |
| ustedes están comiendo | you are eating | vi manĝas | Sie essen | Si ässed | A1, Formal, Present Continuous |
| ellos están comiendo | they are eating | ili manĝas | sie essen | si ässed | A1, Present Continuous |
| ellas están comiendo | they are eating | ili manĝas | sie essen | si ässed | A1, Present Continuous |
| yo comía | I ate | mi manĝis | ich aß |  | A1, Past Simple |
| tú comías | you ate | vi manĝis | du aßest |  | A1, Informal, Past Simple |
| usted comía | you ate | vi manĝis | Sie aßen |  | A1, Formal, Past Simple |
| él comía | he ate | li manĝis | er aß |  | A1, Past Simple |
| ella comía | she ate | ŝi manĝis | sie aß |  | A1, Past Simple |
| comía | it ate | ĝi manĝis | es aß |  | A1, Past Simple |
| nosotros comíamos | we ate | ni manĝis | wir aßen |  | A1, Past Simple |
| nosotras comíamos | we ate | ni manĝis | wir aßen |  | A1, Past Simple |
| vosotros comíais | you ate | vi manĝis | ihr aßt / ihr aßet |  | A1, Informal, Past Simple |
| vosotras comíais | you ate | vi manĝis | ihr aßt / ihr aßet |  | A1, Informal, Past Simple |
| ustedes comían | you ate | vi manĝis | Sie aßen |  | A1, Formal, Past Simple |
| ustedes comían | you ate | vi manĝis | Sie aßen |  | A1, Formal, Past Simple |
| ellos comían | they ate | ili manĝis | sie aßen |  | A1, Past Simple |
| ellas comían | they ate | ili manĝis | sie aßen |  | A1, Past Simple |
| yo he comido | I have eaten |  | ich habe gegessen | ich han gässe | A1, Past Perfect |
| tú has comido | you have eaten |  | du hast gegessen | du häsch gässe | A1, Informal, Past Perfect |
| usted ha comido | you have eaten |  | Sie haben gegessen | Si händ gässe | A1, Formal, Past Perfect |
| él ha comido | he has eaten |  | er hat gegessen | er hät gässe | A1, Past Perfect |
| ella ha comido | she has eaten |  | sie hat gegessen | si hät gässe | A1, Past Perfect |
| ha comido | it has eaten |  | es hat gegessen | es hät gässe | A1, Past Perfect |
| nosotros hemos comido | we have eaten |  | wir haben gegessen | mir händ gässe | A1, Past Perfect |
| nosotras hemos comido | we have eaten |  | wir haben gegessen | mir händ gässe | A1, Past Perfect |
| vosotros habéis comido | you have eaten |  | ihr habt gegessen | ir händ gässe | A1, Informal, Past Perfect |
| vosotras habéis comido | you have eaten |  | ihr habt gegessen | ir händ gässe | A1, Informal, Past Perfect |
| ustedes han comido | you have eaten |  | Sie haben gegessen | Si händ gässe | A1, Formal, Past Perfect |
| ustedes han comido | you have eaten |  | Sie haben gegessen | Si händ gässe | A1, Formal, Past Perfect |
| ellos han comido | they have eaten |  | sie haben gegessen | si händ gässe | A1, Past Perfect |
| ellas han comido | they have eaten |  | sie haben gegessen | si händ gässe | A1, Past Perfect |
| yo comeré | I will eat | mi manĝos | Ich werde essen | ich isse (Zuekunft Ziitadverb) | A2, Future Simple |
| tú comerás | you will eat | vi manĝos | du wirst essen | du issisch (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| usted comerá | you will eat | vi manĝos | Sie werden essen | Si ässed (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| él comerá | he will eat | li manĝos | er wird essen | er isst (Zuekunft Ziitadverb) | A2, Future Simple |
| ella comerá | she will eat | ŝi manĝos | sie wird essen | si isst (Zuekunft Ziitadverb) | A2, Future Simple |
| comerá | it will eat | ĝi manĝos | es wird essen | es isst (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotros comeremos | we will eat | ni manĝos | wir werden essen | mir ässed (Zuekunft Ziitadverb) | A2, Future Simple |
| nosotras comeremos | we will eat | ni manĝos | wir werden essen | mir ässed (Zuekunft Ziitadverb) | A2, Future Simple |
| vosotros comeréis | you will eat | vi manĝos | du wirst essen | ir ässed (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| vosotras comeréis | you will eat | vi manĝos | du wirst essen | ir ässed (Zuekunft Ziitadverb) | A2, Informal, Future Simple |
| ustedes comerán | you will eat | vi manĝos | Sie werden essen | Si ässed (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ustedes comerán | you will eat | vi manĝos | Sie werden essen | Si ässed (Zuekunft Ziitadverb) | A2, Formal, Future Simple |
| ellos comerán | they will eat | ili manĝos | sie werden essen | si ässed (Zuekunft Ziitadverb) | A2, Future Simple |
| ellas comerán | they will eat | ili manĝos | sie werden essen | si ässed (Zuekunft Ziitadverb) | A2, Future Simple |
| come! | eat! | manĝu! | iß! | iss! | A2, Informal, Imperative |
| coma! | eat! | manĝu! | essen Sie! | ässed Si! | A2, Formal, Imperative |
| comamos! | let's eat! | ni manĝu! | essen! | ässed! | A2, Imperative |
| coman! | eat! | manĝu! | eßt! | ässed! | A2, Informal, Imperative |
| comed! | eat! | manĝu! | essen Sie! | ässed Si! | A2, Formal, Imperative |
| si yo comiera / si yo comiese | had I eaten / if I ate | se mi manĝus | wenn ich äße / wenn ich würde essen | wänn ich ässe wüür(d) | B1, Condition |
| si tú comieras / si tú comieses | had you eaten / if you ate | se vi manĝus | wenn du äßest / wenn du würdest essen | wänn du ässe wüür(d)sch | B1, Informal, Condition |
| si usted comiera / si usted comiese | had you eaten / if you ate | se vi manĝus | wenn Sie äßen / wenn Sie würden essen | wänn Si ässe wüür(d)ed | B1, Formal, Condition |
| si él comiera / si él comiese | had he eaten / if he ate | se li manĝus | wenn er äße / wenn er würde essen | wänn er ässe wüür(d) | B1, Condition |
| si ella comiera / si ella comiese | had she eaten / if she ate | se ŝi manĝus | wenn sie äße / wenn sie würde essen | wänn si ässe wüür(d) | B1, Condition |
| si comiera / si comiese | had it eaten / if it ate | se ĝi manĝus | wenn es äße / wenn es würde essen | wänn es ässe wüür(d) | B1, Condition |
| si nosotros comiéramos / si nosotros comiésemos | had we eaten / if we ate | se ni manĝus | wenn wir äßen / wenn wir würden essen | wänn mir ässe wüür(d)ed | B1, Condition |
| si nosotras comiéramos / si nosotras comiésemos | had we eaten / if we ate | se ni manĝus | wenn wir äßen / wenn wir würden essen | wänn mir ässe wüür(d)ed | B1, Condition |
| si vosotros comiérais / si vosotros comiéseis | had you eaten / if you ate | se vi manĝus | wenn ihr äßet / wenn ihr würden essen | wänn ir ässe wüür(d)ed | B1, Informal, Condition |
| si vosotras comiérais / si vosotras comiéseis | had you eaten / if you ate | se vi manĝus | wenn ihr äßet / wenn ihr würden essen | wänn ir ässe wüür(d)ed | B1, Informal, Condition |
| si ustedes comieran / si ustedes comiesen | had you eaten / if you ate | se vi manĝus | wenn Sie äßen / wenn Sie würden essen | wänn Si ässe wüür(d)ed | B1, Formal, Condition |
| si ustedes comieran / si ustedes comiesen | had you eaten / if you ate | se vi manĝus | wenn Sie äßen / wenn Sie würden essen | wänn Si ässe wüür(d)ed | B1, Formal, Condition |
| si ellos comieran / si ellos comiesen | had they eaten / if they ate | se ili manĝus | wenn sie äßen / wenn sie würden essen | wänn si ässe wüür(d)ed | B1, Condition |
| si ellas comieran / si ellas comiesen | had they eaten / if they ate | se ili manĝus | wenn sie äßen / wenn sie würden essen | wänn si ässe wüür(d)ed | B1, Condition |
| yo comería | I would eat | mi manĝus | ich äße / ich würde essen | ich wüür(d) ässe | B1, Conditioned |
| tú comerías | you would eat | vi manĝus | du äßest / du würdest essen | du wüür(d)sch ässe | B1, Informal, Conditioned |
| usted comería | you would eat | vi manĝus | Sie äßen / Sie würden essen | Si wüür(d)ed ässe | B1, Formal, Conditioned |
| él comería | he would eat | li manĝus | er äße / er würde essen | er wüür(d) ässe | B1, Conditioned |
| ella comería | she would eat | ŝi manĝus | sie äße / sie würde essen | si wüür(d) ässe | B1, Conditioned |
| comería | it would eat | ĝi manĝus | es äße / es würde essen | es wüür(d) ässe | B1, Conditioned |
| nosotros comeríamos | we would eat | ni manĝus | wir äßen / wir würden essen | mir wüür(d)ed ässe | B1, Conditioned |
| nosotras comeríamos | we would eat | ni manĝus | wir äßen / wir würden essen | mir wüür(d)ed ässe | B1, Conditioned |
| vosotros comeríais | you would eat | vi manĝus | ihr äßet / ihr würden essen | ir wüür(d)ed ässe | B1, Informal, Conditioned |
| vosotras comeríais | you would eat | vi manĝus | ihr äßet / ihr würden essen | ir wüür(d)ed ässe | B1, Informal, Conditioned |
| ustedes comerían | you would eat | vi manĝus | Sie äßen / Sie würden essen | Si wüür(d)ed ässe | B1, Formal, Conditioned |
| ustedes comerían | you would eat | vi manĝus | Sie äßen / Sie würden essen | Si wüür(d)ed ässe | B1, Formal, Conditioned |
| ellos comerían | they would eat | ili manĝus | sie äßen / sie würden essen | si wüür(d)ed ässe | B1, Conditioned |
| ellas comerían | they would eat | ili manĝus | sie äßen / sie würden essen | si wüür(d)ed ässe | B1, Conditioned |
| (él dice que) yo como | (he says that) I eat | (li diras, ke) mi manĝas | (er sagt, (dass)) ich esse | (er säit, (dass)) ich weerdi ässe / (er säit, (dass)) ich wiirdi ässe | B1, Indirect speech |
| (él dice que) tú comes | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) du essest | (er säit, (dass)) du weerdisch ässe / (er säit, (dass)) du wiirdisch ässe | B1, Informal, Indirect speech |
| (él dice que) usted come | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) Sie esse | (er säit, (dass)) Si weerded ässe / (er säit, (dass)) Si wiirded ässe | B1, Formal, Indirect speech |
| (él dice que) él come | (he says that) he eats | (li diras, ke) li manĝas | (er sagt, (dass)) er esse | (er säit, (dass)) er weerdi ässe / (er säit, (dass)) er wiirdi ässe | B1, Indirect speech |
| (él dice que) ella come | (he says that) she eats | (li diras, ke) ŝi manĝas | (er sagt, (dass)) sie ess | (er säit, (dass)) si weerdi ässe / (er säit, (dass)) si wiirdi ässe | B1, Indirect speech |
| (él dice que) come | (he says that) it eats | (li diras, ke) ĝi manĝas | (er sagt, (dass)) es ess | (er säit, (dass)) es weerdi ässe / (er säit, (dass)) es wiirdi ässe | B1, Indirect speech |
| (él dice que) nosotros comemos | (he says that) we eat | (li diras, ke) ni manĝas | (er sagt, (dass)) wir essen | (er säit, (dass)) mir weerded ässe / (er säit, (dass)) mir wiirded ässe | B1, Indirect speech |
| (él dice que) nosotras comemos | (he says that) we eat | (li diras, ke) ni manĝas | (er sagt, (dass)) wir essen | (er säit, (dass)) mir weerded ässe / (er säit, (dass)) mir wiirded ässe | B1, Indirect speech |
| (él dice que) vosotros coméis | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) ihr esset | (er säit, (dass)) ir weerded ässe / (er säit, (dass)) ir wiirded ässe | B1, Informal, Indirect speech |
| (él dice que) vosotras coméis | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) ihr esset | (er säit, (dass)) ir weerded ässe / (er säit, (dass)) ir wiirded ässe | B1, Informal, Indirect speech |
| (él dice que) ustedes comen | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) Sie essen | (er säit, (dass)) Si weerded ässe / (er säit, (dass)) Si wiirded ässe | B1, Formal, Indirect speech |
| (él dice que) ustedes comen | (he says that) you eat | (li diras, ke) vi manĝas | (er sagt, (dass)) Sie essen | (er säit, (dass)) Si weerded ässe / (er säit, (dass)) Si wiirded ässe | B1, Formal, Indirect speech |
| (él dice que) ellos comen | (he says that) they eat | (li diras, ke) ili manĝas | (er sagt, (dass)) sie essen | (er säit, (dass)) si weerded ässe / (er säit, (dass)) si wiirded ässe | B1, Indirect speech |
| (él dice que) ellas comen | (he says that) they eat | (li diras, ke) ili manĝas | (er sagt, (dass)) sie essen | (er säit, (dass)) si weerded ässe / (er säit, (dass)) si wiirded ässe | B1, Indirect speech |

### Verb "to buy"
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| comprar | to buy | aĉeti | kaufen | chaufe | A1, Infinitive |
| comprado | bought | aĉetita | gekauft | kauft | A1, Past Participle |
| yo compro | I buy | mi aĉetas | ich kaufe | ich chauf(e) | A1, Present Simple |
| tú compras | you buy | vi aĉetas | du kaufst | du chaufsch | A1, Informal, Present Simple |
| usted compra | you buy | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Simple |
| él compra | he buys | li aĉetas | er kauft | er chauft | A1, Present Simple |
| ella compra | she buys | ŝi aĉetas | sie kauft | si chauft | A1, Present Simple |
| compra | it buys | ĝi aĉetas | es kauft | es chauft | A1, Present Simple |
| nosotros compramos | we buy | ni aĉetas | wir kaufen | mir chaufed | A1, Present Simple |
| nosotras compramos | we buy | ni aĉetas | wir kaufen | mir chaufed | A1, Present Simple |
| vosotros compráis | you buy | vi aĉetas | ihr kauft | ir chaufed | A1, Informal, Present Simple |
| vosotras compráis | you buy | vi aĉetas | ihr kauft | ir chaufed | A1, Informal, Present Simple |
| ustedes compran | you buy | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Simple |
| ustedes compran | you buy | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Simple |
| ellos compran | they buy | ili aĉetas | sie kaufen | si chaufed | A1, Present Simple |
| ellas compran | they buy | ili aĉetas | sie kaufen | si chaufed | A1, Present Simple |
| yo estoy comprando | I am buying | mi aĉetas | ich kaufe | ich chaufe | A1, Present Continuous |
| tú estás comprando | you are buying | vi aĉetas | du kaufst | du chaufsch | A1, Informal, Present Continuous |
| usted está comprando | you are buying | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Continuous |
| él está comprando | he is buying | li aĉetas | er kauft | er chauft | A1, Present Continuous |
| ella está comprando | she is buying | ŝi aĉetas | sie kauft | si chauft | A1, Present Continuous |
| está comprando | it is buying | ĝi aĉetas | es kauft | es chauft | A1, Present Continuous |
| nosotros estamos comprando | we are buying | ni aĉetas | wir kaufen | mir chaufed | A1, Present Continuous |
| nosotras estamos comprando | we are buying | ni aĉetas | wir kaufen | mir chaufed | A1, Present Continuous |
| vosotros estáis comprando | you are buying | vi aĉetas | ihr kauft | ir chaufed | A1, Informal, Present Continuous |
| vosotras estáis comprando | you are buying | vi aĉetas | ihr kauft | ir chaufed | A1, Informal, Present Continuous |
| ustedes están comprando | you are buying | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Continuous |
| ustedes están comprando | you are buying | vi aĉetas | Sie kaufen | Si chaufed | A1, Formal, Present Continuous |
| ellos están comprando | they are buying | ili aĉetas | sie kaufen | si chaufed | A1, Present Continuous |
| ellas están comprando | they are buying | ili aĉetas | sie kaufen | si chaufed | A1, Present Continuous |
| yo compraba | I bought | mi aĉetis | ich kaufte |  | A1, Past Simple |
| tú comprabas | you bought | vi aĉetis | du kauftest |  | A1, Informal, Past Simple |
| usted compraba | you bought | vi aĉetis | Sie kauften |  | A1, Formal, Past Simple |
| él compraba | he bought | li aĉetis | er kaufte |  | A1, Past Simple |
| ella compraba | she bought | ŝi aĉetis | sie kaufte |  | A1, Past Simple |
| compraba | it bought | ĝi aĉetis | es kaufte |  | A1, Past Simple |
| nosotros comprábamos | we bought | ni aĉetis | wir kauften |  | A1, Past Simple |
| nosotras comprábamos | we bought | ni aĉetis | wir kauften |  | A1, Past Simple |
| vosotros comprábais | you bought | vi aĉetis | ihr kauftet |  | A1, Informal, Past Simple |
| vosotras comprábais | you bought | vi aĉetis | ihr kauftet |  | A1, Informal, Past Simple |
| ustedes compraban | you bought | vi aĉetis | Sie kauften |  | A1, Formal, Past Simple |
| ustedes compraban | you bought | vi aĉetis | Sie kauften |  | A1, Formal, Past Simple |
| ellos compraban | they bought | ili aĉetis | sie kauften |  | A1, Past Simple |
| ellas compraban | they bought | ili aĉetis | sie kauften |  | A1, Past Simple |
| yo he comprado | I have bought |  | ich habe gekauft | ich han kauft | A1, Past Perfect |
| tú has comprado | you have bought |  | du hast gekauft | du häsch kauft | A1, Informal, Past Perfect |
| usted ha comprado | you have bought |  | Sie haben gekauft | Si händ kauft | A1, Formal, Past Perfect |
| él ha comprado | he has bought |  | er hat gekauft | er hät kauft | A1, Past Perfect |
| ella ha comprado | she has bought |  | sie hat gekauft | si hät kauft | A1, Past Perfect |
| ha comprado | it has bought |  | es hat gekauft | es hät kauft | A1, Past Perfect |
| nosotros hemos comprado | we have bought |  | wir haben gekauft | mir händ kauft | A1, Past Perfect |
| nosotras hemos comprado | we have bought |  | wir haben gekauft | mir händ kauft | A1, Past Perfect |
| vosotros habéis comprado | you have bought |  | ihr habt gekauft | ir händ kauft | A1, Informal, Past Perfect |
| vosotras habéis comprado | you have bought |  | ihr habt gekauft | ir händ kauft | A1, Informal, Past Perfect |
| ustedes han comprado | you have bought |  | Sie haben gekauft | Si händ kauft | A1, Formal, Past Perfect |
| ustedes han comprado | you have bought |  | Sie haben gekauft | Si händ kauft | A1, Formal, Past Perfect |
| ellos han comprado | they have bought |  | sie haben gekauft | si händ kauft | A1, Past Perfect |
| ellas han comprado | they have bought |  | sie haben gekauft | si händ kauft | A1, Past Perfect |
| yo compraré | I will buy | mi aĉetos | Ich werde kaufen | ich chaufe (Zuekumpt Ziitadverb) | A2, Future Simple |
| tú comprarás | you will buy | vi aĉetos | du wirst kaufen | du chaufsch (Zuekumpt Ziitadverb) | A2, Informal, Future Simple |
| usted comprará | you will buy | vi aĉetos | Sie werden kaufen | Si chaufed (Zuekumpt Ziitadverb) | A2, Formal, Future Simple |
| él comprará | he will buy | li aĉetos | er wird kaufen | er chauft (Zuekumpt Ziitadverb) | A2, Future Simple |
| ella comprará | she will buy | ŝi aĉetos | sie wird kaufen | si chauft (Zuekumpt Ziitadverb) | A2, Future Simple |
| comprará | it will buy | ĝi aĉetos | es wird kaufen | es chauft (Zuekumpt Ziitadverb) | A2, Future Simple |
| nosotros compraremos | we will buy | ni aĉetos | wir werden kaufen | mir chaufed (Zuekumpt Ziitadverb) | A2, Future Simple |
| nosotras compraremos | we will buy | ni aĉetos | wir werden kaufen | mir chaufed (Zuekumpt Ziitadverb) | A2, Future Simple |
| vosotros compraréis | you will buy | vi aĉetos | du wirst kaufen | ir chaufed (Zuekumpt Ziitadverb) | A2, Informal, Future Simple |
| vosotras compraréis | you will buy | vi aĉetos | du wirst kaufen | ir chaufed (Zuekumpt Ziitadverb) | A2, Informal, Future Simple |
| ustedes comprarán | you will buy | vi aĉetos | Sie werden kaufen | Si chaufed (Zuekumpt Ziitadverb) | A2, Formal, Future Simple |
| ustedes comprarán | you will buy | vi aĉetos | Sie werden kaufen | Si chaufed (Zuekumpt Ziitadverb) | A2, Formal, Future Simple |
| ellos comprarán | they will buy | ili aĉetos | sie werden kaufen | si chaufed (Zuekumpt Ziitadverb) | A2, Future Simple |
| ellas comprarán | they will buy | ili aĉetos | sie werden kaufen | si chaufed (Zuekumpt Ziitadverb) | A2, Future Simple |
| compra! | buy! | aĉetu! | kaufe! | chauf! | A2, Informal, Imperative |
| compre! | buy! | aĉetu! | kaufen Sie! | chaufed Si! | A2, Formal, Imperative |
| compremos! | let's buy! | ni aĉetu! | kaufen! | chaufed! | A2, Imperative |
| compren! | buy! | aĉetu! | kauft! | chaufed! | A2, Informal, Imperative |
| comprad! | buy! | aĉetu! | kaufen Sie! | chaufed Si! | A2, Formal, Imperative |
| si yo comprara / si yo comprase | had I bought / if I bought | se mi aĉetus | wenn ich kaufte / wenn ich würde kaufen | wänn ich chaufe wüür(d) | B1, Condition |
| si tú compraras / si tú comprases | had you bought / if you bought | se vi aĉetus | wenn du kauftest / wenn du würdest kaufen | wänn du chaufe wüür(d)sch | B1, Informal, Condition |
| si usted comprara / si usted comprase | had you bought / if you bought | se vi aĉetus | wenn Sie kauften / wenn Sie würden kaufen | wänn Si chaufe wüür(d)ed | B1, Formal, Condition |
| si él comprara / si él comprase | had he bought / if he bought | se li aĉetus | wenn er kaufte / wenn er würde kaufen | wänn er chaufe wüür(d) | B1, Condition |
| si ella comprara / si ella comprase | had she bought / if she bought | se ŝi aĉetus | wenn sie kaufte / wenn sie würde kaufen | wänn si chaufe wüür(d) | B1, Condition |
| si comprara / si comprase | had it bought / if it bought | se ĝi aĉetus | wenn es kaufte / wenn es würde kaufen | wänn es chaufe wüür(d) | B1, Condition |
| si nosotros compraramos / si nosotros comprasemos | had we bought / if we bought | se ni aĉetus | wenn wir kauften / wenn wir würden kaufen | wänn mir chaufe wüür(d)ed | B1, Condition |
| si nosotras compraramos / si nosotras comprasemos | had we bought / if we bought | se ni aĉetus | wenn wir kauften / wenn wir würden kaufen | wänn mir chaufe wüür(d)ed | B1, Condition |
| si vosotros comprárais / si vosotros comprárais | had you bought / if you bought | se vi aĉetus | wenn ihr kauftet / wenn ihr würden kaufen | wänn ir chaufe wüür(d)ed | B1, Informal, Condition |
| si vosotras comprárais / si vosotras comprárais | had you bought / if you bought | se vi aĉetus | wenn ihr kauftet / wenn ihr würden kaufen | wänn ir chaufe wüür(d)ed | B1, Informal, Condition |
| si ustedes compraran / si ustedes comprasen | had you bought / if you bought | se vi aĉetus | wenn Sie kauften / wenn Sie würden kaufen | wänn Si chaufe wüür(d)ed | B1, Formal, Condition |
| si ustedes compraran / si ustedes comprasen | had you bought / if you bought | se vi aĉetus | wenn Sie kauften / wenn Sie würden kaufen | wänn Si chaufe wüür(d)ed | B1, Formal, Condition |
| si ellos compraran / si ellos comprasen | had they bought / if they bought | se ili aĉetus | wenn sie kauften / wenn sie würden kaufen | wänn si chaufe wüür(d)ed | B1, Condition |
| si ellas compraran / si ellas comprasen | had they bought / if they bought | se ili aĉetus | wenn sie kauften / wenn sie würden kaufen | wänn si chaufe wüür(d)ed | B1, Condition |
| yo compraría | I would buy | mi aĉetus | ich kaufte / ich würde kaufen | ich wüür(d) chaufe | B1, Conditioned |
| tú comprarías | you would buy | vi aĉetus | du kauftest / du würdest kaufen | du wüür(d)sch chaufe | B1, Informal, Conditioned |
| usted compraría | you would buy | vi aĉetus | Sie kauften / Sie würden kaufen | Si wüür(d)ed chaufe | B1, Formal, Conditioned |
| él compraría | he would buy | li aĉetus | er kaufte / er würde kaufen | er wüür(d) chaufe | B1, Conditioned |
| ella compraría | she would buy | ŝi aĉetus | sie kaufte / sie würde kaufen | si wüür(d) chaufe | B1, Conditioned |
| compraría | it would buy | ĝi aĉetus | es kaufte / es würde kaufen | es wüür(d) chaufe | B1, Conditioned |
| nosotros compraríamos | we would buy | ni aĉetus | wir kauften / wir würden kaufen | mir wüür(d)ed chaufe | B1, Conditioned |
| nosotras compraríamos | we would buy | ni aĉetus | wir kauften / wir würden kaufen | mir wüür(d)ed chaufe | B1, Conditioned |
| vosotros compraríais | you would buy | vi aĉetus | ihr kauftet / ihr würden kaufen | ir wüür(d)ed chaufe | B1, Informal, Conditioned |
| vosotras compraríais | you would buy | vi aĉetus | ihr kauftet / ihr würden kaufen | ir wüür(d)ed chaufe | B1, Informal, Conditioned |
| ustedes comprarían | you would buy | vi aĉetus | Sie kauften / Sie würden kaufen | Si wüür(d)ed chaufe | B1, Formal, Conditioned |
| ustedes comprarían | you would buy | vi aĉetus | Sie kauften / Sie würden kaufen | Si wüür(d)ed chaufe | B1, Formal, Conditioned |
| ellos comprarían | they would buy | ili aĉetus | sie kauften / sie würden kaufen | si wüür(d)ed chaufe | B1, Conditioned |
| ellas comprarían | they would buy | ili aĉetus | sie kauften / sie würden kaufen | si wüür(d)ed chaufe | B1, Conditioned |
| (él dice que) yo compro | (he says that) I buy | (li diras, ke) mi aĉetas | (er sagt, (dass)) ich kaufe | (er säit, (dass)) ich weerdi chaufe / (er säit, (dass)) ich wiirdi chaufe | B1, Indirect speech |
| (él dice que) tú compras | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) du kaufest | (er säit, (dass)) du weerdisch chaufe / (er säit, (dass)) du wiirdisch chaufe | B1, Informal, Indirect speech |
| (él dice que) usted compra | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) Sie kaufe | (er säit, (dass)) Si weerded chaufe / (er säit, (dass)) Si wiirded chaufe | B1, Formal, Indirect speech |
| (él dice que) él compra | (he says that) he buys | (li diras, ke) li aĉetas | (er sagt, (dass)) er kaufe | (er säit, (dass)) er weerdi chaufe / (er säit, (dass)) er wiirdi chaufe | B1, Indirect speech |
| (él dice que) ella compra | (he says that) she buys | (li diras, ke) ŝi aĉetas | (er sagt, (dass)) sie kauf | (er säit, (dass)) si weerdi chaufe / (er säit, (dass)) si wiirdi chaufe | B1, Indirect speech |
| (él dice que) compra | (he says that) it buys | (li diras, ke) ĝi aĉetas | (er sagt, (dass)) es kauf | (er säit, (dass)) es weerdi chaufe / (er säit, (dass)) es wiirdi chaufe | B1, Indirect speech |
| (él dice que) nosotros compramos | (he says that) we buy | (li diras, ke) ni aĉetas | (er sagt, (dass)) wir kaufen | (er säit, (dass)) mir weerded chaufe / (er säit, (dass)) mir wiirded chaufe | B1, Indirect speech |
| (él dice que) nosotras compramos | (he says that) we buy | (li diras, ke) ni aĉetas | (er sagt, (dass)) wir kaufen | (er säit, (dass)) mir weerded chaufe / (er säit, (dass)) mir wiirded chaufe | B1, Indirect speech |
| (él dice que) vosotros compráis | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) ihr kaufet | (er säit, (dass)) ir weerded chaufe / (er säit, (dass)) ir wiirded chaufe | B1, Informal, Indirect speech |
| (él dice que) vosotras compráis | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) ihr kaufet | (er säit, (dass)) ir weerded chaufe / (er säit, (dass)) ir wiirded chaufe | B1, Informal, Indirect speech |
| (él dice que) ustedes compran | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) Sie kaufen | (er säit, (dass)) Si weerded chaufe / (er säit, (dass)) Si wiirded chaufe | B1, Formal, Indirect speech |
| (él dice que) ustedes compran | (he says that) you buy | (li diras, ke) vi aĉetas | (er sagt, (dass)) Sie kaufen | (er säit, (dass)) Si weerded chaufe / (er säit, (dass)) Si wiirded chaufe | B1, Formal, Indirect speech |
| (él dice que) ellos compran | (he says that) they buy | (li diras, ke) ili aĉetas | (er sagt, (dass)) sie kaufen | (er säit, (dass)) si weerded chaufe / (er säit, (dass)) si wiirded chaufe | B1, Indirect speech |
| (él dice que) ellas compran | (he says that) they buy | (li diras, ke) ili aĉetas | (er sagt, (dass)) sie kaufen | (er säit, (dass)) si weerded chaufe / (er säit, (dass)) si wiirded chaufe | B1, Indirect speech |

<a name="8_alphabet">

## Section 8: Alphabet

### Alphabet
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| a (F) | /ay/ | a | a (N) | a (N) | A1, A a |
| be (F) | /bee/ | bo | be (N) | be (N) | A1, B b |
| ce (F) | /cee/ | co | ce (N) | ce (N) | A1, C c |
| de (F) | /dee/ | do | de (N) | de (N) | A1, D d |
| e (F) | /ee/ | e | e (N) | e (N) | A1, E e |
| efe (F) | /eff/ | fo | ef (N) | ef (N) | A1, F f |
| ge (F) | /gee/ | go | ge (N) | ge (N) | A1, G g |
| hache (F) | /aitch/ | ho | ha (N) | ha (N) | A1, H h |
| i (F) | /aye/ | i | i (N) | i (N) | A1, I i |
| jota (F) | jay/ | jo | jot (N) | jot (N) | A1, J j |
| ka (F) | /kay/ | ko | ka (N) | ka (N) | A1, K k |
| ele (F) | /ell/ | lo | el (N) | el (N) | A1, L l |
| eme (F) | /em/ | mo | em (N) | em (N) | A1, M m |
| ene (F) | /en/ | no | en (N) | en (N) | A1, N n |
| o (F) | /oh/ | o | o (N) | o (N) | A1, O o |
| pe (F) | /pee/ | po | pe (N) | pe (N) | A1, P p |
| cu (F) | /queue/ |  | qu (N) | qu (N) | A1, Q q |
| erre (F) | /ar/ | ro | er (N) | er (N) | A1, R r |
| ese (F) | /ess/ | so | es (N) | es (N) | A1, S s |
| te (F) | /tee/ | to | te (N) | te (N) | A1, T t |
| u (F) | /yoo/ | u | u (N) | u (N) | A1, U u |
| uve (F) | /vee/ | vo | vau (N) | vau (N) | A1, V v |
| uve doble / doble uve (F) | /doubleyoo/ |  | we (N) | we (N) | A1, W w |
| equis (F) | /ex/ |  | ix (N) | ix (N) | A1, X x |
| y griega / ye (F) | /wye/ |  | ypsilon (N) | ypsilon (N) | A1, Yy  |
| zeta (F) | /zed/ | zo | zet (N) | zet (N) | A1, Z z |
| eñe (F) |  |  |  |  | A1, Ñ ñ |
| a con tilde (F) |  |  |  |  | A1, Á á |
| e con tilde (F) |  |  |  |  | A1, É é |
| i con tilde (F) |  |  |  |  | A1, Í í |
| o con tilde (F) |  |  |  |  | A1, Ó ó |
| u con tilde (F) |  |  |  |  | A1, Ú ú |
|  |  | ĉo |  |  | A1, ĉ |
|  |  | ĝo |  |  | A1, ĝ |
|  |  | ĥo |  |  | A1, ĥ |
|  |  | ĵo |  |  | A1, ĵ |
|  |  | ŝo |  |  | A1, ŝ |
|  |  | ŭo |  |  | A1, ŭ |
|  |  |  | a-umlaut (N) | a-umluut (N) | A1, ä |
|  |  |  | o-umlaut (N) | o-umluut (N) | A1, ö |
|  |  |  | u-umlaut (N) | u-umluut (N) | A1, ü |
|  |  |  | eszett / scharfes S (N) |  | A1, ß |

<a name="9_numbers">

## Section 9: Numbers

### Cardinal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cero | zero | nulo | null | null | A1, 0 |
| uno - una | one | unu | eins | äis | A1, 1 |
| dos | two | du | zwei | zwäi | A1, 2 |
| tres | three | tri | drei | drüü | A1, 3 |
| cuatro | four | kvar | vier | vier | A1, 4 |
| cinco | five | kvin | fünf | föif | A1, 5 |
| seis | six | ses | sechs | sächs | A1, 6 |
| siete | seven | sep | sieben | sibe | A1, 7 |
| ocho | eight | ok | acht | acht | A1, 8 |
| nueve | nine | naŭ | neun | nüün | A1, 9 |
| diez | ten | dek | zehn | zää | A1, 10 |
| once | eleven | dek unu | elf | elf | A1, 11 |
| doce | twelve | dek du | zwölf | zwölf | A1, 12 |
| trece | thirteen | dek tri | dreizehn | drizä | A1, 13 |
| catorce | fourteen | dek kvar | vierzehn | vierzä | A1, 14 |
| quince | fifteen | dek kvin | fünfzehn | füfzä | A1, 15 |
| dieciséis | sixteen | dek ses | sechzehn | sächzä | A1, 16 |
| diecisiete | seventeen | dek sep | siebzehn | sibezä | A1, 17 |
| dieciocho | eighteen | dek ok | achtzehn | achzä | A1, 18 |
| diecinueve | nineteen | dek naŭ | neunzehn | nüünzä | A1, 19 |
| veinte | twenty | dudek | zwanzig | zwänzg | A1, 20 |
| veintiuno - veintiuna | twenty-one | dudek unu | einundzwanzig | äinezwänzg | A1, 21 |
| veintidós | twenty-two | dudek du | zweiundzwanzig | zwäiezwänzg | A1, 22 |
| veintitrés | twenty-three | dudek tri | dreiundzwanzig | drüüezwänzg | A1, 23 |
| veinticuatro | twenty-four | dudek kvar | vierundzwanzig | vierezwänzg | A1, 24 |
| veinticinco | twenty-five | dudek kvin | fünfundzwanzig | föifezwänzg | A1, 25 |
| veintiséis | twenty-six | dudek ses | sechsundzwanzig | sächsezwänzg | A1, 26 |
| veintisiete | twenty-seven | dudek sep | siebenundzwanzig | sibenezwänzg | A1, 27 |
| veintiocho | twenty-eight | dudek ok | achtundzwanzig | achtezwänzg | A1, 28 |
| veintinueve | twenty-nine | dudek naŭ | neunundzwanzig | nüünezwänzg | A1, 29 |
| treinta | thirty | tridek | dreißig | driisg | A1, 30 |
| treinta y uno - treinta y una | thirty-one | tridek unu | einunddreißig | äinedriissg | A1, 31 |
| treinta y dos | thirty-two | tridek du | zweiunddreißig | zwäiedriissg | A1, 32 |
| treinta y tres | thirty-three | tridek tri | dreiunddreißig | drüüedriissg | A1, 33 |
| treinta y cuatro | thirty-four | tridek kvar | vierunddreißig | vieredriissg | A1, 34 |
| cuarenta | forty | kvardek | vierzig | vierzg | A1, 40 |
| cincuenta | fifty | kvindek | fünfzig | füfzg | A1, 50 |
| sesenta | sixty | sesdek | sechzig | sächzg | A1, 60 |
| setenta | seventy | sepdek | siebzig | sibezg | A1, 70 |
| setenta y uno | seventy-one | sepdek unu | einundsiebzig | äinesibezg | A1, 71 |
| ochenta | eighty | okdek | achtzig | achzg | A1, 80 |
| ochenta y uno | eighty-one | okdek unu | einundachtzig | äinedachzg | A1, 81 |
| noventa | nineteen | naŭdek | neunzig | nüünzg | A1, 90 |
| noventa y uno | ninety-one | naŭdek unu | einundneunzig | äinenüünzg | A1, 91 |
| cien | one hundred | cent | hundert / einhundert | hundert | A1, 100 |
| ciento uno | one hundred one | cent unu | hunderteins / einhundert | hundertäis | A1, 101 |
| ciento cincuenta | one hundred fifty | cent kvindek | hundertfünfzig / einhundertfünfzig | hundertfüfzg | A1, 150 |
| ciento cincuenta y uno - ciento cincuenta y una | one hundred fifty-one | cent kvindek unu | hunderteinundfünfzig / einhunderteinundfünfzig | hundertäinefüfzg | A1, 151 |
| doscientos | two hundred | ducent | zweihundert | zwäihundert | A1, 200 |
| trescientos | three hundred | tricent | dreihundert | drüühundert | A1, 300 |
| mil | one thousand | mil | tausend / eintausend | tuusig | A1, 1000 |
| mil setecientos | one thousand seven hundred | mil sepcent | tausendsiebenhundert / eintausendsiebenhundert | tuusigsibehundert | A1, 1700 |
| dos mil | two thousand | dumil | zweitausend | zwäituusig | A1, 2000 |
| tres mil | three thousand | trimil | dreitausend | drüütuusig | A1, 3000 |
| diez mil | ten thousand | dek mil | zehntausend | zäätuusig | A1, 10000 |
| cien mil | one hundred thousand | cent mil | einhunderttausend | hunderttuusig | A1, 100000 |
| un millón | one million | miliono | eine Million | e Milioon | A1, 1000000 |
| diez millones | ten million | dek miliono | zehn Millionen | zää Milioon | A1, 10000000 |
| cien millones | one hundred million | cent miliono | hundert Millionen | hundert Milioon | A1, 100000000 |
| mil millones / un millardo | one billion | miliardo | eine Milliarde | e Miliard | A1, 1000000000 |
| un billón | one trillion | biliono | eine Billion | e Bilioon | A1, 1000000000000 |
| uno y medio | one and a half | unu kaj duona | anderthalb / eineinhalb / einundhalb | anderthalb / eineinhalb / einundhalb | B1, 1.5 |

### Ordinal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| 1º / primero | 1st / first | 1-a / unua | 1. / erste | 1. / erst | A1, 1 |
| 2º / segundo | 2nd / second | 2-a / dua | 2. / zweite | 2. / zwäit | A1, 2 |
| 3º / tercero | 3rd / third | 3-a / tria | 3. / dritte | 3. / dritt | A1, 3 |
| 4º / cuarto | 4th / fourth | 4-a / kvara | 4. / vierte | 4. / viert | A1, 4 |
| 5º / quinto | 5th / fifth | 5-a / kvina | 5. / fünfte | 5. / föift | A1, 5 |
| 6º / sexto | 6th / sixth | 6-a / sesa | 6. / sechste | 6. / sächst | A1, 6 |
| 7º / séptimo | 7th / seventh | 7-a / sepa | 7. / siebte | 7. / sibet | A1, 7 |
| 8º / octavo | 8th / eighth | 8-a / oka | 8. / achte | 8. / acht | A1, 8 |
| 9º / noveno | 9th / ninth | 9-a / naŭa | 9. / neunte | 9. / nüünt | A1, 9 |
| 10º / décimo | 10th / tenth | 10-a / deka | 10. / zehnte | 10. / zäät | A1, 10 |
| 11º / decimoprimero / undécimo | 11th / eleventh | 11-a / dek-unua | 11. / elfte | 11. / elft | A1, 11 |
| 12º / decimosegundo / duodécimo | 12th / twelfth | 12-a / dek-dua | 12. / zwölfte | 12. / zwölft | A1, 12 |
| 13º / decimotercero | 13th / thirteenth | 13-a / dek-tria | 13. / dreizehnte | 13. / drizät | A1, 13 |
| 14º / decimocuarto | 14th / fourteenth | 14-a / dek-kvara | 14. / vierzehnte | 14. / vierzät | A1, 14 |
| 15º / decimoquinto | 15th / fifteenth | 15-a / dek-kvina | 15. / fünfzehnte | 15. / füfzät | A1, 15 |
| 16º / decimosexto | 16th / sixteenth | 16-a / dek-sesa | 16. / sechzehnte | 16. / sächszät | A1, 16 |
| 17º / decimoséptimo | 17th / seventeenth | 17-a / dek-sepa | 17. / siebzehnte | 17. / sibezät | A1, 17 |
| 18º / decimooctavo | 18th / eighteenth | 18-a / dek-oka | 18. / achtzehnte | 18. / achtzät | A1, 18 |
| 19º / decimonoveno | 19th / nineteenth | 19-a / dek-naŭa | 19. / neunzehnte | 19. / nüünzät | A1, 19 |
| 20º / vigésimo | 20th / twentieth | 20-a / dudeka | 20. / zwanzigste | 20. / zwänzgist | A1, 20 |
| 21º / vigésimo primero | 21st / twenty-first | 21-a / dudek-unua | 21. / einundzwanzigste | 21. / äinezwänzgist | A1, 21 |
| 22º / vigésimo segundo | 22nd / twenty-second | 22-a / dudek-dua | 22. / zweiundzwanzigste | 22. / zwäiezwänzgist | A1, 22 |
| 23º / vigésimo tercero | 23rd / twenty-third | 23-a / dudek-tria | 23. / dreiundzwanzigste | 23. / drüüezwänzgist | A1, 23 |
| 24º / vigésimo cuarto | 24th / twenty-fourth | 24-a / dudek-kvara | 24. / vierundzwanzigste | 24. / vierezwanzgist | A1, 24 |
| 25º / vigésimo quinto | 25th / twenty-fifth | 25-a / dudek-kvina | 25. / fünfundzwanzigste | 25. / föifezwanzgist | A1, 25 |

### Fractions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| unidad (M) | unit | unuo | Einheit (F) | Äinhäit (F) | B1, 1/1 |
| un medio (M) - una media (F) / una mitad (F) | one half | duono | eine Hälfte (F) | e Hälfti (F) | B1, 1/2 |
| dos medios (M) - dos medias (F) / dos mitades (F) | two halves | du duonoj | zwei Hälften (F) | zwäi hälftene (F) | B1, 2/2 |
| un tercio (M) - una tercia (F) | one third | triono | ein Drittel (M) | en Drüütel (M) | B1, 1/3 |
| un cuarto (M) - una cuarta (F) | one fourth / one quarter | kvarono | ein Viertel (M) / ein Viertel (M) | en Viertel (M) | B1, 1/4 |
| un quinto (M) - una quinta (F) | one fifth | kvinono | ein Fünftel (M) | en Föiftel (M) | B1, 1/5 |
| un sexto (M) - una sexta (F) | one sixth | sesono | ein Sechstel (M) | en Sächstel (M) | B1, 1/6 |
| un séptimo (M) - una séptima (F) | one seventh | sepono | ein Siebtel (M) | en Sibtel (M) | B1, 1/7 |
| un octavo (M) - una octava (F) | one eighth | okono | ein Achtel (M) | en Achtel (M) | B1, 1/8 |
| un noveno (M) - una novena (F) | one ninth | naŭono | ein Neuntel (M) | en Nüüntel (M) | B1, 1/9 |
| un décimo (M) - una décima (F) | one tenth | dekono | ein Zehntel (M) | en Zäätel (M) | B1, 1/10 |
| un onceavo (M) - una onceava (F) | one eleventh | dek unuono | ein Elftel (M) | en Elftel (M) | B1, 1/11 |
| un doceavo (M) - una doceava (F) | one twelfth | dek duono | ein Zwölftel (M) | en Zwölftel (M) | B1, 1/12 |
| un treceavo (M) - una treceava (F) | one thirteenth | dek triono | ein Dreizehntel (M) | en Drizätel (M) | B1, 1/13 |
| un catorceavo (M) - una catorceava (F) | one fourteenth | dek kvarono | ein Vierzehntel (M) | en Vierzätel (M) | B1, 1/14 |
| un quinceavo (M) - una quinceava (F) | one fifteenth | dek kvinono | ein Fünfzehntel (M) | en Füfzätel (M) | B1, 1/15 |
| un dieciseisavo (M) - una dieciseisava (F) | one sixteenth | dek sesono | ein Sechzehntel (M) | en Sächzätel (M) | B1, 1/16 |
| un diecisieteavo (M) - una diecisieteava (F) | one seventeenth | dek sepono | ein Siebzehntel (M) | en Sibezätel (M) | B1, 1/17 |
| un dieciochoavo (M) - una dieciochoava (F) | one eighteenth | dek okono | ein Achtzehntel (M) | en Achzätel (M) | B1, 1/18 |
| un diecinueveavo (M) - una diecinueveava (F) | one nineteenth | dek naŭono | ein Neunzehntel (M) | en Nüünzätel (M) | B1, 1/19 |
| un veinteavo (M) - una veinteava (F) | one twentieth | dudekono | ein Zwanzigstel (M) | en Zwänzgtel (M) | B1, 1/20 |
| dos veinteavos (M) - dos veinteavas (F) | two twentieths | dudek unuono | zwei Zwanzigstel (M) | zwäi Zwänzgstele (M) | B1, 2/20 |
| tres veinteavos (M) - tres veinteavas (F) | three twentieths | dudek duono | drei Zwanzigstel (M) | drüü Zwänzgstele (M) | B1, 3/20 |
| cuatro veinteavos (M) - cuatro veinteavas (F) | four twentieths | dudek triono | vier Zwanzigstel (M) | vier Zwänzgstele (M) | B1, 4/20 |
| cinco veinteavos (M) - cinco veinteavas (F) | five twentieths | dudek kvarono | fünf Zwanzigstel (M) | föif Zwänzgstele (M) | B1, 5/20 |
| seis veinteavos (M) - seis veinteavas (F) | six twentieths | dudek kvinono | sechs Zwanzigstel (M) | sächs Zwänzgstele (M) | B1, 6/20 |
| un centésimo (M) - una centésima (F) | one hundredth | centono | ein Hundertstel (M) | en Hundertstel (M) | B1, 1/100 |
| un milésimo (M) - una milésima (F) | one thousandth | milono | ein Tausendstel (M) | en Tuusigstel (M) | B1, 1/1000 |

### Multiples
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| simple | single | unuobla | Einheit (F) | Äinhäit (F) | B1, 1 |
| doble | double | duobla | doppelt / zweimal so viel / doppelt so viel | dopplet / zwäimal so vil | B1, 2 |
| triple | triple | triobla | Dreifache (N) / dreifach / dreimal so viel | Drüüfache (N) / drüüfach / drüümal so vil | B1, 3 |
| cuádruple / cuádruplo (M) | quadruple | kvarobla | Vierfache (N) / vierfach / viermal so viel | Vierfache (N) / vierfach / viermal so vil | B1, 4 |
| quíntuple / quíntuplo (M) | quintuple | kvintuple | Fünffache (N) / fünffach / fünfmal so viel | Föiffache (N) / föiffach / föifmal so vil | B1, 5 |
| séxtuple / séxtuplo (M) | sextuple | sesdekoble | Sechsfache (N) / sechsfach / sechsmal so viel | Sächsfache (N) / sächsfach / sächsmal so vil | B1, 6 |

### Groups
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| uno solo | single | unuopo | Solo (N) | Solo (N) | B1, 1 |
| dúo | duo | duopo | Duo (N) | Duo (N) | B1, 2 |
| trío | trio | triopo | Trio (N) | Trio (N) | B1, 3 |
| cuarteto | quartet | kvaropo | Quartett (N) | Quartett (N) | B1, 4 |
| quinteto | quintet | kvinopo | Quintett (N) | Quintett (N) | B1, 5 |

### Grouped
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| de uno en uno | one by one | unuope | einer nach dem anderen | äine nach em andere | B1, 1 |
| de dos en dos | two by two | duope | zweierreihe | zwäierräihe | B1, 2 |
| de tres en tres | three by three | triope | dreierreihe | drüüerräihe | B1, 3 |
| de cuatro en cuatro | four by four | kvarope | viererreihe | viererräihe | B1, 4 |
| de cinco en cinco | five by five | kvinope | fünferreihe | föiferräihe | B1, 5 |

### Repetitions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| una vez | once | unufoje | einmal | äimal | B1 |
| dos veces | twice | dufoje | zweimal | zwäimal | B1 |
| tres veces | three times | trifoje | dreimal | drüümal | B1 |
| cuatro veces | four times | kvarfoje | viermal | viermal | B1 |

<a name="10_vocabulary">

## Section 10: Vocabulary

### Verbs: Modal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ser | to be - was/were - been | esti | sein - war - gewesen | sii - bisch - gsii | A1, Infinitive; Constant trait |
| estar | to be - was/were - been | esti | sein - war - gewesen | sii - bisch - gsii | A1, Infinitive; Transient state |
| tener | to have - had - had | havi | haben - hatte -  | haa - haasch - ghaa | A1, Infinitive |
| hacerse - haberse hecho | to become - became - become | iĝi | werden - wurde - geworden | werde - wiirsch - gworde | A1 |
| tener permiso para - tenido permiso para | to may - might -  / to be allowed to | rajti | dürfen | dörfe - dörfsch -  | A1 |
| poder | to can - could -  / to be able - was/were able - been able | povi | können | chöne - chasch - chöne | A1 |
| deber | to shall - should -  | devi | sollen | söle - sölsch -  | A1, soft necessity / suggestion |
| deber | to must -  -  | devi | müssen | müese - muesch - müese | A1, hard necessity |
| querer | to want | voli | wollen | wele - willsch/wottsch - wele | A1 |

### Nouns: Date
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| fecha (F) | date | Dato | Datum (N) | Datum (N) | A1 |

### Adjectives: Date
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| pasado - pasada | last | lasta | letzte | letst | A2, previous |
| último - última | last | lasta | letzte | letst | A2, no one after it |
| siguiente | next | sekva | nächst | nächst | A1 |
| pasado - pasada | past | pasinta | vorbei | verbii | A1 |

### Nouns: Time
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tiempo (M) | time | tempo | Zeit (F) | Ziit (F) | A1 |
| hora (F) | time | horo | Uhr (F) | Uhr (F) | A1 |
| mañana (F) | morning | mateno | Morgen (M) | Morge (M) | A1, time in a day |
| medio día (M) | midday / noon | tagmezo | Mittag (M) | Mittag (M) | A1, time in a day |
| tarde (F) | afternoon | posttagmezo | Nachmittag (M) | Namittag (M) | A1, time in a day |
| noche (F) | evening | vespero | Abend (M) | Aabig (M) | A1, time in a day |
| media noche (F) | midnight | noktomezo | Mitternacht (F) | Mitternacht (F) | A1, time in a day |
| madrugada (F) | night | nokto | Nacht (F) | Nacht (F) | A1, time in a day |
| segundo (M) | second | sekundo | Sekunde (F) | Sekunde (F) | A1, measures |
| minuto (M) | minute | minuto | Minute (F) | Minute (F) | A1, measures |
| hora (F) | hour | horo | Stunde (F) | Stund (F) | A1, measures |
| hora (F) | hour | horo | Stunde (F) | Stunde (F) | A1, measures, hour in training/work |
| pasado (M) | past | pasinteco | Vergangenhait | Vergangehäit | A1, relative |
| presente (M) | present | nuntempo | Gegenwart | Gägewart | A1, relative |
| futuro (M) | future | estonteco | Zukunft | Zuekunft | A1, relative |
| amanecer (M) | sunrise | sunleviĝo / ektagiĝo | Sonnenaufgang (M) | Sunneuufgang (M) | B1, sun |
| atardecer (M) | sunset | sunsubiro | Sonnenuntergang (M) | Sunneuntergang (M) | B1, sun |
| anochecer (M) | dusk | krepusko | Dämmerung (F) | Dämmerig (F) | B1, sun |

### Adjectives: Time
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| pasado - pasada | past | pasinta |  |  | A1 |
| presente | present | nuna |  |  | A1 |
| futuro - futura | future | estonta |  |  | A1 |

### Nouns: Days
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| día (M) | day | tago | Tag (M) | Tag (M) | A1 |
| días (Pl) | days | tagoj | Tage (Pl) | Täg (Pl) | A1 |
| lunes (M) | Monday | Lundo | Montag (M) | Meentig (M) | A1 |
| martes (M) | Tuesday | Mardo | Dienstag (M) | Ziistig (M) | A1 |
| miércoles (M) | Wednesday | Merkredo | Mittwoch (M) | Mittwuch (M) | A1 |
| jueves (M) | Thursday | Ĵaŭdo | Donnerstag (M) | Dunstig (M) | A1 |
| viernes (M) | Friday | Vendredo | Freitag (M) | Friitig (M) | A1 |
| sábado (M) | Saturday | Sabato | Samstag (M) | Samstig (M) | A1 |
| domingo (M) | Sunday | Dimanĉo | Sonntag (M) | Suntig (M) | A1 |

### Nouns: Weeks
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| semana (F) | week | semajno | Woche (F) | Wuche (F) | A1 |
| semanas (Pl) | weeks | semajnoj | Wochen (Pl) | Wuchene (Pl) | A1 |
| semana pasada (F) | last week | pasinta semajno / lasta semajno | letzte Woche (F) | letst Wuche (F) | A1 |
| semana que viene (F) | next week | venonta semajno | nächste Woche (F) | nächst Wuche (F) | A1 |
| fin de semana (M) | weekend | semajnfino | Wochenende (N) | Wuchenänd (N) | A1 |

### Nouns: Months
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| mes (M) | month | monato | Monat (M) | Monät (M) | A1 |
| meses (Pl) | months | monatoj | Monate (Pl) | Mönät (Pl) | A1 |
| enero (M) | January | Januaro | Januar (M) | Januaar (M) | A1, 1 |
| febrero (M) | February | Februaro | Februar (M) | Februaar (M) | A1, 2 |
| marzo (M) | March | Marto | März (M) | März (M) | A1, 3 |
| abril (M) | April | Aprilo | April (M) | April (M) | A1, 4 |
| mayo (M) | May | Majo | Mai (M) | Mai (M) | A1, 5 |
| junio (M) | June | junio | Juni (M) | Juni (M) | A1, 6 |
| julio (M) | July | Julio | Juli (M) | Juli (M) | A1, 7 |
| agosto (M) | August | Aŭgusto | August (M) | August (M) | A1, 8 |
| septiembre (M) | September | Septembro | September (M) | Septämber (M) | A1, 9 |
| octubre (M) | October | Oktobro | Oktober (M) | Oktober (M) | A1, 10 |
| noviembre (M) | November | Novembro | November (M) | Novämber (M) | A1, 11 |
| diciembre (M) | December | Decembro | Dezember (M) | Dezämber (M) | A1, 12 |

### Nouns: Seasons
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| estación (F) | season | sezono | Jahreszeit (F) | Jahresziit (F) | A1 |
| primavera (F) | spring | printempo | Frühling (M) | Früelig (M) | A1 |
| verano (M) | summer | somero | Sommer (M) | Sumer (M) | A1 |
| otoño (M) | autumn | aŭtuno | Herbst (M) | Herbst (M) | A1 |
| invierno (M) | winter | vintro | Winter (M) | Winter (M) | A1 |

### Nouns: Colors
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| color (M) | color | koloro | Farbe (F) | Farb (F) | A1 |
| colores (Pl) | colors | koloroj | Farben (Pl) | Farbe (Pl) | A1 |
| negro (M) | black | nigro | Schwarz (N) | Schwarz (N) | A1 |
| blanco (M) | white | blanko | Weiss (N) | Wiiss (N) | A1 |
| rojo (M) | red | ruĝo | Rot (N) | Root (N) | A1 |
| verde (M) | green | verdo | Grün (N) | Grüe (N) / Grüen (N) | A1 |
| amarillo (M) | yellow | flavo | Gelb (N) | Gääl (N) | A1 |
| azul (M) | blue | bluo | Blau (N) | Blau (N) | A1 |
| marrón (M) | brown | bruno | Braun (N) | Bruu (N) / Bruun (N) | A1 |
| morado (M) / púrpura (M) / violeta (M) | purple | purpuro | Violett (N) | Violett (N) | A1 |
| rosa (M) | pink | rozkoloro | Rosarot (N) | Roseroot (N) | A1 |
| naranja (M) | orange | oranĝo | Orange (N) | Orangsch (N) | A1 |
| gris (M) | gray / grey | grizo | Grau (N) | Grau (N) | A1 |
| azul claro (M) / celeste (M) | clear blue | helbluo | Hellblau (N) | Hellblau (N) | A1 |
| azul oscuro (M) / azul marino (M) | dark blue | malhelbluo | Dunkelblau (N) | Dunkelblau (N) | A1 |
| beis (M) | beige | beja | Beige (N) | Beige (N) | A2 |

### Adjectives: Colors
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| negro | black | nigro | schwarz | schwarz | A1 |
| blanco | white | blanko | weiss | wiiss | A1 |
| rojo | red | ruĝo | rot | root | A1 |
| verde | green | verdo | grün | grüe / grüen | A1 |
| amarillo | yellow | flavo | gelb | gääl | A1 |
| azul | blue | bluo | blau | blau | A1 |
| marrón | brown | bruno | braun | bruu / bruun | A1 |
| morado / púrpura / violeta | purple | purpuro | violett | violett | A1 |
| rosa | pink | rozkoloro | rosarot | roseroot | A1 |
| naranja | orange | oranĝo | orange | orangsch | A1 |
| gris | gray / grey | grizo | grau | grau | A1 |
| azul claro / celeste | clear blue | helbluo | hellblau | hellblau | A1 |
| azul oscuro / azul marino | dark blue | malhelbluo | dunkelblau | dunkelblau | A1 |
| beis | beige | beja | beige | beige | A2 |
| rubio - rubia | blond | blondo | blonde | blonde | A1 |

### Nouns: Amount
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cantidad (F) | amount | kvanto | Menge (F) | Mängi (F) | A2 |
| gota (F) | drop / droplet | guto | Tropfen (M) | Tropfe (M) | A1, liquid |
| litro (M) | liter | litro | Liter (M/N) | Liter (M/N) | A1, liquid |
| centímetro (M) | centimeter | centimetro | Zentimeter (M/N) | Zäntimeter (M/N) | A1, distance/length |
| metro (M) | meter | metro | Meter (M/N) | Meter (M/N) | A1, distance/length |
| kilómetro (M) | kilometer | kilometro | Kilometer (M/N) | Kilometer (M/N) | A1, distance/length |
| gramo (M) | gram | gramo | Gramm (N) | Gramm (N) | A1, weight |
| kilogramo (M) | kilogram | kilogramo | Kilogramm (N) | Kilogramm (N) | A1, weight |
| tonelada (F) | ton | tuno | Tonne (F) | Tonne (F) | A2 |

### Nouns: Food
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| comida (F) | food | manĝo | Lebensmittel (N) | Lebensmittel (N) | A1 |
| desayuno (M) | breakfast | matenmanĝo | Frühstück (N) | z'Morge (M) | A1, meal time |
| tentempié (M) | snack | manĝeto | Snack (M) | Snack (M) / z'Nüüni (M) | B1, meal time |
| almuerzo (M) / comida (F) | lunch | tagmanĝo | Mittagessen (N) | z'Mittag (M) | A1, meal time |
| merienda (F) | snack | manĝeto | Snack (M) | Snack (M) / z'Vieri (M) | B1, meal time |
| cena (F) | dinner | vespermanĝo | Abendessen (N) | z'Nacht (M) | A1, meal time |
| comida (F) | meal | manĝo | Mahlzeit (F) / Speise (F) | Mahlziit (F) | A1, meal time |
| entrante (M) | starter | startigilo | Vorspeise (F) | Vorspiis (F) | A2, meal |
| acompañamiento (M) | side dish | almanĝaĵo | Beilage (F) | Billag / Billag (F) | A1, meal |
| plato (M) | dish | plado | Gericht (N) | Gricht (N) | A1, meal |
| tostada (F) | toast | toasto | Toast (M) | Toast (M) | A1, dish |
| pan (M) | bread | pano | Brot (N) | Brot (N) | A1, dish |
| sandwich (M) | sandwich | sandviĉo | Sandwich (N) | Sandwich (N) | A1, dish |
| bocadillo (M) | sandwich | sandviĉo | Sandwich (N) | Sandwich (N) | A1, dish |
| huevo (M) | egg | ovo | Ei (N) | Ei (N) | A1, dish |
| huevos revueltos (M/Pl) | scrambled eggs | kirlovaĵo | Rührei (N) | Rüerei (N) | A2, dish |
| huevo frito (M) | fried egg | fritita ovo | Spiegelei (N) | Spiegelei (N) | A1, dish |
| patatas fritas (F/Pl) | french fries | terpomfritoj | Pommes frittes (Pl) | Pommes (Pl) / Pommes frittes (Pl) | A1, dish |
| patata cocida (F) | boiled potato | boligita terpomo | gekochte Kartoffel (F) | kochti Härdöpfel (F) | A2, dish |
| patata asada (F) | roast potato | rostita terpomo | Bratkartoffel (F) | Brathardöpfel (F) | A2, dish |
| pizza (F) | pizza | pico | Pizza (F) | Pizza (F) | A2, dish |
| hamburguesa (F) | burger | hamburgero | Hamburger (M) | Hamburger (M) | A1, dish |
| salchicha (F) | sausage | kolbaso | Wurst (F) | Wurst (F) | A1, dish |
| perrito caliente (M) | hot dog / hot dog | kolbasobulko | Hot Dog (N) | Hot Dog (N) | A1, dish |
| albóndiga (F) | meatball | knelo | Fleischbällchen (M) | Fläischbölleli (N) | A2, dish |
| tortilla (F) | omelette / omelet | omleto / ovaĵo | Omelett (N) | Omelette (F) | A2, dish |
| sopa (F) | soup | supo | Suppe (F) | Suppe (F) | A1, liquid dish |
| crema (F) | cream | kremo | Cremesuppe (F) | Cremsuppe (F) | A2, liquid dish |
| caldo (M) | broth | buljono | Brühe (F) | Bouillon (F) | A2, liquid dish |
| receta (F) | recipe | recepto | Rezept (N) | Rezäpt (N) | A2, recipe |
| ingrediente (M) | ingredient | ingredienco | Zutat (F) | Zuetat (F) | A2, recipe |
| harina (F) | flour | faruno | Mehl (N) | Mähl (N) | A1, flour |
| levadura (F) | yeast | gisto / fermentilo | Hefe (F) | Hefe (F) | A2, flour |
| masa (F) | dough | pasto | Teig (M) | Täig (M) | A2, flour |
| pasta (F) | pasta | pasto | Pasta (F) / Nudeln (F/Pl) | Pasta (F) / Nudle (F/Pl) | A2, flour |
| espaguetis (M/Pl) | spaghetti | spagetoj | Spaghetti (F) | Spaghetti (F) | B1, flour |
| macarrones (M/Pl) | macaroni | macaronoj | Makkaroni (Pl) | Hörnli (Pl) / Älplermagrone (Pl) | B1, flour |
| fideos (M/Pl) | noodles | nudeloj | Nudeln (F/Pl) | Nudle (F/Pl) | B1, flour |
| lasaña (F) | lasagne | lasanjo | Lasagne (F) | Lasagne (F) | B1, flour |
| canelones (M/Pl) | cannelloni | kanelloni | Cannelloni (M) | Cannelloni (M) | B1, flour |
| carne (F) | meat | karno | Fleisch (N) | Fläisch (N) | A1, meat |
| pollo (M) | chicken | kokaĵo | Hähnchen (N) | Poulet (N) | A1, meat |
| ternera (F) | beef | bovaĵo | Rindfleisch (N) | Rindfläisch (N) | A1, meat |
| cerdo (M) | pork | porkaĵo | Schweinefleisch (N) | Schweinefläisch (N) | A1, meat |
| cordero (M) | lamb | ŝafido | Lamm (N) | Lamm (N) | A2, meat |
| pato (M) | duck | anaso | Ente (F) | Änte (F) | A1, meat |
| conejo (M) | rabbit | kuniklo | Hase (M) | Haas (M) | A1, meat |
| hamburguesa (F) | hamburger | hamburgero | Hamburger (M) | Hamburger (M) | A1, meat |
| filete (M) | steak | bistejo | Steak (N) | Steak (N) | A2, meat |
| costillas (F/Pl) | ribs | ripoj | Rippen (F/Pl) | Rippe (F/Pl) | A2, meat |
| bacon (M) / tocino (M) / panceta (F) | bacon | porkflankaĵo | Speck (M) | Späck (M) | A2, meat |
| jamón (M) | raw ham | kruda ŝinko | Rohschinken (M) | Rohschinke (M) | A2, meat |
| jamón cocido (M) | ham | ŝinko | Schinken (M) | Schinke (M) | A2, meat |
| lácteos (M/Pl) | dairy products | laktaĵoj | Milchprodukte (N/Pl) | Milchprodukt (N/Pl) | B1, dairy |
| queso (M) | cheese | fromaĝo | Käse (M) | Chäs (M) | A1, dairy |
| yogur (M) | yogurt | jogurto | Joghurt (M) | Joghurt (M) | A1, dairy |
| queso fresco (M) | fresh cheese | freŝa fromaĝo | Frischkäse (M) | Frischchäs (M) | A2, dairy |
| queso brie (M) / brie (M) | Brie cheese | brio | Brie (M) | Brie (M) | A2, dairy |
| queso roquefort (M) / roquefort (M) | Roquefort cheese | rokeforto | Roquefort (M) | Roquefort (M) | A2, dairy |
| requesón (M) | ricotta | rikoto | Ricotta (M) | Ricotta (M) | A2, dairy |
| queso cottage (M) | cottage cheese | kazeo | Hüttenkäse (M) | Hüttechäs (M) | A2, dairy |
| pescado (M) | fish | fiŝo | Fisch (M) | Fisch (M) | A1, fish |
| bacalao (M) | cod | moruo | Kabeljau (M) | Kabeljau (M) | A2, fish |
| salmón (M) | salmon | salmo | Lachs (M) | Lachs (M) | A2, fish |
| anchoa (F) | anchovy | anĉovio | Anchovis (F) | Anchovis (F) | B1, fish |
| atún (M) | tuna | tinuso | Thunfisch (M) | Thunfisch (M) | A1, fish |
| gamba (F) | shrimp | salikoko | Garnele (F) / Krevette (F) | Crevette (F) | A2, fish |
| pulpo (M) | octopus | polpo | Oktopus (M) | Tintefisch (M) | B1, fish |
| calamar (M) | squid | kalmaro | Tintenfisch (M) | Tintefisch (M) | B1, fish |
| cangrejo (M) | crab | krabo | Krabbe (F) | Chräbs (F) | B1, fish |
| verdura (F) / vegetal (M) | vegetable | legomo | Gemüse (N) | Gmües (N) | A1, vegetable |
| ensalada (F) | salad | salato | Salat (M) | Salat (M) | A1, vegetable |
| tomate (M) | tomato | tomato | Tomate (F) | Tomate (F) | A1, vegetable |
| ajo (M) | garlic | ajlo | Knoblauch (M) | Chnoblauch (M) | A2, vegetable |
| cebolla (F) | onion | cepo | Zwiebel (F) | Zwible (F) | A2, vegetable |
| zanahoria (F) | carrot | karoto | Karotte (F) | Rüebli (F) | A2, vegetable |
| pimiento (M) | pepper | pipro | Pfeffer (M) | Pfeffer (M) | A2, vegetable |
| berenjena (F) | eggplant | melongeno | Aubergine (F) | Aubergine (F) | A2, vegetable |
| calabaza (F) | pumpkin | kukurbo | Kürbis (M) | Chürbis (M) | A2, vegetable |
| patata (F) | potato | terpomo | Kartoffel (F) | Härdöffel (F) | A1, vegetable |
| boniato (M) | sweet potato | batato | Süßkartoffel (F) | Süesshärdöpfel (F) | A2, vegetable |
| calabacín (M) | zucchini / courgette | legomkukurbo | Zucchini (F) | Zuchetti (F) | A2, vegetable |
| pepino (M) | cucumber | kukumo | Gurke (F) | Gurke (F) | A2, vegetable |
| aguacate (M) | avocado | avokado | Avocado (F) | Avocado (F) | A2, vegetable |
| espárrago (M) | asparagus | asparago | Spargel (M) | Spargle (M) | A2, vegetable |
| coles de bruselas (F/Pl) | bruselbrasiko | Bruseloj | Rosenkohl (M) | Rosechol (M) | A2, vegetable |
| espinaca (F) | spinach | spinaco | Spinat (M) | Spinat (M) | A2, vegetable |
| lechuga (F) | lettuce | laktuko | Salat (M) | Salat (M) | A1, vegetable |
| canónigo (M) | lamb's lettuce | valerianelo | Gewöhnliche Feldsalat (M) | Nüsslisalat (M) | A2, vegetable |
| champiñón (M) | mushroom | fungo | Champignon (M) | Champignon (M) | A2, fungi |
| seta (F) | mushroom | fungo | Pilz (M) | Pilz (M) | B1, fungi |
| legumbre (F) | legume | legumo | Hülsenfrucht (F) | Hülsefrucht (F) | B1, fungi |
| garbanzo (M) | chickpea | kuketo | Kichererbse (F) | Chichererbsli (N) | A2, fungi |
| guisante (M) | pea | pizo | Erbse (F) | Erbsli (N) | A2, fungi |
| judía (F) | bean | fabo | Bohne (F) | Bohne (F) | A2, fungi |
| soja (F) | soy | sojfabo | Soja (F) | Soja (F) | A1, fungi |
| lenteja (F) | lentil | lentilo | Linse (F) | Linse (F) | A2, fungi |
| cereales (M/Pl) | cereals | cerealoj | Getreide (N) | Geträide (N) | A1, cereals |
| trigo (M) | wheat | tritiko | Weiz (N) | Weize (N) | A1, cereals |
| centeno (M) | rye | sekalo | Roggen (M) | Rogge (M) | B1, cereals |
| cebada (F) | barley | hordeo | Gerste (F) | Gerste (F) | B1, cereals |
| arroz (M) | rice | rizo | Reis (M) | Riis (M) | A1, cereals |
| maiz (M) | corn | maizo | Mais (M) | Mais (M) | A1, cereals |
| avena (F) | oatmeal / grits | grio / avenflokoj | Haferflocken (F/Pl) | Haferflocke (F/Pl) | A2, cereals |
| cereales (M/Pl) | cereal | cerealaĵo | Müsli (N) | Müesli (N) | A1, breakfast, breakfast |
| tofu (M) | tofu | tofu | Tofu (M) | Tofu (M) | A2, tofu |
| fruto seco (M) | nut | nukso | Nuss (F) | Nuss (F) | A1, nuts |
| cacahuete (M) | peanut | ternukso | Erdnuss (F) | Erdnuss (F) | A1, nuts |
| avellana (F) | hazelnut | avello | Haselnuss (F) | Haselnuss (F) | A1, nuts |
| nuez (M) | walnut | juglando | Walnuss (F) | Walnuss (F) | A1, nuts |
| almendra (F) | almond | migdalo | Mandel (F) | Mandle (F) | A1, nuts |
| anacardo (M) | cashew nut | kruĉa nukso | Cashewnuss (F) | Cashewnuss (F) | A2, nuts |
| piñón (M) | pine nut | pinonukso | Pinienkern (M) | Piniecherne (M) | A2, nuts |
| castaña (F) | chestnut | kaŝtano | Kastanie (F) | Kastanie (F) | A2, nuts |
| uva pasa (F) / pasa (F) | raisin | rosino / sekvinbero | Rosine (F) | Rosine (F) | A2, nuts |
| dátil (M) | date | daktilo | Dattel (F) | Dattle (F) | A2, nuts |
| higo seco (M) | dry fig | seka figo | trockene Feige (F) | tröchneti Fiige (F) | B1, nuts |
| fruta (F) | fruit | frukto | Frucht (F) / Obst (N) | Frücht (F) / Obst (N) | A1, fruit |
| naranja (F) | orange | oranĝo | Orange (F) | Orange (F) | A1, fruit |
| manzana (F) | apple | pomo | Apfel (M) | Öpfel (M) | A1, fruit |
| cereza (F) | cherry | ĉerizo | Kirsche (F) | Chriesi (F) | A2, fruit |
| plátano (M) | banana | banano | Banane (F) | Banane (F) | A1, fruit |
| pera (F) | pear | piro | Birne (F) | Bire (F) | A1, fruit |
| limón (M) | lemon | citrono | Zitrone (F) | Zitrone (F) | A1, fruit |
| uva (F) | grape | vinbero | Traube (F) | Truube (F) | A2, fruit |
| pomelo (M) | grapefruit | pomelo | Grapefruit (F) | Grapefruit (F) / Grapefrii (F) | B1, fruit |
| sandía (F) | watermelon | akvomelono | Wassermelone (F) | Wassermelone (F) | A2, fruit |
| melón (M) | melon | melono | Melone (F) | Melone (F) | A2, fruit |
| mango (M) | mango | mango | Mango (F) | Mango (F) | A2, fruit |
| melocotón (M) | peach | persiko | Pfirsich (M) | Pfirsich (M) | A2, fruit |
| pomelo (M) | grapefruit | pomelo | Grapefruit (F) | Grepfi (F) / Grapefruit (F) | A2, fruit |
| coco (M) | coconut | kokoso | Kokosnuss (F) | Kokosnuss (F) | A2, fruit |
| kiwi (M) | kiwi | kivo | Kiwi (F) | Kiwi (F) | A2, fruit |
| cascara (F) | shell | ŝelo | Schale (F) | Schale (F) | A2, food cover |
| piel (F) | skin | haŭto | Haut (F) | Huut (F) | A2, food cover |
| bebida (F) | drink | trinku | Getränk (N) | Getränk (N) | A1, drink |
| agua (F; pero "el agua") | water | akvo | Wasser (N) | Wasser (N) | A1, drink |
| hielo (M) | ice | glacio | Eis (N) | Iis (N) | A1, drink |
| agua con gas (F; pero "el agua") | sparkling water | karbonata akvo | Wasser mit Gas (N) / Wasser mit Kohlensäure (N) | Sprudelwasser (N) | A2, drink |
| agua sin gas (F; pero "el agua") | still water | nekarbonata akvo | Wasser ohne Gas (N) / stilles Wasser (N) | Mineralwasser (N) / stills Wasser (N) | A2, drink |
| agua del grifo (F; pero "el agua") | tap water | kranakvo | Leitungswasser (N) | Hahnewasser (N) | A2, drink |
| agua mineral | mineral water | mineralakvo | Mineralwasser (N) | Mineralwasser (N) | A2, drink |
| zumo (M) | juice | suko | Saft (M) | Saft (M) | A1, drink |
| zumo de naranja (M) | orange juice | oranĝsuko | Orangensaft (M) | Orangesaft (M) | A1, drink |
| cerveza (F) | beer | biero | Bier (N) | Bier (N) | A1, drink |
| refresco (M) | refreshment | malvarmeta trinkaĵo | Erfrischung (F) | Erfrischig (F) | A2, drink |
| vino (M) | wine | vinon | Wein (M) | Wii (M) | A2, drink |
| vaso de vino (M) | glass of wine | vitro da vino | Glas Wein (N) | Glas Wii (N) | A2, drink |
| café (M) | coffee | kafo | Kaffee (M) | Kafi (M) | A2, drink |
| taza de café (M) | cup of coffee | taso da kafo | Tasse Kaffee (F) | Tasse Kafi (F) | A2, drink |
| té (M) | tea | teo | Tee (M) | Tee (M) | A2, drink |
| taza de té (M) | cup of tea | taso de teo | Tasse Tee (F) | Tasse Tee (F) | A2, drink |
| leche (F) | milk | lakto | Milch (F) | Milch (F) | A1, drink |
| nata (F) | cream | kremo | Sahne (F) | Rahm (F) | A2, drink |
| azúcar (F; pero "el azúcar") | sugar | sukero | Zucker (M) | Zucker (M) | A1, sweetener |
| miel (F) | honey | mielo | Honig (M) | Honig (M) | A1, sweetener |
| canela (F) | cinnamon | cinamo | Zimt (M) | Zimt (M) | B1, sweetener |
| azúcar blanco - azúcar blanca (M/F) | white sugar | blanka sukero | weißer Zucker (M) | wiisse Zucker (M) | B1, sweetener |
| azúcar moreno - azúcar morena (M/F) | brown sugar | bruna sukero | brauner Zucker (M) | bruune Zucker (M) | B1, sweetener |
| sacarina (F) | saccharin | sakarino | Saccharin (M) | Saccharin (M) | B1, sweetener |
| edulcorante artificial (M) | artificial sweetener | artefarita dolĉiganto | Süßstoff (M) | Süessstoff (M) | B1, sweetener |
| postre (M) | dessert | deserto | Dessert (N) / Nachspeise (F) | Dessert (N) | A1, dessert |
| tarta (F) | cake | kuko | Kuchen (M) | Chueche (M) | A2, dessert |
| chocolate (M) | chocolate | ĉokolado | Schokolade (F) | Schoggi (F) | A2, dessert |
| tableta de chocolate (F) | chocolate bar | ĉokoladostangeto | Schokoladentafel (F) | Schoggitafle (F) | A2, dessert |
| barrita (F) | bar | stangeto | Riegel (M) | Riigel (M) | A2, dessert |
| pastel (M) | pie | kukaĵo | Kuchen (M) | Chueche (M) | A2, dessert |
| tortitas (F) | pancakes | patkuko | Pfannkuchen (M) | Pfannchueche (M) | B1, dessert |
| helado (M) | ice cream | glaciaĵo | Eis (N) | Glace (N) | A2, dessert |
| caramelo (M) | candy | frandaĵo | Bonbon (N) | Zältli (N) | A1, dessert |
| chicle (M) | chewing gum | maĉgumo | Kaugummi (M) | Kaugummi (M) | A1, dessert |
| bombón (M) | chocolate | bombono | Schokolade (F) | Schoggi (N) | A1, dessert |
| galleta (F) | cookie | kuketo | Keks (M) | Guetzli (N) | A1, dessert |
| bizcocho (M) | sponge cake | babao | Kuchen (M) | Chueche (M) | A2, dessert |
| confitura (F) / mermelada (F) | jam | fruktaĵo / marmelado / konfitaĵo | Marmelade (F) | Konfi (F) | A2, dessert |
| vajilla (F) / vajillería (F) | tableware | manĝilaro | Geschirrset (N) | Gschirrset (N) | B1, ware |
| pieza de vajilla (F) | piece of tableware | peco da manĝilaro | Geschirr (N) | Gschirr (N) | B1, ware |
| bol (M) | bowl | bovlo | Schüssel (F) | Schüssle (F) | A1, ware |
| servilleta (F) | napkin | buŝtuko | Serviette (F) | Serviette (F) | A1, ware |
| cubertería (F) | silverware set / flatware set / cutlery set | manĝilaro | Besteckset (N) | Bsteckset (N) | B1, ware |
| cubierto (M) | piece of silverware | manĝilo |  |  | A1, ware |
| cubiertos (M/Pl) | silverware / flatware / cutlery | manĝilaro | Besteck (N) | Bsteck (N) | A1, ware |
| cuchillo (M) | knife | tranĉilo | Messer (N) | Mässer (N) | A1, ware |
| cuchara (F) | spoon | kulero | Löffel (M) | Löffel (M) | A1, ware |
| tenedor (M) | fork | forko | Gabel (F) | Gable (F) | A1, ware |
| palillos (M/Pl) / palillos chinos (M/Pl) | chopsticks | manĝbastonetoj | Essstäbchen (N) | Ässstäbli (N) | A1, ware |
| plato (M) | plate | telero | Teller (M) | Täller (M) | A1, ware |
| vaso (M) | glass | vitro | Glas (N) | Glas (N) | A1, ware |
| copa (F) | glass | vitro | Glas (N) | Glas (N) | A1, ware |
| taza (F) | cup | taso | Tasse (F) | Tasse (F) | A1, ware |
| jarra (F) | pitcher | kruĉo | Krug (M) | Chrueg (M) | A1, ware |
| fuente (F) | platter | plado | Servierplatte (F) | Servierplatte (F) | A2, ware |
| bandeja (F) | tray | pleto | Tablett (N) | Tablett (N) | B1, ware |
| botella (F) | bottle | botelo | Flasche (F) | Flasche (F) | A1, bottle ware |
| corcho (M) | cork | korko | Kork (M) | Korke (M) | A1, bottle ware |
| tapón (M) | stopper | ŝtopilo | Verschluss (M) | Verschluss (M) | A1, bottle ware |
| chapa (F) | cap | metalŝtopilo | Kronkorken (M) / Kronenkork (M) | Deckel (M) | A1, bottle ware |
| aceite (M) | oil | oleo | Öl (N) | Öl (N) | A2, fat |
| vinagre (M) | vinegar | vinagro | Essig (M) | Essig (M) | A2, fat |
| mantequilla (F) | butter | butero | Butter (F) | Butter (F) / Anke (F) | A2, fat |
| condimento (M) | seasoning | spico | Würze (F) | Gwürz (F) | B1, spice |
| especia (F) | spice | spico | Würze (F) | Gwürz (F) | A2, spice |
| sal (F) | salt | salo | Salz (N) | Salz (N) | A2, spice |
| pimienta (F) | pepper | pipro | Pfeffer (M) | Pfeffer (M) | A2, spice |
| salsa (F) | sauce | saŭco | Soße (F) | Sosse (F) | A2, sauce |
| curry (M) | curry | kareaĵo  | Curry (N) | Curry (N) | A1, sauce |
| ketchup (M) | ketchup | keĉupo | Ketchup (M) | Ketchup (M) | A1, sauce |
| mahonesa (F) / mayonesa (F) | mayonnaise | majonezo | Mayonnaise (F) | Mayonnaise (F) | A1, sauce |
| mostaza (F) | mustard | mustardo | Senf (M) | Sänf (M) | A1, sauce |
| salsa picante (F) | spicy sauce | pika saŭco | pikante Soße (F) | scharfi Sosse (F) | A1, sauce |
| salsa barbacoa (F) | barbecue sauce / BBQ sauce | rostokrada saŭco | Barbecue-Soße (F) | Barbecue-Sosse (F) | A2, sauce |
| fecha de caducidad (F) | expiration date | limdato | Ablaufdatum (N) | Ablaufdatum (N) | A1, food information |
| energía (F) | energy | energio | Energie (F) | Energie (F) | A1, food information |
| caloría (F) | calorie | kalorio | Kalorie (F) | Kalorie (F) | A2, food information |

### Adjectives: Food
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| dulce | sweet | dolĉa | süß | süess | A1, taste |
| salado - salada | savory | saleta | salzig | salzig | A1, taste |
| ácido - ácida | sour | acida | sauer | suur | A2, taste |
| amargo - amarga | bitter | maldolĉa | bitter | bitter | A2, taste |
| picante | spicy | pika | scharf / pikant | scharf | A2, taste |
| suave | mild | milda | mild | mild | A1, taste, not spicy |
| crudo - cruda | raw | krudaj | roh | roh | A2, cooking degree |
| poco hecho - poco hecha | rare | malmulta kuirita | blutig | bluetig | B1, cooking degree |
| un poco menos que hecho - un poco menos que hecha | medium rare | iom malpli ol kuirita | rosa | rosa | B1, cooking degree |
| hecho - hecha / en su punto | medium | kuirita | halb durch | halb dure | A2, cooking degree |
| un poco más que hecho - un poco más que hecha | medium well | iom pli ol kuirita | halb durch | halb dure | B1, cooking degree |
| muy hecho - muy hecha | well done | tre kuirita | durch | dure | A2, cooking degree |
| fundido - fundida | melted | fandita | geschmolzen | gschmolzen | A1, state |
| congelado - congelada | frozen | frostita | eingefroren | iigfrore | A1, state |
| asado - asada | roast | rostita | geröstet | gröstet | A2, state |
| tostado - tostada | roast | rostita | geröstet | gröstet | A2, state |
| frito - frita | fried | fritita | gebraten | brate | A1, state |
| escalfado - escalfada | poached | poĉa | pochiert | pochiert | B1, state |
| asado - asada | grilled | rostita | gegrillt | grillt | A2, state |
| saludable | healthy | sana | gesund | gsund | A2, healthiness |
| poco saludable | unhealthy | malsana | ungesund | ungsund | A2, healthiness |
| delicioso - deliciosa | delicious | bongusta | lecker | fäin | A1, taste to a person |
| asqueroso - asquerosa | disgusting | naŭza | eklig | gruusig | A1, taste to a person |

### Verbs: Food
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| comer | to eat - ate - eaten | manĝi | essen - aß - gegessen | ässe - issisch - gässe | A1 |
| beber | to drink - drank - drunk | trinki | trinken - trank - getrunken | trinke - trinksch - trunke | A1 |
| probar | to taste / to sample | provi | probieren | probiere - probiersch - probiert | A2, e.g. a piece of food, then the item is not left anymore |
| cocinar | to cook | kuiri | kochen | choche - chochsch - kochet | A1 |
| asar | to roast | rosti | grillen | grilliere - grilliersch - grilliert | A2 |
| cocinar al horno | to bake | baki | backen - buk/backte - gebacken | bache - bachsch - bache | A2 |
| congelar | to freeze - froze - frozen | frostigi | gefrieren - gefror - gefroren | gfrüüre - gfrüürsch - gfroore | A2 |
| caducar | to expire | eksvalidiĝi | ablaufen - ablief - abgelaufen | ablaufe - laufsch ab - abgloffe | B1 |

### Nouns: Restaurant
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| restaurante (M) | restaurant | restoracio | Restaurant (N) | Restaurant (N) | A1 |
| personal (M) | staff / service | personaro | Personal (N) | Personal (N) / Serverpersonal (N) | B1, staff |
| camarero (M) | waiter | kelnero | Kellner (M) | Chällner (M) | A2, staff |
| camarera (F) | waitress | kelnerino | Kellnerin (F) | Chällnerin (F) | A2, staff |
| cocinero (M) | cook | kuiristo | Koch (M) | Choch (M) | A2, staff |
| cocinera (F) | cook | kuiristino | Köchin (F) | Chöchin (F) | A2, staff |
| cocina (F) | kitchen | kuirejo | Küche (F) | Chuchi (F) | A2, place |
| olla (F) | pot | poto | Topf (M) | Topf (M) | A1, cooking ware |
| cacerola (F) | pan | kaserolo | Topf (M) | Topf (M) | B1, cooking ware |
| sartén (F) | frying pan | pato | Pfanne (F) | Pfanne (F) | A1, cooking ware |
| exprimidor (M) | juicer | citronpremilo | Entsafter (M) | Entsafter (M) | B1, cooking ware |
| colador (M) | strainer / colander | kribrilo | Sieb (N) | Siib (N) | B1, cooking ware |
| tabla de cortar (F) | cutting board | haktabulo / tranĉtabulo | Schneidebrett (N) | Schniidebrätt (N) | B1, cooking ware |
| papel de cocina (M) | kitchen paper | kuireja papero | Küchenpapier (N) | Chuchipapier (N) | A2, cooking ware |
| papel encerado (M) | wax paper / waxed paper | vaksopapero | Wachspapier (N) / Backpapier (N) | Backpapier (N) | B1, cooking ware |
| papel de aluminio (M) | aluminum foil | aluminia folio | Aluminiumfolie (F) | Alufolie (F) | B1, cooking ware |
| film transparente (M) | transparent film | travidebla folio | Frischhaltefolie (F) | Frischhaltefolie (F) | B1, cooking ware |
| recipiente (M) | container | ujo | Behälter (M) | Behälter (M) | A2, container |
| bote (M) | vessel / container / jar | kruĉo | Behälter (M) | Behälter (M) | A1, container |
| bolsa (F) | bag | sako | Tasche (F) | Tasche (F) | A1, container |
| cesta (F) | basket | korbo | Korb (M) | Chorb (M) | A2, container |
| tupper (M) | tupper | plasta ujo | Tupperbox (F) | Töpperwäär (F) | A1, container |
| caja (F) | box | skatolo | Kiste (F) / Box (F) | Chiste (F) / Box (F) | A1, container |
| lata (F) | can | kano | Dose (F) | Dose (F) | A2, container |
| tapa (F) / tapadera (F) | lid | kovrilo | Deckel (M) | Deckel (M) | A2, container |
| estropajo (M) | scourer / scouring pad | frotlavilo | Stahlwolle (F) | Stahlwulle (F) | B1, cleaning ware |
| estropajo (M) | sponge | frotlavilo | Topfschwamm (M) | Topfschwamm (M) | B1, cleaning ware |
| paño de cocina (M) | kitchen cloth | viŝtuko | Lappen (M) | Lumpe (M) | B1, cleaning ware |
| fairy (M) / detergente lavaplatos (M) / líquido lavaplatos (M) | dishwashing detergent / dishwashing liquid | vazlesivo | Spühlmittel (N) | Spüelmittel (N) | B1, cleaning ware |
| lavavajillas (M) | dishwasher | telerlavilo | Geschirrspüler (M) | Geschirrspüeler (M) | B1, cleaning ware |
| fregadero (M) | sink | gargarujo | Waschbecken (N) | Waschbecki (N) | B1, cleaning ware |
| cuenta (F) | check / bill | fakturo | Rechnung (F) | Rechnig (F) | A1, reservation/payment |
| reserva (F) | reservation | rezervo | Reservierung (F) | Reservierig (F) | A1, reservation/payment |

### Nouns: Plants
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| planta (F) | plant | planto | Pflanze (F) | Pflanze (F) | A1 |
| árbol (M) | tree | arbo | Baum (M) | Baum (M) | A1 |
| césped (M) | lawn | greno | Rasen (M) | Graas (N) | A1 |
| hierba (F) | grass | herbo | Rasen (M) | Graas (N) | A1 |
| flor (F) | flower | floro | Blume (F) | Blueme (F) | A1 |
| arbusto (M) | bush | arbusto | Strauch (M) / Busch (M) | Struuch (M) / Busch (M) | B1 |
| hoja (F) | leaf | folio | Blatt (N) | Blatt (N) | A1 |
| pétalo (M) | petal | petalo | Blütenblatt (N) | Blüeteblatt (N) | A2 |
| fruto (M) | fruit | frukto | Frucht (F) | Frucht (F) | A2 |
| semilla (F) | seed | semo | Samen (M) | Saame (M) | A2 |
| polen (M) | pollen | poleno | Pollen (M) | Polle (M) | B1 |
| malas hierbas (F/Pl) | weeds | herbaĉo | Unkraut (N) | Unchruut (N) | B1 |
| palo (M) | stick | bastono | Stock (M) | Stock (M) | A1 |
| rama (F) | branch | branĉo | Zweig (M) | Zwiig (M) | A2 |
| raíz (F) | root | radiko | Wurzel (F) | Wurzle (F) | A2 |

### Nouns: Fungi
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hongo (M) | fungi | fungo | Pilz (M) | Pilz (M) | B1 |
| moho (M) | mold | ŝimo | Schimmel (M) | Schimmel (M) | B1 |
| musgo (M) | moss | musko | Moos (N) | Moos (N) | B1 |

### Nouns: Work
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| trabajo (M) | work | laboro | Arbeit (F) | Schaffe (M) | A1 |
| compañia (F) | company | kompanio | Firma (F) | Firma (F) | A1, company |
| empresa (F) | enterprise | entrepreno | Unternehmen (N) | Unternahme (N) | A2, company |
| negocio (M) | business | negoco | Geschäft (N) | Gschäft (N) | A2, company |
| objetivo (M) | objective | celo | Ziel (N) | Ziil (N) | A2, objectives |
| proyecto (M) | project | projekto | Projekt (N) | Projekt (N) | A2, objectives |
| fecha tope (F) / fecha límite (F) | deadline / due date | templimo / limdato | Frist (F) | Frist (F) | A2, objectives |
| proceso (M) | process | procedo | Prozess (M) | Prozäss (M) | A2, objectives |
| sistema (F) | system | sistemo | System (N) | System (N) | A2, objectives |
| jefe - jefa | boss / manager | estro / direktisto | Chef - Chefin / Manager - Managerin | Chef - Chefin / Manager - Managerin | A1, staff |
| subordinado - subordinada | report | raporto | Bericht (M) | Bricht (M) | A2, staff |
| empleador - empleadora | employer | dunganto | Arbeitgeber (M) | Arbaitgeber (M) | A2, staff |
| empleado - empleada | employee | dungato | Mitarbeiter (M) | Mitarbaiter (M) | A1, staff |
| trabajador - trabajadora | worker | laboristo | Arbeiter - Arbeiterin | Arbäiter - Arbäiterin | A2, staff |
| becario - becaria | intern | staĝisto | Praktikant (M) | Praktikant (M) | A2, staff |
| lider | leader | ĉefo | Führer - Führerin | Füerer - Füererin | A2, staff |
| director - directora | director | direktoro | Direktor - Direktorin | Direktor - Direktorin | B1, staff |
| ejecutivo - ejecutiva | executive | ekzekutivo | Vorstandmitglied | Vorstandmitgliid | B1, staff |
| vicepresidente - vicepresidenta | vicepresident | vicprezidanto | Vizepräsident - Vizepräsidentin | Vizepräsident - Vizepräsidentin | B1, staff |
| presidente - presidenta | president | prezidanto | Präsident - Präsidentin | Präsident - Präsidentin | B1, staff |
| cliente - clienta | client / customer | kliento / klientino | Kunde - Kundin | Chund - Chundin | A1, staff |
| compañero de trabajo - compañera de trabajo | co-worker / colleage | kunlaboranto / kunlaborantino | Mitarbeiter - Mitarbeiterin / Kollege - Kollegin | Mitarbäiter - Mitarbäiterin / Kolleg - Kollegin | A1, staff |
| socio - socia | associate | asociito | Partner (M) | Partner (M) | A2, staff |
| capacidad (F) | ability | kapableco | Fähigkeit (F) | Fähigkeit (F) | A2, resume |
| capacidades (Pl) | abilities | kapablecoj | Fähigkeiten (Pl) | Fähigkeite (Pl) | A2, resume |
| habilidad (F) | skill | lerteco | Fertigkeit (F) |  | A2, resume |
| habilidades (Pl) | skills | lertecoj | Fertigkeiten (Pl) |  | A2, resume |
| conocimiento (M) | knowledge | scio | Wissen (N) | Wüsse (N) | A2, resume |
| conocimientos (Pl) | knowledge | scio | Wissen (N) | Wüsse (N) | A2, resume |
| experiencia (F) | experience | sperto | Erfahrung (F) | Erfahrig (F) | A2, resume |
| liderazgo (M) | leadership | gvidanteco | Führung (F) | Füerig (F) | B1, resume |
| responsabilidad (F) | responsibility | respondeco | Verantwortung (F) | Verantwortig (F) | B1, resume |
| coordinación (F) | coordination | kunordigo | Koordinierung (F) | Koordinierig (F) | B1, resume |
| salario (M) / sueldo (M) | salary | salajro | Gehalt (N) | Lohn (M) / Ghalt (N) | A1, hiring |
| entrevista (F) / entrevista de trabajo (F) | interview | intervjuo | Vorstellungsgespräch (N) / Interview (N) | Vorstelligsgspröch (N) / Interview (N) | A2, hiring |
| oferta de trabajo (F) | job offer | laborposteno | Jobangebot (N) | Jobaagebot (N) | A2, hiring |
| solicitud de trabajo (F) | job application | laborpostenpeto | Bewerbung (F) | Bewerbig (F) | A2, hiring |
| currículum (M) | resume | karierresumo | Lebenslauf (M) | Läbenslauf (M) | A2, hiring |
| puesto de trabajo (M) | position | pozicio | Arbeitsplatz (M) | Arbaitsplatz (M) | A2, hiring |
| contrato (M) | contract | kontrakto | Vertrag (M) | Vertrag (M) | A2, hiring |
| tarifa (F) / honorario (M) | fee | honorario | Gebühr (F) | Gebühr (F) | B1, business |
| anuncio (M) | ad / advertisement | anonco / reklamo | Anzeige (F) / Werbung (F) | Aazäig (F) / Werbi (F) | A1, business |
| estafa (F) / fraude (M) | fraud | trompo / fraŭdo | Betrug (M) | Betrug (M) | B1, bad business |
| oficina (F) | office | oficejo | Büro (N) | Büro (N) | A1, office |
| archivador (M) | file cabinet | dosierkabineto | Aktenschrank (M) | Akteschrank (M) | B1, office |
| escritorio (M) | desk | skribotablo | Schreibtisch (M) | Pult (M) / Schriibtisch (M) | A1, office |
| flexo (M) / lámpara de escritorio (F) | balanced-arm lamp / desk lamp | skribotabla lampo / laborlumo | Schreibtischlampe (F) | Pultlampe (F) / Schriibtischlampe (F) | A2, office |
| maletín (M) | briefcase | teko | Aktentasche (F) | Aktetäsche (F) | A2, office |
| documento (M) | document | dokumento | Dokument (N) | Dokumänt (N) | A2, office |
| horario (M) | schedule / timetable | horaro | Stundenplan (M) | Stundeplan (M) | A1, schedule |
| servicio (M) | service | servo | Dienst (M) | Dienst (M) | A2, matters |
| asunto (M) | matter / affair | afero | Angelegenheit (F) | Aaglägenhäit (F) | A2, matters |
| requisito (M) | requirement | postulo | Anforderung (F) | Aaforderig (F) | A2, matters |
| borrador (M) | draft | malneto | Entwurf (M) | Entwurf (M) | A1, communication |
| circular (F) | memo | memo | Memo (N) | Memo (N) | B1, communication |
| nota (F) | note | noto | Notiz (F) | Notiz (F) | A1, communication |
| instrucciones (F/Pl) | instructions | instrukcioj | Anweisungen (F/Pl) | Aawiisige (F/Pl) | A1, communication |
| información (F) | information | informo | Information (F) | Information (F) | A1, communication |
| informe (M) | report | raporto | Bericht (M) | Bricht (M) | A2, communication |
| datos (M/Pl) | data | datumo | Daten (Pl) | Date (Pl) | A1, communication |
| baja médica (F) | medical leave | malsana permeso | Arbeitsunfähigkeit (F) | Arbeitsunfähigkäit (F) | A2, leave |
| alta médica (F) | medical discharge | malsana permeso fino | Arbeitsfähigkeit (F) | Arbeitsfähigkäit (F) | A2, leave |
| excedencia (F) | leave | forpermeso | Urlaub (M) | Ferie (Pl) | B1, leave |

### Nouns: Health
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| reunión (F) | meeting | kunveno | Termin (M) | Termin (M) | A1, meeting |

### Verbs: Work
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| liderar / dirigir | to lead - led - led | gvidi | führen | füere - füersch - gfüert | A2 |
| trabajar | to work | labori | arbeiten - arbeitete - gearbeitet | schaffe - schaffsch - gschaffet | A1 |
| escanear | to scan | skani | scannen | scäne - scännsch - gscännt | A1 |
| hacer huelga - haber hecho huelga | to go on strike - went on strike - gone on strike | striki | streichen - strich - gestrichen | sträiche - sträichsch - gsträicht | B1 |
| contratar | to hire | dungi | einstellen - stellte ein - eingestellt | iistelle - stellsch ii - iigstellt | A2, hiring |
| despedir | to fire | maldungi | feuern / entlassen - entließ - entlassen | entlaa - entlaasch - entlah | A2, hiring |
| dejar un trabajo | to quit a job - quitted/quit a job - | forlasi laboron | kündigen | kündige - kündigsch - kündiget/kündigt | A2, hiring |

### Verbs: Health
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| acordar una reunión | to arrange a meeting | aranĝi kunvenon | ein Termin vereinbaren - vereinbarte ein Termin - ein Termin vereinbart | en Termin veriibare - veriibarsch en Termin - en Termin veriibart | A2, meetings |
| aplazar una reunión / posponer una reunión - pospuesto una reunión / retrasar una reunión | to postpone a meeting | prokrasti kunvenon | ein Termin verschieben - verschob ein Termin - ein Termin verschoben | en Termin verschiebe - verschiebsch en Termin - en Termin verschobe | A2, meetings |
| cancelar una reunión | to cancel a meeting | nuligi kunvenon | ein Termin absagen - sagte ein Termin ab - ein Termin abgesagt | en Termin absäge - säisch en Termin ab - en Termin abgsäit | A2, meetings |

### Nouns: Tools
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| herramienta (F) | tool | ilo | Werkzeug (N) | Werkzüüg (N) | A1 |
| caja de herramientas (F) | tool box | ilobreto | Werkzeugkasten (M) | Werkzüügchaste (M) | A2 |
| destornillador (M) | screwdriver | ŝraŭboturnilo / ŝraŭbilo | Schraubendreher (M) | Schruubezieher (M) | A1 |
| destornillador eléctrico (M) | electric screwdriver | elektra ŝraŭbilo | Elektroschrauber (M) | Elektroschruubezieher (M) | B1 |
| martillo (M) | hammer | martelo | Hammer (M) | Hammer (M) | A1 |
| llave inglesa (F) | spanner | ŝraŭbŝlosilo / boltilo | Schraubenschlüssel (M) | Schruubeschlüssel (M) | B1 |
| alicates (M/Pl) | pliers | pinĉtenajlo | Zange (F) | Zange (F) | B1 |
| tenazas (F/Pl) | tongs | tenajlo / pinĉilo | Zange (F) | Zange (F) | B1 |
| taladro (M) | drill | drilo | Bohrer (M) | Bohrer (M) | B1 |
| barra (F) | bar | stango | Stange (F) | Stange (F) | B1 |
| escalera (F) | ladder | ŝtupetaro | Leiter (F) | Läitere (F) | A2 |
| metro (M) | meter | mezurilo | Messband (N) | Mässband (N) | A2 |
| cinta métrica (F) | tape measure / measuring tape | mezurbendo | Messband (N) | Mässband (N) | A2 |
| lupa (F) | magnifying glass | grandiga vitro / lupeo | Lupe (F) | Lupe (F) | B1 |
| linterna (F) | flashlight | poŝlampo | Taschenlampe (F) | Taschelampe (F) | A2 |
| tornillo (M) | screw | ŝraŭbo | Schraube (F) | Schruube (F) | B1, small ware |
| perno (M) | bolt | bolto | Bolzen (M) | Bolze (M) | B1, small ware |
| tuerca (F) | nut | ŝraŭbingo | Mutter (F) | Muettere (F) | B1, small ware |
| clavo (M) | nail | ungo | Nagel (M) | Nagel (M) | B1, small ware |
| arandela (F) | washer | platringo | Dichtungsring (M) | Dichtigsring (M) | B1, small ware |

### Nouns: Professions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| profesión (F) | profession | profesio | Beruf (M) | Bruef (M) | A1 |
| programador - programadora | programmer | programisto | Programmierer - Programmiererin | Programmierer - Programmiererin | A2 |
| reportero - reportera | reporter | raportisto | Reporter - Reporterin | Reporter - Reporterin | A2 |
| profesor - profesora | teacher | instruisto | Lehrer - Lehrerin | Lehrer - Lehrerin | A1 |
| maestro - maestra | teacher | instruisto | Lehrer - Lehrerin | Lehrer - Lehrerin | A1 |
| banquero - banquera | bank manager | banka administranto | Bank-Manager - Bank-Managerin | Bank-Manager - Bank-Managerin | A1 |
| amo de casa - ama de casa | homemaker - housewife | dommastro - dommastrino | Hausmann - Hausfrau | Huusmaa - Huusfrau | A2 |
| ingeniero - ingeniera | engineer | inĝeniero | Ingenieur - Ingenieurin | Ängenieur - Ängenieurin | A2 |
| jefe de ventas - jefa de ventas | sales manager | direktisto de vendoj | Verkaufsleiter - Verkaufsleiterin | Verchaufsläiter - Verchaufsläiterin | B1 |
| jefe - jefa | manager | direktisto | Manager - Managerin | Manager - Managerin | A2 |
| vendedor - vendedora | salesperson | vendisto | Verkäufer - Verkäuferin | Verchäufer - Verchäuferin | A1 |
| policía | policeman - policewoman | policisto / policano | Polizist - Polizistin | Polizist - Polizistin | A1 |
| bombero - bombera | firefighter / fireman - firewoman | fajrobrigadisto - fajrestingisto | Feuerwehrmann - Feuerwehrfrau | Füürwehrmann - Füürwehrfrau | A1 |
| médico - médica | doctor | kuracisto | Arzt - Arztin | Arzt - Artzin | A2 |
| enfermero - enfermera | nurse | flegisto | Krankenpfleger - Krankenpflegerin - Krankenschwester | Chrankepfleger - Chrankeschwöster | A1 |
| payaso - payasa | clown | pajaco | Clown | Clown | B1 |
| portero - portera / conserje / bedel | janitor | domprizorgisto | Hausmeister - Hausmeisterin | Huusabwart - Huusabwartin | B1 |
| rey - reina | king - queen | reĝo / damo | König - Königin | König - Königin | A1 |
| actor - actriz | actor - actress | aktoro / rolisto | Schauspieler - Schauspielerin | Schauspiiler - Schauspiilerin | A2 |
| artista | artist | artisto | Künstler - Künsterlin | Künstler - Künsterlin | B1 |

### Nouns: Stationery
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sello (M) | postmark | poŝtmarko | Briefmarke (F) | Briefmarke (F) | A1 |
| sobre (M) | envelope | koverto | Umschlag (M) | Couvert (N) | A1 |
| tarjeta de negocios (F) | business card | vizitkarto / nomkarto | Visitenkarte (F) | Visitecharte (F) | B1 |
| sello de goma (M) | rubber stamp | stampilo | Stempel (M) | Stämpfel (M) | B1 |
| archivador (M) | file | arkivo / dosiero | Briefordner (M) | Briefordner (M) | B1 |
| calendario (M) | calendar | kalendaro | Kalender (M) | Kalender (M) | A1 |
| carpeta (F) | folder | dosierujo | Ordner (M) / Mappe (M) | Ordner (M) / Mappe (M) | A2 |

### Nouns: Ocassions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| fiesta (F) | party | festo | Party (F) | Party (F) | A1 |
| celebración (F) | celebration | festo | Feier (F) | Fiir (F) | A2 |
| aniversario (M) | anniversary | datreveno | Jahrestag (M) | Jaarestag (M) | A2 |
| evento (M) | event | okazaĵo | Ereignis (N) | Ereignis (N) | A2 |
| cumpleaños (M) | birthday | naskiĝtago | Geburtstag (M) | Geburtstag (M) / Geburi (N) | A1 |
| boda (F) | wedding | edziĝo | Hochzeit (F) | Hochziit (F) | A2 |
| funeral (M) | funeral | enterigiro / funebraĵo | Beerdigung (F) | Beerdigung (F) | A2 |
| navidad (F) | Christmas | Kristnasko | Weihnachten (N) | Wienachte (N) | A1, specific holidays |
| año nuevo (M) | new year | novjaro / novjara tago | Neujahr (N) | Neujaar (N) | A1, specific holidays |
| nochevieja (F) | New Year's Eve | silvestro / jarfina tago | Silvester (M) | Silväster (M) | A1, specific holidays |
| pascua (F) / semana santa (F) | easter / holy week | pasko / sankta semajno | Ostern (N) | Ostere (N) | A1, specific holidays |
| fiesta (F) | holiday | feriado | Ferien (Pl) | Ferie (Pl) | A1, vacations |
| vacaciones (F/Pl) | vacation | ferio | Urlaub (M) | Ferie (Pl) | A1, vacations |
| regalo (M) | gift | donaco | Geschenk (N) | Gschänk (N) | A1, gift |
| regalos (Pl) | gifts | donacoj | Geschenke (Pl) | Gschänkli (Pl) | A1, gift |
| regalo de cumpleaños (M) | birthday gift | naskiĝtago donaco | Geburtstagsgeschenk (N) | Geburtstagsgschänk (N) / Geburigschänk (N | A1, gift |
| tarjeta de cumpleaños (F) | birthday card | naskiĝtaga karto | Geburtstagskarte (F) | Geburtstagscharte (F) | B1, gift |
| tarjeta (F) | card | karto | Grußkarte (F) / Karte (F) | Charte (F) | B1, gift |
| firma (F) | signature | subskribo | Unterschrift (F) | Unterschrift (F) | A1, signature |
| carta (F) | letter | letero | Brief (M) | Brief (M) | A1, mail |
| postal (F) | postcard | poŝtkarto | Postkarte (F) | Postcharte (F) | B1, mail |
| paquete (M) | package | pakaĵo | Paket (N) | Päckli (N) | A1, mail |
| buzón (M) | mailbox | leterkesto | Postfach (N) | Postfach (N) | A1, mail |
| correo (M) | mail | poŝto | Post (F) | Post (F) | A1, mail |
| correo certitficado (M) | certified mail | atestita poŝto | eingeschriebener Brief (M) | iigschriibene Brief (M) | B1, mail |
| globo (M) | balloon | balono | Ballon (M) | Ballon (M) | A2, celebration ware |
| petardo (M) | firecracker | petardo | Feuerwerkskörper (M) | Füürwerch (N) | B1, celebration ware |
| fuegos artificiales (M/Pl) | fireworks | fajraĵo / piroteknikaĵo | Feuerwerk (N) | Füürwerch (N) | A2, celebration ware |
| cohete (M) | rocket | raketo | Rakete (F) | Rakete (F) | B1, celebration ware |

### Nouns: Papercraft
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| lapiz (M) | pencil | krajono | Bleistift (M) | Bläistift (M) | A1 |
| goma de borrar (F) / goma (F) | eraser | skrapileto / skrapgumo | Radiergummi (N) | Gummi (N) | A1 |
| sacapuntas (M) | pencil sharpener | krajonpintigilo | Anspitzer (M) | Spitzer (M) | A1 |
| bolígrafo (M) / boli (M) | pen | plumo | Kugelschreiber (M) / Kugelstift (M) / Kuli (M) | Chugelschriiber (M) / Chugi (M) / Stift (M) | A1 |
| pluma (F) / pluma estilográfica (F) | fountain pen | fontoplumo | Füllfederhalter (M) / Füller (M) / Füllhalter (M) / Füllfeder (F) | Fülli (N) | A2 |
| tinta (F) | ink | inko | Tinte (F) | Tinte (F) | A2 |
| rotulador (M) | marker pen | markilo | Textmarker (M) | Lüüchtstift (M) | A2 |
| cartulina (F) | pasteboard | kartonpapero | Karton (M) | Karton (M) | A2 |
| tijeras (F/Pl) | scissors | tondilo | Schere (F) | Scher (F) | A2 |
| folio (M) | sheet | folio | Blatt Papier (N) | Blatt Papier (N) / Blatt (N) | A2 |
| regla (F) | ruler | mezurilo | Lineal (N) | Lineal (N) | A2 |
| escuadra (F) | set square / triangle | angulilo | Geodreieck (N) | Geodrüüeck (N) | B1 |
| cartabón (M) | set square / triangle | angulilo | Winkel (M) | Winkel (M) | B1 |
| transportador de ángulos (M) | protractor | angulmezurilo | Winkelmesser (M) | Winkelmässer (M) | B1 |
| compás (M) | compass | kompaso | Zirkel (M) | Zirkel (M) | B1 |
| tippex (M) / corrector líquido (M) | correction fluid | korekta likvo | Korrekturmittel (N) | Tippex (N) | A2 |
| tippex (M) / cinta correctora (F) | correction tape | korekta rubando | Korrekturband (N) | Tippex (N) | A2 |
| fixo (M) / cinta adhesiva (F) | adhesive tape | glubendo | Klebeband (N) | Chläbi (N) | A2 |
| pegamento (M) | glue | gluo | Leim (M) / Klebstoff (M) | Liim (M) | A2 |
| cola (F) | glue | gluo | Leim (M) / Klebstoff (M) | Liim (M) | A2 |

### Phrases: Mathematics
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| A más B | A plus B | A kaj B | A plus B | A plus B | A1, A+B |
| es igual a C / son C | is equal to C / yields C | faras C / estas C / egalas C | gibt C | git C | A1, A+B=C |
| A menos B | A minus B | A minus B | B minus B | B minus B | A1, A-B |
| A por B / A multiplicado por B | A times B / A multiplied by B | A multiplikite per B / A-oble B / A oble B | A mal B / A multipliziert mit B | A mal B / A multipliziert mit B | A1, A*B |
| A entre B / A dividido entre B | A divided by B | A dividite per B | A geteilt durch B | A geteilt durch B | A1, A/B |
| A elevado a B | A to the power of B | B-a potenco de A | A hoch B | A hoch B | B1, A^B |
| A al cuadrado | A squared | dua potenco de A | 2 quadrat | 2 quadrat | B1, A^2 |
| A al cubo | A cubed | tria potenco de A | 2 cubic / 2 gewürfelte | 2 kubik / 2 gwürfelte | B1, A^3 |
| raíz cuadrada de A | square root of A | kvadrata radiko de A | Quadratwurzel von A | Wurzle von A | B1, sqrt(A) |
| raíz cúbica de A | cubic root of A | kuba radiko de A | dritte Wurzel von A | dritti Wurzle von A | B1, root(A, 3) |
| A por ciento | A percent | A procentoj | A prozent | A prozent | A2 |

### Nouns: Mathematics
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| matemáticas (F/Pl) | mathematics | matematiko | Mathematik (F) | Mathematik (F) / Mathi (F) | A2 |
| número | number | nombro | Nummer (F) | Nummere (F) | A1, numbers |
| números | numbers | nombroj | Nummern (F/Pl) | Nummere (F/Pl) | A1, numbers |
| fracción (F) | fraction | frakcio | Fraktion (F) / Bruch (M) | Bruch (M) | B1, fractions |
| fracción de (F) | fraction of | frakcio de | Bruchteil (M) von | Bruchtäil (M) vo | B1, fractions, fraction e.g. of people |
| operación (F) | operation | operacio | Operation (F) | Operation (F) | B1, operation |
| resultado (M) | result | rezulto | Ergebnis (N) / Resultat (N) | Ergäbnis (N) / Resultat (N) | B1, operation |
| suma (F) | addition | adicio | Addition (F) | Addition (F) | B1, specific operations |
| resta (F) | subtraction | subtraho | Subtraktion (F) | Subtraktion (F) | B1, specific operations |
| multiplicación (M) | multiplication | multipliko | Multiplikation (F) | Multiplikation (F) | B1, specific operations |
| división (M) | division | divido | Division (F) | Division (F) | B1, specific operations |
| potencia (F) | power | potenco | Potenz (F) | Potänz (F) | B1, specific operations |
| raíz cuadrada (F) | square root | kvadrata radiko | Quadratwurzel (F) | Wurzle (F) | B1, specific operations |
| raíz cúbica (F) | cubic root | kuba radiko | dritte Wurzel (F) | dritti Wurzle (F) | B1, specific operations |
| estadística (F) | statistics | statistiko | Statistik (F) | Statistik (F) | B1, statistics |
| media (F) | average | meza kvanto | Durchschnitt (M) | Durchschnitt (M) | A2, statistics |
| porcentaje (M) | percentage | procento | Prozentsatz (M) | Prozentsatz (M) | B1, statistics |
| geometría (F) | geometry | geometrio | Geometrie (F) | Geometrie (F) | B1, geometry |
| forma (F) | shape | formo | Form (F) | Form (F) | B1, geometry |
| punto (M) | point | punkto | Punkt (M) | Punkt (M) | A1, geometry |
| línea (F) | line | linio | Linie (F) | Linie (F) | A1, geometry |
| triángulo (M) | triangle | triangulo | Dreieck (N) | Drüüeck (N) | A1, geometry |
| cuadrado (M) | square | kvadrato | Quadrat (N) | Quadrat (N) | A1, geometry |
| rectángulo (M) | rectangle | rektangulo | Rechteck (N) | Rächteck (N) | A1, geometry |
| rombo (M) | rhombus | rombo | Raute (F) | Raute (F) | A2, geometry |
| círculo (M) | circle | rondo | Kreis (M) | Chräis (M) | A1, geometry |
| pentágono (M) | pentagon | kvinangulo / pentagono | Fünfeck (N) | Föifeck (N) | B1, geometry |
| cubo (M) | cube | kubo | Würfel (M) | Würfel (M) | B1, geometry |
| esfera (F) | sphere | sfero / globo | Kugel (F) | Chugel (F) | B1, geometry |
| aro (M) / anillo (M) | ring | ringo | Reife (F) / Ring (M) | Räife (F) / Ring (M) | B1, geometry |
| centro (M) | center | centro | Zentrum (N) | Zentrum (N) | B1, figures |
| lado (M) | side | flanko | Seite (F) | Seite (F) | B1, figures |
| esquina (F) | corner | angulo | Ecke (F) | Ecke (F) | B1, figures |
| superficie (F) | surface | supraĵo | Oberfläche (F) | Oberflächi (F) | B1, figures |

### Verbs: Mathematics
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sumar A y B | to add B to A | adicii A kaj B | zusammenzählen A und B - zählte A und B zusammen - A und B zusammengezählt / addieren A und B - addierte A und B - A und B addiert/ rechnen A plus B | zämmezelle A und B - zellsch A und B zämme - A und B zämmegzellt / addiere A und B - addiersch - addiert / rächne A plus B - rächnisch A plus B - A plus B grächnet | A1, A+B |
| restar B a A | to subtract B from A | subtrahi B el A | subtrahieren B von A - - subtrahiert B von A / abziehen B von A - zog B von A ab - B von A gezogen / rechnen A minus B | subtrahiere B vo A - subtrahiersch B vo A - subtrahiert B vo A / abziehe B vo A - ziesch B vo A ab - B vo A abzoge / rächne A minus B - rächnisch A minus B - A minus B rächnet | A1, A-B |
| multiplicar A por B | to multiply A by B | multipliki A per B | multiplizieren A mit B - - A mit B multipliziert / rechnen A mal B | multipliziere A mit B - multipliziersch A mit B - A mit B multipliziert / rächne A mal B - rächnisch A mal B - A mal B grächnet | A1, A*B |
| dividir A entre B | to divide A between B | dividi A per B | teilen A durch B / rechnen A durch B | teile A durch B / rächne A durch B - rächnisch A durch - grächnet | A1, A/B |

### Nouns: Science
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ciencia (F) | science | scienco | Wissenschaft (F) | Wüsseschaft (F) | A1 |
| física (F) | physics | fiziko | Physik (F) | Physik (F) | B1, physics |
| gravedad (F) | gravity | graveco | Schwerkraft (F) | Schwerchraft (F) | A2, physics |
| química (F) | chemistry | kemio | Chemie (F) | Chemie (F) | B1, chemistry |
| elemento (M) | element | elemento | Element (N) | Elemänt (N) | B1, chemistry |
| tabla periódica (F) / tabla periódica de los elementos (F) | periodic table / periodic table of the elements |   | Periodensystem (N) / Periodensystem der Elemente (N) | Periodesystem (N) / Periodesystem vo de Elemänt (N) | B1, chemistry |
| oxígeno (M) | oxygen | perioda tabelo de kemiaj elementoj | Sauerstoff (M) | Suurstoff (M) | A1, chemistry |
| nitrógeno (M) | nitrogen | nitrogeno / azoto | Stickstoff (M) | Stickstoff (M) | B1, chemistry |
| dióxido de carbono (M) | carbon dioxide | karbona dioxido | Kohlendioxid (N) | Kohledioxid (N) | A1, chemistry |
| helio (M) | helium | heliumo | Helium (N) | Helium (N) | A2, chemistry |
| hidrógeno (M) | hydrogen | hidrogeno | Wasserstoff (M) | Wasserstoff (M) | A2, chemistry |
| carbono (M) | carbon | karbono | Kohlenstoff (M) | Chohlestoff (M) | A2, chemistry |
| reacción (F) | reaction | reago / reakcio | Reaktion (F) | Reaktion (F) | A2, chemistry |
| biología (F) | biology | biologio | Biologie (F) | Biologie (F) | B1, biology |
| ADN (M) | DNA | DNA | DNA (F) / DNS (F) | DNA (F) / DNS (F) | B1, biology |
| gen (M) | gen | geno | Gen (N) | Gen (N) | B1, biology |
| genoma (M) | genome | genaro / genomo | Genom (N) | Genom (N) | B1, biology |

### Adjectives: Science
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| radiactivo - radiactiva | radioactive | radioaktiva | radioaktiv | radioaktiv | A2 |
| nuclear | nuclear | nuklea | nuklear | nuklear | A2 |

### Verbs: Science
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| investigar | to research | esplori | forschen | forsche - forschisch - gforscht | B1 |
| publicar | to publish | publikigi / afiŝi | veröffentlichen - - verôffentlicht | veröffentliche - veröffentlichsch - veröffentlicht | B1 |

### Nouns: Technology
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tecnología (F) | technology | teknologio | Technologie (F) | Technologie (F) | B1 |
| aparato (M) | gadget | aparato | Apparat (M) | Apparat (M) | B1, machine |
| máquina (F) | machine | maŝino | Maschine (F) | Maschine (F) | A2, machine |
| software (M) | software | softvaro | Software (F) | Software (F) | B1, software/hardware |
| hardware (M) | hardware | hardvaro | Hardware (F) | Hardware (F) | B1, software/hardware |
| ordenador (M) | computer / workstation | komputilo | Computer (M) | Computer (M) | A1, hardware |
| ratón (M) | mouse | muso | Maus (F) | Muus (F) | A1, hardware |
| teclado (M) | keyboard | klavaro | Tastatur (F) | Tastatur (F) | A1, hardware |
| tecla (F) | key | klavo | Taste (F) | Taste (F) | A2, hardware |
| monitor (M) | screen | bildekrano | Bildschirm (M) | Bildschirm (M) | A1, hardware |
| disco duro (M) | hard disk | fiksita disko | Festplatte (F) | Festplatte (F) | B1, hardware |
| procesador (M) | processor | procesoro | Prozessor (M) | Prozässor (M) | B1, hardware |
| escáner (M) | scanner | skanilo | Scanner (M) | Scanner (M) | A2, hardware |
| impresora (F) | printer | presilo | Drucker (M) | Drucker (M) | A1, hardware |
| impresora 3D (F) | 3D printer | 3D presilo | 3D Drucker (M) | 3D Drucker (M) | B1, hardware |
| escritorio (M) | desk | skribtablo | Schreibtisch (M) | Schriibtisch (M) | A2, computer desktop |
| icono (M) | icon | bildeto  | Symbol (N) | Symbol (N) | A2, computer desktop |
| imagen (F) | image | bildo | Bild (N) | Bild (N) | A2, computer desktop |
| salvapantallas (M) | screensaver | ekrankurteno | Bildschirmschoner (M) | Bildschirmschoner (M) | B1, computer desktop |
| fondo de pantalla (M) | wallpaper | ekranfono | Hintergrundbild (N) | Hintergrundbild (N) | B1, computer desktop |
| aplicación (F) | application | programo | App (F) | App (F) | A1, application |
| versión (F) | version | versio | Version (F) | Version (F) | A2, application |
| mejora (F) | improvement | plibonigo | Verbesserung (F) | Verbesserig (F) | B1, application |
| actualización (F) | update | ĝisdatigo | Aktualisierung (F) / Update (N) | Aktualisierig (F) / Update (N) | B1, application |
| ajustes (F) | settings | agordoj | Einstellungen (F/Pl) | Iistellige (F/Pl) | A1, application |
| configuración (F) | configuration | konfiguraĵo | Konfiguration (F) | Konfiguration (F) | A1, application |
| ubicación (F) | location | loko | Standort (M) | Standort (M) | A2, log |
| registro (M) | log | protokolo | Protokoll (N) | Protokoll (N) | B1, log |
| histórico (M) | history | historio | Verlauf (M) | Verlauf (M) | B1, log |
| altavoz (M) | speaker | laŭtparolilo | Lautsprecher (M) | Luutsprächer (M) | A1, audio |
| micrófono (M) | microphone | mikrofono | Mikrofon (N) | Mikrofon (N) | A2, audio |
| auriculares (M/Pl) | earphones | aŭskultilo / orelumo | Kopfhörer (M) | Chopfhörer (M) | A2, audio |
| cascos (M/Pl) | headset / headphones | kapaŭskultiloj | Headset (N) | Headset (N) | A2, audio |
| internet (M) | internet | interreto | Internet (N) | Internet (N) | A1, internet |
| comunicación (F) | communication | komunikaĵo | Kommunikation (F) | Kommunikation (F) | A2, internet |
| wifi (M) | wifi | WI-FI / WiFi / vifio | WLAN (N) | WLAN (N) | A1, internet |
| correo electrónico (M) / e-mail (M) | email / e-mail | retpoŝto | Email (N) | Email (N) | A1, internet |
| bandeja de entrada (F) | inbox | enirkesto / ricevujo | Posteingang (M) | Postiigang (M) | A1, internet |
| dirección de correo electrónico (F) | email address | retpoŝtadreso | E-Mail-Adresse (F) | E-Mail-Adrässi (F) | A1, internet |
| página web (F) / web (F) | web page / web | retejo / retpaĝo | Webseite (F) | Websiite (F) | A1, internet |
| sitio web (M) | website | retpaĝaro | Website (F) | Website (F) | A1, internet |
| enlace (M) | link | ligilo | Verknüpfung (F) | Verknüpfig (F) | A1, internet |
| descarga (F) | download | elŝutaĵo / subenŝargo | Download (M) | Download (M) | A1, internet |
| subida (F) | upload | suprenŝargo | Upload (M) | Upload (M) | A2, internet |
| conexión (F) | connection | interligo / kunigo / kunligo | Verbindung (F) | Verbindig (F) | B1, internet |
| red (F) | network | reto / maŝaro | Netzwerk (N) / Netz (N) | Netzwerch (N) / Netz (N) | B1, internet |
| teléfono (M) | phone | telefono | Telefon (N) | Telefon (N) | A1, phone |
| teléfono móvil (M) | cell phone | poŝtelefono | Handy (N) | Handy (N) | A1, phone |
| tablet (F) | tablet | tabulkomputilo | Tablet (N) | Tablet (N) | A1, phone |
| contestador (M) / contestador automático (M) / buzón de voz (M) | answering machine / voicemail | telefonrespondilo / respondaparato / respondilo | Anrufbeantworter (M) | Aarufbeantworter (M) | B1, phone |
| llamada (F) | phone call | alvoko | Anruf (M) | Aaruf (M) | A1, phone |
| mensaje (M) | message | mesaĝo | Nachricht (F) | Nachricht (F) | A1, phone |
| recordatorio (M) | reminder | memorigo / memorigilo / rememorigilo | Erinnerung (F) | Erinnerig (F) | A1, phone |
| portátil (M) | laptop | tekkomputilo | Laptop (M/N) | Laptop (M/N) | A2, phone |
| fax (M) | fax | fakso | Fax (M/N) | Fax (M/N) | A2, phone |
| reloj (M) | clock | horloĝo | Uhr (F) | Uhr (F) | A1, phone |
| batería (F) | battery | baterio | Akku (M) | Akku (M) | A1, phone |
| cargador (M) | charger | ŝarĝilo | Ladegerät (N) | Ladegrät (N) | A1, phone |
| televisor (M) | TV | televido / televizio | Fernseher (M) | Fernsehe (M) | A1, phone |
| mando de televisor (M) / mando a distancia (M) | TV remote / remote control | telefunkciigo | Fernbedienung (F) | Fernbedienig (F) | A1, phone |
| despertador (M) | alarm clock | vekhorloĝo | Wecker (M) | Wecker (M) | A2, phone |
| rendija (F) | slit | fendo | Schlitz (M) | Schlitz (M) | A2, input |
| palanca (F) | lever | levilo | Hebel (M) | Hebel (M) | A2, input, used to exert bigger force |
| palanca (F) | lever | svingilo | Hebel (M) | Hebel (M) | A2, input, used as a switch |
| interruptor (M) | switch | ŝaltilo | Schalter (M) | Schalter (M) | A1, input |
| botón (M) | button | butono | Knopf (M) | Chnopf (M) | A1, input |
| alarma (F) | alarm | alarmo | Alarm (M) | Alarm (M) | A2, alarm |
| temporizador (M) | timer | tempmezurilo | Timer (M) | Timer (M) | A2, alarm |
| brújula (F) | compass | kompaso | Kompass (M) | Kompass (M) | B1, magnetic |
| imán (M) | magnet | magneto | Magnet (M) | Magnet (M) | B1, magnetic |
| robot (M) | robot | roboto | Roboter (M) | Roboter (M) | A1, robot |
| inteligencia artificial (F) | artificial intelligence | artefarita intelekto | Künstliche Intelligenz (F) | Künstlichi Intelligänz (F) | B1, robot |
| programa (M) | program | programo | Programm (N) | Programm (N) | A2, program |
| programación (F) | programming | programado | Programmierung (F) | Programmierig (F) | B1, program |
| lenguaje de programación (M) | programming language | programlingvo | Programmiersprache (F) | Programmierspraach (F) | B1, program |
| código fuente (M) | source code | fontkodo | Quellencode (M) | Quällecode (M) | B1, program |
| compilador (M) | compiler | kompilero / tradukilo | Compiler (M) | Compiler (M) | B1, program |
| cámara de fotos (F) | photo camera / camera | fotilo / kamerao | Kamera (F) | Kamera (F) | A1, pictures |
| objetivo (M) | camera lens | kameraolenso | Kameraobjektiv (N) | Kameraobjektiv (N) | B1, pictures |
| cámara de video (F) | video camera | videkamerao | Videokamera (F) | Videokamera (F) | A2, pictures |
| calculadora (F) | calculator | kalkulilo | Taschenrechner (M) | Tascherächner (M) | A2, pictures |
| foto (F) / fotografía (F) | photo | foto | Foto (N) | Fotti (N) | A1, pictures |
| foto (F) / fotografía (F) | picture | bildo | Bild (N) | Bild (N) | A1, pictures |
| filtro (M) | filter | filtrilo | Filter (M) | Filter (M) | A2, pictures |
| vídeo (M) | video | video | Video (N) | Video (N) | A1, pictures |
| sonido (M) / audio (M) | sound / audio | sono / aŭdio | Ton (M) | Ton (M) | B1, pictures |
| usuario (M) | user | uzanto | Benutzer (M) | Benutzer (M) | A2, log in |
| nombre de usuario (M) | username | uzantnomo | Benutzername (M) | Benutzername (M) | A2, log in |
| contraseña (F) | password | pasvorto | Passwort (N) | Passwort (N) | A2, log in |

### Adjectives: Technology
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| en línea | online | enreta | online | online | A2, connection |
| local | local | loka | lokal | lokal | B1, connection |
| fuera de línea | offline | eksterreta | offline | offline | B1, connection |
| digital | digital | cifereca | digital | digital | A2, computer-related |
| virtual | virtual | virtuala | virtuell | virtuell | A2, computer-related |
| electrónico - electrónica | electronic | elektronika | elektronisch | elektronisch | A2, computer-related |

### Verbs: Technology
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| grabar | to film | filmi | filmen | filme - filmsch - gfilmt | A1 |
| editar / modificar | to edit - to modify | modifi | bearbeiten - bearbeitete - bearbeitet | bearbäite - bearbäitsch - bearbäitet | A1 |
| cargar | to charge | ŝarĝi | aufladen - lud uuf - aufgeladen | uuflade - ladsch uuf - uufglade | A1, a battery |
| registrarse - haberse registrado / darse de alta - haberse dado de alta | to register | registriĝi | registrieren - - registriert | registriere | A1, internet |
| identificarse - haberse identificado | to log in - logged in - logged in | ensaluti | anmelden - meldete an - angemeldet / einloggen - loggte ein - eingeloggt | sich aamälde - mäldsch dich aa - sich aagmolde / sich iilogge - loggsch dich ii - sich iigloggt | A1, internet |
| desconectarse - haberse desconectado | to log out - logged out - logged out | elsaluti | abmelden - meldete ab - abgemeldet / ausloggen - loggte aus - ausgeloggt | sich abmälde - mäldsch dich ab - sich abgmolde / sich uuslogge - loggsch dich uus - sich uusgloggt | A1, internet |

### Nouns: Electronics
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| electrónica (F) | electronics | elektroniko | Elektronik (F) | Elektronik (F) | B1 |
| microchip (M) / chip (M) | microchip / chip | Integra cirkvito / mikroĉipo | Mikrochip (M) / Chip (M) | Mikrochip (M) / Chip (M) | B1 |
| soldador (M) | welder | veldilo | Lötkolben (M) | Lötcholbe (M) | B1 |
| cable (M) | cable | kablo | Kabel (N) | Kabel (N) | A2 |
| pila (F) | battery | baterio | Batterie (F) | Batterie (F) | A2 |
| condensador (M) | capacitor | kondensatoro | Kondensator (M) | Kondensator (M) | B1 |
| diodo (M) | diode | diodo | Diode (F) | Diode (F) | B1 |
| bobina (F) | coil | bobeno | Spule (F) | Spuele (F) | B1 |
| batería (F) | battery | aparatobaterio | Akku (M) | Akku (M) | A1 |
| enchufe (M) | plug | ŝtopilo | Stecker (M) | Stecker (M) | A1 |
| enchufe (M) | socket | konektilo | Steckdose (F) | Steckdose (F) | A1 |
| conector (M) | connector | konektilo | Stecker (M) | Stecker (M) | B1 |
| adaptador (M) | adapter | adaptilo | Adapter (M) | Adapter (M) | B1 |
| chispa (F) | spark | fajrero / sparko | Funke (M) | Funke (M) | B1 |
| corriente (F) | current | kurento | Strom (M) | Strom (M) | B1, electricity |
| tensión (F) | tension | elektra streĉo | Spannung (F) | Spannig (F) | B1, electricity |
| potencia (F) | power | potenco | Leistung (F) | Läistig (F) | B1, electricity |
| resistencia (F) | resistance | resistanco | Widerstand (M) | Widerstand (M) | B1, electricity |
| electricidad (F) | electricity | elektro | Elektrizität (F) | Elektrizität (F) | B1, electricity |

### Nouns: Studies
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| guardería (F) | nursery | infanvartejo | Kinderkrippe (F) | Chinderchrippe (F) | B1 |
|  |  |  | Spielgruppe (F) | Spiilgruppe (F) | B1 |
| preescolar (M) / parvulario (M) | kindergarten | infanĝardeno / antaŭlernejo | Kindergarten (M) | Chindergarte (M) / Chindsgi (M) | B1 |
| escuela (F) / colegio (M) | primary school | bazlernejo | Primarschule (F) | Primaarschuel (F) | A1 |
| instituto (M) | secondary school | mezlernejo | Sekundarschule (F) | Sekundarschuel (F) / Sek (F) | B1 |
| instituto (M) | high school | mezlernejo | Gymnasium (N) | Gymnasium (N) / Gymi (N) | B1 |
| título (M) | diploma / degree diploma | diplomo | Diplom (N) | Diplom (N) | A1, diploma |
| graduado escolar (M) | high school diploma | mezlerneja Diplomo | Schlubabschluss (M) / Abitur (N) | Matur (F) | B1, diploma |
| licenciatura (F) / grado (M) | bachelor's degree | bakalaŭro | Bachelorabschluss (N) / Bachelor (M) | Bachelorabschluss (N) / Bachelor (M) | B1, diploma |
| maestría (F) / máster (M) | master's degree | licencio | Masterabschluss (N) / Master (M) | Masterabschluss (N) / Master (M) | B1, diploma |
| doctorado (M) | PhD | doktoreco | Doktorat (N) | Doktorat (N) | B1, diploma |
| premio (M) | award | premio | Auszeichnung (F) | Uuszäichnig (F) | A1, award |
| trimestre (M) | quarter | trimestro | Quartal (N) | Quartal (N) | A2, terms |
| cuatrimestre (M) |  |  |  |  | A2, terms |
| semestre (M) | semester | semestro | Semester (N) | Semester (N) | A2, terms |
| asignatura (F) | course / subject | kurso | Kurs (M) | Kurs (M) | A2, course |
| examen (M) | exam | ekzameno | Prüfung (F) | Prüefig (F) | A1, exam |
| evaluación (F) | assessment / evaluation | evaluo | Bewertung (F) | Bewertig (F) | A2, exam |
| trabajo (M) | paper / term paper | termina papero | Arbeit (F) | Aarbet (F) | A1, exam |
| nota (F) / calificación (F) | mark / grade | noto | Note (F) | Note (F) | A1, exam |
| tema (M) | topic / subject | subjekto / temo / fako | Thema (N) | Thema (N) | A1, exam |
| ejercicio (M) | exercise | ekzerco | Übung (F) | Üebig (F) | A1, exam |
| pregunta (F) | question | demando | Frage (F) | Frag (F) | A1, exam |
| respuesta (F) | answer | respondo | Antwort (F) | Antwort (F) | A1, exam |
| solución (F) | solution | solvo | Lösung (F) | Lösig (F) | A1, exam |
| filosofía (F) | philosophy | filozofio | Philosophie (F) | Philosophie (F) | B1, philosophy |
| teoría (F) | theory | teorio | Theorie (F) | Theorie (F) | B1, philosophy |
| hipótesis (F) | hypothesis | hipotezo | Hypothese (F) | Hypothese (F) | B1, philosophy |
| historia (F) | history | historio | Geschichte (F) | Geschicht (F) | B1, history |
| aula (F, pero "el aula") / clase (F) | classroom | klasejo / klasĉambro | Klassenzimmer (N) | Klassezimmer (N) | B1, classroom |
| aula (F, pero "el aula") / clase (F) | classroom | klasejo / klasĉambro | Saal (M) / Vorlesungssaal (M) | Saal (M) / Vorlesigssaal (M) | B1, classroom |
| pizarra (F) | blackboard | nigra tabulo | Tafel (F) | Tafle (F) | A2, whiteboard |
| tiza (F) | chalk | kreto | Kreide (F) | Chriide (F) | A2, whiteboard |
| pizarra de rotuladores (F) | marker board | indikila tabulo / markila tabulo | Markierungsbrett (N) / Whiteboard (N) | Tafle (F) / Whiteboard (N) | A2, whiteboard |
| rotulador de pizarra (M) | whiteboard marker | indikilo / markilo | Whiteboardstift (M) | Whiteboardstift (M) | A2, whiteboard |
| teoría (F) | theory | teorio | Theorie (F) | Theorie (F) | A2, theory/practice |
| práctica (F) | practice | praktiko | Praxis (F) | Praxis (F) | A2, theory/practice |
| fundamento (M) | fundament | fundamento | Grundlage (F) / Fundament (N) | Grundlage (F) / Fundamänt (N) | B1, fundament |

### Adjectives: Studies
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| fundamental | fundamental | fundamenta | grundlegend | grundlegend | B1 |
| avanzado | advanced | progresinta | fortgeschritten | fortgschritte | B1 |

### Verbs: Studies
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| aprender | to learn - learnt/learned - learnt/learned | lerni | lernen | lerne - lernsch - glernt | A1 |
| estudiar | to study - studied - studied | studi | lernen | lerne - lernsch - glernt | A1, e.g. notes or for a course |
| estudiar | to study - studied - studied | studi | studieren - - studiert | studiere - studiersch - studiert | A1, a degree |
| enseñar | to teach - taught - taught | instrui | lehren | leere - leersch - gleert | A1 |
| corregir | to correct | korekti | korrigieren | korrigiere - korrigiersch - korrigiert | A1 |

### Nouns: Buildings
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| edificio (M) | building | domo / konstruaĵo | Gebäude (N) | Gebäude (N) | A2 |
| casa (F) | house | domo | Haus (N) | Huus (N) | A1, to live in |
| apartamento (M) | apartment | apartamento | Wohnung (F) | Wohnig (F) | A2, to live in |
| piso (M) | floor | etaĝo | Stockwerk (N) | Stock (M) | A1, to live in |
| bar (M) / pub (M) | bar / pub | trinkejo / pubo | Kneipe (F) | Bar (F) | A1, to have food/drinks in |
| cafetería (F) | cafe / coffee shop | kafejo | Café (N) | Café (N) / Kafi (N) | A1, to have food/drinks in |
| discoteca (F) | disco | dancejo | Disko (F) | Club (F) | A2, to have food/drinks in |
| restaurante (M) | restaurant | restoracio | Restaurant (N) | Restaurant (N) | A1, to have food/drinks in |
| peluquería (F) | barber / barber shop | frizejo / frizosalono | Herrenfriseur (F) | Herrecoiffeur (F) | A2, to get a haircut, for men |
| salón de belleza (M) / peluquería (F) | beauty salon / parlor | frizejo / frizosalono | Damenfriseur (F) | Damecoiffeur (F) | A2, to get a haircut, for women |
| negocio (M) / tienda (F) | business / store / shop | negoco / vendejo / butiko | Geschäft (N) / Laden (M) | Gschäft (N) / Lade (M) | A1, to buy things |
| librería (F) | bookstore / bookshop | librejo / librejo | Buchhandlung (F) | Buechhandlig (F) | A1, to buy things |
| panadería (F) | bakery | bakejo | Bäckerei (F) | Bäckerei (F) | A1, to buy things |
| pastelería (M) | pastry shop | kukaĵejo | Konditorei (F) | Konditorei (F) | A1, to buy things |
| carnicería (F) | butcher shop | karnovendejo | Fleischerei (F) / Metzgerei (F) | Metzgerei (F) | A2, to buy things |
| tienda de comestibles (F) | grocery store | vendejo | Lebensmittelgeschäft (N) | Läbensmittelgschäft (N) | A1, to buy things |
| ferretería (F) | hardware store | aparatara vendejo | Eisenwarengeschäft (N) | Iisewaregschäft (N) | B1, to buy things |
| joyería (F) | jeweler / jewelry store | juvelejo | Juwelier (M) | Juwelier (M) | B1, to buy things |
| drogería (F) | drugstore | drogejo | Drogerie (F) | Drogerie (F) | B1, to buy things |
| tienda de ropa (F) | clothier / clothing store | vestovendejo | Kleiderladen (M) | Kleiderlade (M) | A2, to buy things |
| farmacia (F) | pharmacy / chemist | apoteko / kemiisto | Apotheke (F) | Apotheke (F) | A2, to buy things |
| papelería (F) | stationery store | papelerujo | Schreibwarengeschäft (N) | Papeterie (F) | B1, to buy things |
| tienda de tabaco (F) / estanco (M) | tobacco shop / tobacconist | tabakovendejo | Tabakwarenladen (M) | Tabakwarelade (M) | B1, to buy things |
| juguetería (F) | toy store | ludovendejo | Spielwarengeschäft (N) | Spiilwaregeschäft (N) | B1, to buy things |
| taller de relojería (M) | watch repair shop | horloĝa vendejo | Uhrmacher (M) | Uhrmacher (M) | B1, to buy things |
| supermercado (M) | supermarket | superbazaro | Supermarkt (M) | Supermarkt (M) | A1, to buy things |
| mercado (M) | market | merkato | Markt (M) | Markt (M) | A1, to buy things |
| grandes almacenes (M/Pl) | department store | magazenejo | Shopping Center (N) / Kaufhaus (N) / Warenhaus (N) | Shopping Center (N) | A2, with many shops in |
| centro comercial (M) | shopping center / mall | komerca centro | Einkaufszentrum (N) | IIchaufszentrum (N) | A2, with many shops in |
| kiosko (M) / quiosco (M) | newsstand | kiosko | Kiosk (M) | Kiosk (M) | A2, newsstand |
| iglesia (F) | church | preĝejo / eklezio | Kirche (F) | Chile (F) | A1, to pray in |
| catedral (F) | cathedral | katedro / katedralo | Kathedrale (F) | Kathedrale (F) | A2, to pray in |
| cajero automático (M) | ATM | monaŭtomato | Geldautomat (M) | Gäldautomat (M) | A2, to put money in/get money |
| banco (M) | bank | banko | Bank (F) | Bank (F) | A1, to put money in/get money |
| parking (M) | parking | parkadejo / parkejo | Parkhaus (N) / Parkplatz (M) | Parkhuus (N) / Parkplatz (M) | B1, to travel |
| estación de tren (F) | train station / railway station | stacidomo / fervoja stacidomo | Bahnhof (M) | Bahnhof (M) | A1, to travel |
| andén (M) | platform | kajo | Gleis (N) | Gläis (N) | B1, to travel |
| estación de autobuses (F) | bus station | aŭtobusa stacio | Busbahnhof (M) | Busbahnhof (M) | A1, to travel |
| aeropuerto (M) | airport | flughaveno / aerodromo | Flughafen (M) | Flughafe (M) | A1, to travel |
| puerto (M) | port | haveno | Hafen (M) | Hafe (M) | A1, to travel |
| muelle (M) | dock | ŝipejo | Pier (M) | Pier (M) | A1, to travel |
| circo (M) | circus | cirko | Zirkus (M) | Zirkus (M) | B1, to go and see (with children) |
| zoológico (M) / zoo (M) | zoo | bestoĝardeno | Zoo (M) | Zoo (M) | B1, to go and see (with children) |
| feria (F) | fair | foiro | Kirmes (F) | Chilbi (F) | A2, to go and see (with children) |
| parque de atracciones (M) | amusement park | amuzejo | Vergnügungspark (M) | Vergnüegigspark (M) | B1, to go and see (with children) |
| parque (M) | park | parko / publika ĝardeno | Park (M) | Park (M) | A1, to be in nature |
| biblioteca (F) | library | librejo / biblioteko | Bibliothek (F) | Bibliothek (F) | A1, to read books |
| hotel (M) | hotel | hotelo | Hotel (N) | Hotel (N) | A1, to stay |
| hostal (M) | hostel | gastejo | Herberge (F) | Herberge (F) | A1, to stay |
| oficina de correos (F) | post office | poŝtoficejo | Postamt (N) | Post (N) | A2, to send mail |

### Nouns: House
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hogar (M) | home | hejmo | Heim (N) | Dihäi (N) | A1 |
| habitación (M) / sala (F) | room | ĉambro | Zimmer (N) | Zimmer (N) | A1, room |
| pared (F) | wall | vando | Wand (F) | Wand (F) | A1, room |
| suelo (M) | floor | planko | Boden (M) | Bode (M) | A1, room |
| parqué (M) | parquet | pargeto | Parkett (N) | Parkett (N) | A2, room |
| techo (M) | roof | plafono | Decke (F) | Decki (F) | A1, room |
| pasillo (M) | hallway | koridoro | Gang (M) | Gang (M) | A1, hallway |
| muro (M) | wall | muro | Fassade (F) | Fassade (F) | A2, hallway |
| ascensor (M) | elevator | lifto / elevatoro | Aufzug (M) | Lift (M) | A1, hallway |
| escaleras (F/Pl) | staircase / stairway | ŝtuparo | Treppen (F/Pl) | Stäge (F) | A1, hallway, a concrete set of stairs |
| escaleras (F/Pl) | stairwell | ŝtuparoj | Treppenhaus (N) | Stägehuus (N) | A1, hallway, the stairs (e.g. including the hallway with all the sets of stairs) |
| escalón (M) | step | etapo | Treppenstufe (F) | Stägetritt (F) | A2, hallway |
| baranda (F) | railing | balustrado | Geländer (N) | Gländer (N) | B1, hallway |
| portón (M) | gate | pordego | Tor (N) | Tor (N) | A2, hallway |
| tranco (M) / tranquillo (M) |  |  | Schwelle (F) | Schwälle (F) | B1, hallway |
| jardín (M) | garden | ĝardeno | Garten (M) | Garte (M) | A1, hallway |
| manguera (F) | hose | hoso | Schlauch (M) | Schluuch (M) | B1, hallway |
| reja (F) | grate | kradaĵo | Gitter (N) | Gitter (N) | A2, hallway |
| verja (F) | gate | balustrado | Zaun (M) | Haag (M) | A2, hallway |
| interruptor de la luz (M) | light switch | lampŝaltilo | Lichtschalter (M) | Liechtschalter (M) | A2, hallway |
| timbre (M) | doorbell | sonorilo | Klingel (F) | Lüüti (F) | A2, hallway |
| puerta (F) | door | pordo | Tür (F) | Tür (F) | A1, doors and windows |
| marco de la puerta (M) | door frame | pordoframo | Türrahmen (M) | Türrahmen (M) | B1, doors and windows |
| pomo (M) | knob | tenilo | Türknopf (M) | Türknopf (M) | A1, doors and windows, round |
| pomo (M) | knob | tenilo | Türklinke (F) / Klinke (F) | Türklinke (F) / Klinke (F) | A1, doors and windows, long |
| cerradura (F) | lock | seruro | Schloss (N) | Schloss (N) | A1, doors and windows |
| llave (F) | key | ŝlosilo | Schlüssel (M) | Schlüssel (M) | A1, doors and windows |
| llavero (M) | keychain | ŝlosilaro / ŝlosilujo | Schlüsselbund (M) | Schlüsselbund (M) | A2, doors and windows |
| cerrojo (M) | latch / lock | riglilo | Schloss (N) | Schloss (N) | A2, doors and windows |
| ventana (F) | window | fenestro | Fenster (N) | Fänster (N) | A1, doors and windows |
| alféizar (M) | sill | sojlo | Fenstersims (M) | Fänstersims (M) | B1, doors and windows |
| cortina (F) | curtain | fenestrokovrilo / kurteno | Vorhang (M) | Vorhang (M) | A2, doors and windows |
| persiana (F) | shutter / blind | fenestrumo | Jalousie (F) | Rollade (M) / Store (Pl) | A2, doors and windows |
| marco de la ventana (M) | window frame | fenestroframo | Fensterrahmen (M) | Fänsterrahme (M) | B1, doors and windows |
| cuarto de baño (M) / baño (M) / aseo (M) | bathroom / toilet / restroom | banĉambro | Badezimmer (N) | Badzimmer (N) | A1, bathroom |
| grifo (M) | tap | krano | Wasserhahn (M) | Wasserhahne (M) / Hahne (M) / Wasserhahn (M) / Hahn (M) | A1, bathroom |
| desague (M) | drain | drenilo | Abfluss (M) | Abfluss (M) | A2, bathroom |
| tubería (F) | pipe | tubo | Rohr (N) | Rohr (N) | B1, bathroom |
| ducha (F) / plato de ducha (M) | shower / shower tray | duŝo | Dusche (F) | Duschi (F) | A1, bathroom |
| bañera (F) | bathtub | banujo | Badewanne (F) | Badwanne (F) | A1, bathroom |
| secador del pelo (M) | hair dryer | harsekigilo | Föhn (M) | Föhn (M) | A1, bathroom |
| váter (M) | toilet | necesejo | Toilette (F) | WC (N) | A1, bathroom |
| lavabo (M) | wash basin | lavpelvo | Waschbecken (N) | Lavabo (N) | A1, bathroom |
| bidet (M) | bidet | bideo | Bidet (N) | Bidet (N) | A2, bathroom |
| salón (M) / sala de estar (F) | living room | salono / loĝoĉambro | Wohnzimmer (N) | Wohnzimmer (N) / Stube (F) | A1, living room |
| mueble (M) | piece of furniture | meblo | Möbel (N) | Möbel (N) | A1, living room |
| sofá (M) | sofa | sofo / kanapo | Couch (F) / Sofa (N) | Sofa (N) | A1, living room |
| silla (F) | chair | seĝo | Stuhl (M) | Stuehl (M) | A1, living room |
| mesa (F) | table | tablo | Tisch (M) | Tisch (M) | A1, living room |
| alfombra (F) | carpet | tapiŝo | Teppich (M) | Teppich (M) | A2, living room |
| estantería (F) | shelf | breto | Regal (N) | Regal (N) | A1, living room |
| cojín (M) | cushion | kuseno | Kissen (N) | Chüssi (N) | A2, living room |
| vela (F) | candle | kandelo | Kerze (F) | Cherze (F) | A2, living room |
| reloj de pared (M) / reloj (M) | wall clock / clock | murhorloĝo | Uhr (F) / Wanduhr (F) | Uhr (F) / Wanduhr (F) | A2, living room |
| portaretratos (M) | picture frame | pentraĵkadro | Bilderrahmen (M) | Bilderrahmen (M) | B1, to place pictures |
| cuadro (M) | picture | pentraĵo | Bild (N) | Bild (N) | B1, to place pictures |
| póster (M) | poster | afiŝo | Poster (N) | Poster (N) | A2, to place pictures |
| comedor (M) / salón comedor (M) | dining room | manĝoĉambro / manĝejo | Esszimmer (N) | Ässzimmer (N) | A1, dining room |
| mantel (M) | tablecloth | tablotuko | Tischdecke (F) | Tischdecki (F) | B1, dining room |
| cocina (F) | kitchen | kuirejo | Küche (F) | Chuchi (F) | A2, kitchen |
| frigorífico (M) | fridge / refrigerator | fridujo / fridigujo | Kühlschrank (M) | Chüelschrank (M) | A1, kitchen |
| congelador (M) | freezer | frostigilo / frostigujo | Gefrierschrank (M) | Gfrührer (M) | A1, kitchen |
| cafetera (F) | coffee maker / coffee machine | kafaparato | Kaffeemaschine (F) | Kafimaschine (F) | A2, kitchen |
| horno (M) | oven | forno / bakujo / bakforno | Ofen (M) | Ofe (M) | A1, kitchen |
| microondas (M) / horno microondas (M) | microwave / microwave oven | mikroonda forno | Mikrowelle (F) | Mikrowälle (F) | A1, kitchen |
| campana extractora (F) | exhaust hood / extractor hood / cooker hood / kitchen extractor |   | Abzugshaube (F) | Lüftig (M) | B1, kitchen |
| vitrocerámica (F) | ceramic hob / electric hob | forsuĉilo de vaporo | Kockfeld (N) / Herdplatte (F) | Herdplatte (F) | B1, kitchen |
| fogones (M/Pl) | stove / gas plate | forno | Herd (M) / Gasplatte (F) | Gasplatte (F) | B1, kitchen |
| encimera (F) | countertop | ĉefa laborloko / kuirprepara loko | Arbeitsplatte (F) | Arbeitsplatte (F) | B1, kitchen |
| cajón (M) | drawer | tirkesto | Schublade (F) | Schublade (F) | A2, kitchen |
| balcón (M) | balcony | balkono | Balkon (M) | Balkon (M) | A1, balcony |
| macetero (M) / maceta (F) | flower pot / pot | florujo | Topf (M) | Topf (M) | B1, balcony |
| terraza (F) | terrace | teraso | Terrasse (F) | Terrasse (F) | A1, terrace / roof |
| tejado (M) | roof | tegmento | Dach (N) | Dach (N) | A1, terrace / roof |
| antena (F) | antenna | anteno | Antenne (F) | Antänne (F) | B1, terrace / roof |
| antena parabólica (F) | satellite dish | satelita anteno | Satellitenschüssel (M) | Satellitenschüssle (M) | B1, terrace / roof |
| dormitorio (M) | bedroom | dormoĉambro | Schlafzimmer (N) | Schlafzimmer (N) | A1, bedroom |
| mesita de noche (F) | bedside table | noktotablo | Nachttisch (M) | Nachttisch (M) / Nachttischli (N) | A1, bedroom |
| armario (M) | wardrobe | vestotenejo / ŝranko / vestoŝranko | Schrank (M) | Schrank (M) | A1, bedroom |
| almohada (F) | pillow | kapkuseno | Kissen (N) | Chüssi (N) | A1, bedroom |
| funda de almohada (F) | pillowcase | kapkusenokovrilo | Kissenbezug (M) | Chüssibezug (M) | B1, bedroom |
| cama (F) | bed | lito | Bett (N) | Bett (N) | A1, bedroom |
| ropa de cama (F) | bedding | litaĵo | Bettdecke (F) | Decki (F) | A1, bedroom |
| edredón (M) | duvet / eiderdown | litkovrilo / duveto | Bettdecke (F) | Duvet (N) | A2, bedroom |
| covertor de edredón (F) | duvet cover | duvetokovrilo | Bettbezug (M) | Bettbezug (M) | A2, bedroom |
| colchón (M) | mattress | matraco | Matratze (F) | Matraze (F) | B1, bedroom |
| funda de colchón (F) | mattress cover | matracokovrilo | Bettlaken (N) | Bettlake (N) | B1, bedroom |
| sábana (F) | bed sheet | litotuko | Bettwäsche (F) |  | A2, bedroom |
| lampara (F) | lamp | lampo | Lampe (F) | Lampe (F) | A1, bedroom |
| garaje (M) | garage | garaĝo | Garage (F) | Garag (F) | A1, garage |
| sótano (M) | basement | subetaĝo / kelo | Keller (M) | Chäller (M) | A1, basement |
| lavadora (F) | washing machine | lavmaŝino | Waschmaschine (F) | Wöschmaschine (F) | A1, basement |
| secadora (F) | dryer | sekigaŭtomato | Trockner (M) | Tumbler (M) | A1, basement |
| cuerda de tender (F) / tendedero (M) | clothesline | pendigŝnuro | Wäscheleine (F) | Wöschleine (F) | A2, basement |
| recibidor (M) | entryway | enirejo | Eingang (M) | Iigang (M) | A2, entryway |
| espejo (M) | mirror | spegulo | Spiegel (M) | Spiegel (M) | A1, entryway |
| reflejo (M) | reflection | reflekto | Spiegelbild (M) | Spiegelbild (M) | A2, entryway |
| entrada (F) | entrance | eniro | Eingang (M) | Iigang (M) | A1, entrance |
| salida (F) | exit | eliro | Ausgang (M) | Uusgang (M) | A1, exit |
| radiador (M) | radiator | malvarmigilo / radiatoro | Heizkörper (M) | Heizkörper (M) | A2, heating/cooling |
| calefacción (F) | heating | hejtado | Heizung (F) | Heizig (F) | A2, heating/cooling |
| ventilador (M) | fan | ventolilo | Ventilator (M) | Ventilator (M) | A2, heating/cooling |
| aire acondicionado (M) | air conditioning | klimatizilo | Klimaanlage (F) | Klimaaalag (F) | A2, heating/cooling |

### Verbs: House
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tocar el timbre | to ring the bell - rang the bell - rung the bell | sonorigi | klingeln | lüüte | A2 |

### Nouns: Economy
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| economía (F) | economy | ekonomio | Wirtschaft (F) | Wirtschaft (F) | B1 |
| cuenta bancaria (F) | bank account | bankkonto | Bankkonto (N) | Bankkonto (N) | A1 |
| saldo de cuenta (M) | balance / account balance | saldo | Kontostand (M) | Kontostand (M) | A1 |
| extracto de cuenta (M) | bank statement / account statement | banketalo | Kontoauszug (M) | Kontouuszug (M) | A1 |
| intereses (M/Pl) | interests | interezoj | Zinsen (M/Pl) | Zinse (M/Pl) | A1 |
| préstamo (M) | loan | prunto | Darlehen (N) | Darlehe (N) | B1 |
| hipoteca (F) | mortgage | hipoteko | Hypothek (F) | Hypothek (F) | B1 |
| impuestos (M/Pl) | taxes | impostoj / taksoj | Steuern (N/Pl) | Stuure (N/Pl) | A2 |
| contabilidad (F) | accounting | kontado | Buchhaltung (F) | Buechhaltig (F) | B1 |
| transferencia (F) / transferencia bancaria (F) | wire transfer / bank transfer / credit transfer | ĝiro | Überweisung (F) / Banküberweisung (F) | Überwiisig (F) / Banküberwiisig (F) | A2 |

### Nouns: Finance
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| finanzas (F/Pl) | finance | financo | Finanzen F/Pl) | Finanze (F/Pl) | B1 |
| bolsa (F) / mercado de valores (M) | stock market / stock exchange | borso / biloborso | Aktienmarkt (M) / Börse (F) | Aktiemarkt (M) / Börse (F) | B1 |
| acción (F) | share | akcio | Aktie (F) | Aktie (F) | B1 |
| beneficio (M) | benefit | profito | Gewinn (M) | Gwünn (M) | B1 |
| pérdida (F) | loss | malprofito | Verlust (M) | Verlust (M) | B1 |

### Verbs: Finance
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tener beneficios - tenido beneficios | to have benefits - had benefits - had benefits | profiti | sich rentieren - rentierte sich - sich rentiert | rentiere - rentiersch - rentiert | A2 |

### Nouns: Shopping
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| escaparate (M) | shop window | montrofenestro | Schaufenster (N) | Schaufänster (N) | A2 |
| cajero (M) | cashier / check-out counter | kasisto | Kasse (F) | Kasse (F) | A1 |
| rebaja (F) / rebajas (F/Pl) | sale | vendo | Rabaat | Rabatt | A1, sale |
| oferta especial (F) | special offer | speciala oferto | Sonderangebot | Sonderaagebot | A1, sale |
| tarjeta de crédito (F) | credit card | kreditkarto | Kreditkarte (F) | Kreditcharte (F) | A1, payment |
| tarjeta de débito (F) | debit card | debetkarto | Debitkarte (F) | Debitcharte (F) / Bankcharte (F) | A1, payment |
| efectivo (F) | in cash / cash | kontante | bar | bar | A1, payment |
| cambio (M) | change | ŝanĝi | Wechselgeld (N) | Wächslgäld (N) | A1, payment |
| factura (F) | invoice | fakturo | Rechnung (F) | Rächnig (F) | A1, invoice |
| recibo (M) | receipt | ricevatesto / kvitanco | Quittung (F) | Quittig (F) | A1, invoice |
| presupuesto (M) | pricing proposal | prezopropono | Preisvorschlag (M) | Priisvorschlag (M) | B1, invoice |
| presupuesto (M) | budget | buĝeto | Budget (N) | Budget (N) | B1, invoice |
| garantía (F) | warranty | garantio | Garantie (F) | Garanti (F) | A2, warranty, written guarantee when buying an item |
| garantía (F) | guarantee | garantio | Garantie (F) | Garanti (F) | A2, warranty |
| seguro (M) | insurance | asekuro | Versicherung (F) | Versicherig (F) | A2, warranty |
| carrito de la compra (M) | shopping cart | aĉetĉareto / aĉetrulkorbo | Einkaufswagen (M) | Iinchaufswage (M) | A2, shopping |
| máquina expendedora (F) | vending machine | vendmaŝino | Verkaufsautomat (M) / Automat (M) | Verchaufsautomat (M) / Automat (M) | B1, shopping |
| departamento (M) | department | fako | Abteilung (F) | Abtäilig (F) | B1, shopping |
| cola (F) | queue | vico / atendovico | Schlange (F) | Schlange (F) | A1, shopping |
| horario de apertura (M) | opening hours | malferma horaro | Öffnungszeiten (F/Pl) | Öffnigsziite (F/Pl) | A2, opening hours |
| aduanas (F/Pl) | customs | dogano | Zoll (M) | Zoll (M) | A2, customs |
| compra (F) | purchase | aĉeto | Kauf (M) | Chauf (M) | A1, actions |
| venta (F) | sale | vendo | Verkauf (M) | Verchauf (M) | A1, actions |
| devolución (F) | return | reveno | Rücksendung (F) | Rücksändig (F) | A2, actions |

### Adjectives: Shopping
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| barato - barata | cheap | malmultekosta / malkara | billig | billig | A1 |
| caro - cara | expensive | multekosta / kara | teuer | tüür | A1 |
| gratis | free | senkosta | kostenlos / gratis / frei | gratis / kostenlos | A1 |
| rebajado | reduced | reduktita | Reduziert | Reduziert | A1 |

### Verbs: Shopping
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| comprar | to buy - bought - bought | aĉeti | kaufen | chaufe - chaufsch - kauft | A1 |
| vender | to sell - sold - sold | vendi | verkaufen - verkaufte - verkauft | verchaufe - verchaufsch - verchauft | A1 |
| pagar | to pay - paid - paid | pagi | bezahlen - - bezahlt / zahlen | zahle - zalsch - zahlt | A1 |
| gastar | to spend - spent - spent | elspezi | ausgeben - gab aus - ausgegeben | uusgee - du gisch uus - uusgeh | A1, a person spends money |
| ir de compras | to go shopping - went shopping - gone shopping | iri butikumado | einkaufen - kaufte ein - eingekauft | poschte - poschtisch - poschtet | B1 |
| ir de tiendas | to go shopping - went shopping - gone shopping | iri butikumado | einen Schaufensterbummel machen - machte einen Schaufensterbummel - einen Schaufensterbummel gemacht | lädele - lädelish - glädelet | B1 |
| encargar | to order - ordered - ordered | mendi | bestellen - - bestellt | bstelle - bstellsch - bstellt | B1 |
| costar | to cost - cost - cost | kosti | kosten - kostete - gekostet | choste - chostisch - kostet | A2 |

### Nouns: Materials
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| material (M) | material | materialo | Stoff (M) / Material (N) | Stoff (M) / Material (N) | A1 |
| gas (M) | gas | gaso | Gas (N) | Gas (N) | A2 |
| líquido (M) | liquid | fluaĵo | Flüssigkeit (F) | Flüssigkäit (F) | A2 |
| solido (M) | solid | malfluido | Feststoff (M) | Feststoff (M) | A2 |
| sustancia (F) | substance | substanco | Substanz (F) | Substanz (F) | A2 |
| madera (F) | wood | ligno | Holz (N) | Holz (N) | A1, from trees |
| contrachapado (M) | plywood | krucoplakaĵo | Sperrholz (N) | Sperrholz (N) | B1, from trees |
| corcho (M) | cork | korko | Kork (M) | Kork (M) | B1, from trees |
| agua (F; pero "el agua") | water | akvo | Wasser (N) | Wasser (N) | A1, water |
| hielo (M) | ice | glacio | Eis (N) | Iis (N) | A1, water |
| cubito de hielo (M) | ice cube | glacia kubo | Eiswürfel (M) | Iiswürfel (M) | A1, water |
| espuma (F) | foam | ŝaŭmo | Schaum (M) | Schuum (M) | B1, water |
| vapor (M) | steam | vaporo | Dampf (M) | Dampf (M) | A2, water |
| metal (M) | metal | metalo | Metall (N) | Metall (N) | A1, metal |
| óxdo (M) | oxide | oksido | Rost (M) | Rost (M) | B1, metal |
| cobre (M) | copper | kupro | Kupfer (N) | Kupfer (N) | B1, metal |
| bronce (M) | bronze | bronzo | Bronze (F) | Bronze (F) | B1, metal |
| hierro (M) | iron | fero | Eisen (N) | Iise (N) | A1, metal |
| oro (M) | gold | oro | Gold (N) | Gold (N) | A2, metal |
| plata (F) | silver | arĝento | Silber (N) | Silber (N) | A2, metal |
| tejido (M) | fabric | ŝtofo | Stoff (M) | Stoff (M) | A2, fabric |
| seda (F) | silk | silko | Seide (F) | Siide (F) | A2, fabric |
| hilo (M) | thread | fadeno | Faden (M) | Fade (M) | B1, fabric |
| tela (F) | cloth | tuko | Stoff (M) | Stoff (M) | A1, fabric |
| cuero (M) | leather | ledo | Leder (N) | Leder (N) | A2, fabric |
| nilon (M) | nilon | nilon | Nylon (N) | Nylon (N) | B1, fabric |
| algodón (M) | cotton | kotono | Baumwolle (F) | Baumwulle (F) | A2, fabric |
| lana (F) | wool | lano | Wolle (F) | Wulle (F) | A2, fabric |
| plástico (M) | plastic | plasto | Kunststoff (M) / Plastik (F) | Kunststoff (M) / Plastik (F) | A2, fabric |
| tierra (F) | dirt | tero | Erde (F) | Erde (F) | A1, from earth |
| barro (M) | mud | koto | Schlamm (M) | Schlamm (M) | A1, from earth |
| arena (F) | sand | sablo | Sand (M) | Sand (M) | A1, from earth |
| arcilla (F) | clay | argilo | Lehm (M) | Lehm (M) | B1, from earth |
| cemento (M) | concrete | betono | Beton (M) | Beton (M) | B1, from earth |
| cerámica (F) | ceramic | ceramiko | Keramik (F) | Keramik (F) | B1, from earth |
| porcelana (F) | porcelain | porcelano | Porzellan (N) | Porzellan (N) | B1, from earth |
| piedra (F) | stone | ŝtono | Stein (M) | Stäi (M) | A1, from earth |
| vídrio (M) | glass | vitro | Glas (N) | Glas (N) | A2, from earth |
| cristal (M) | crystal | kristalo | Kristall (M) | Kristall (M) | A2, from earth |
| cartón (M) | cardboard | kartono | Karton (M) | Karton (M) | A1, paper |
| papel (M) | paper | papero | Papier (N) | Papier (N) | A1, paper |
| cuerda (F) | rope | ŝnuro | Seil (N) | Säil (N) | A1, string |
| aire (M) | air | aero | Luft (F) | Luft (F) | A1, air |
| humo (M) | smoke | fumo | Rauch (M) | Rauch (M) | B1, air |
| fuego (M) | fire | fajro | Feuer (N) | Füür (N) | A1, fire |
| cera (F) | wax | vakso | Wachs (N) | Wachs (N) | A1, wax |

### Nouns: Clothes
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ropa (F) | clothes | vestaĵoj | Kleider (N/Pl) | Chleider (N/Pl) | A1 |
| prenda (F) / prenda de vestir (F) | garment | vesto / vestaĵo | Kleidungsstück (N) | Chleidigsstuck (N) | A1 |
| abrigo (M) | coat | mantelo | Mantel (M) | Mantel (M) | A1 |
| suéter (M) / jersey (M) / sudadera (F) | sweater / sweatshirt | svetero | Pulli (M) / Jäckchen (N) / Sweatshirt (N) | Pulli (M) / Jäggli (N) / Sweatshirt (N) | A1 |
| falda (F) | skirt | jupo | Rock (M) | Rock (M) | A1 |
| camisa (F) | shirt | ĉemizo | Hemd (N) | Hämd (N) / Hämmli (N) | A1 |
| chaqueta (F) | jacket | jako | Jacke (F) | Jagge (F) | A1 |
| capucha (F) | hood | kapuĉo | Kapuze (F) | Kapuze (F) | A1 |
| pantalones (M/Pl) | pants / trousers | pantalonoj | Hose (F) | Hose (F) | A1 |
| pantalones vaqueros (M/Pl) / vaqueros (M/Pl) | jeans | pantalonoj | Jeans (F) | Jeans (F) | A1 |
| zapato (M) | shoe | ŝuo | Schuh (M) | Schueh (M) | A1 |
| cordones de zapato (M/Pl) | shoelaces / shoestrings | ŝulaĉoj | Schnürsenkel (M) / Schuhband (N) | Schnüersänkel (M) | A2 |
| calcetín (M) | sock | ŝtrumpeto | Socke (F) | Socke (F) | A1 |
| pantalones cortos (M/Pl) | shorts | mallongaj pantalonoj | kurze Hosen (F) / Shorts (Pl) | churzi Hose (F) / Shorts (Pl) | A1 |
| blusa (F) | blouse | bluzo | Bluse (F) | Bluse (F) | A2 |
| pijama (M) | pajama | piĵamo | Schlafanzug (M) | Piji (N) / Pyjama (M) | A1 |
| cordón (M) | cord | ŝnuro | Schnur (F) | Schnuer (F) | B1, fixings |
| parche (M) | patch | flikaĵo | Aufnäher (M) | Uufnäher (M) | B1, fixings |
| cremallera (F) | zipper | fulmofermilo / zipfermilo / zipligilo | Reißverschluss (M) | Riissverschluss (M) | A1, fixings |
| velcro (M) | velcro | lapfermilo | Klettverschluss (M) | Chlättverschluss (M) | A1, fixings |
| botón (M) | button | butono | Knopf (M) | Chnopf (M) | A1, fixings |
| ojal (M) | eyelet | kablingo | Öse (F) | Öse (F) | B1, fixings |
| ropa interior (F) | underwear | subvestoj / subvestaĵo | Unterwäsche (F) | Unterwösch (F) | B1, underclothes |
| calzoncillos (M/Pl) | underpants | kalsono | Unterhose (F) | Unterhose (F) | A2, underclothes |
| bragas (F/Pl) | panties | kalsono | Hösschen (N) | Hösli (N) | A2, underclothes |
| sujetador (M) | bra | brusttenilo / mamtenilo | Büstenhalter (M) / Bustier (N) / BH (M) | BH (M) | A2, underclothes |
| guante (M) | glove | ganto | Handschuh (M) | Händsche (M, au für zwei) | A1, underclothes |
| sombrero (M) | hat | ĉapelo | Hut (M) | Huet (M) | A2, accessories |
| gorro (M) | hat | ĉapelo | Mütze (F) | Chappe (F) | A2, accessories |
| gorra (F) | cap | ĉapo / kepo | Hut (M) / Kappe (F) | Chäppi (N) | A2, accessories |
| bufanda (F) | scarf | koltuko | Schal (M) | Schal (M) | A2, accessories |
| corbata (F) | tie | kravato | Krawatte (F) | Krawatte (F) | A1, accessories |
| chubasquero (M) | waterproof jacket | akvimuna ĵako | wasserfeste Jacke (F) / wasserdichte Jacke (F) | wasserfeste Jagge (F) / wasserdichte Jagge (F) | B1, accessories |
| paraguas (M) | umbrella | ombrelo / pluvombrelo | Regenschirm (M) | Rägenschirm (M) | A2, accessories |
| pañuelo (M) | handkerchief | naztuko / poŝtuko | Tuch (N) | Tuech (N) | B1, accessories |
| bolso (M) | purse | monujo | Tasche (F) / Handtasche (F) | Tasche (F) / Handtasche (F) | A2, accessories |
| mochila (F) | backpack | dorsosako | Rucksack (M) | Rucksack (M) | A1, accessories |
| cartera (F) | wallet | biletujo | Brieftasche (F) | Portmonnaie (N) | A2, accessories |
| cinturón (M) | belt | zono | Gürtel (M) | Gürtel (M) | A1, accessories |
| reloj de muñeca (M) / reloj (M) | wrist watch / watch | bracelethorloĝo / pojnhorloĝo | Armbanduhr (F) / Uhr (F) | Armbanduhr (F) / Uhr (F) | A1 |
| gafas (F/Pl) | glasses | okulvitroj | Brille (F) | Brülle (F) | A1, to see |
| lentillas (F/Pl) / lentes de contacto (F/Pl) | contact lenses | kontaktlensoj | Linse (F) | Linse (F) | A1, to see |
| gafas de sol (F/Pl) | sunglasses | sunokulvitroj | Sonnenbrille (F) | Sunnebrülle (F) | A1, to see |
| joya (F) | jewel | juvelo | Schmuck (M) | Schmuck (M) | A2, jewelry |
| joyas (Pl) | jewelry | juveloj | Schmucke (Pl) | Schmucke (Pl) | A2, jewelry |
| pendiente (M) | earring | orelringo | Ohrring (M) | Ohrring (M) / Ohrringli (Pl) | A2, jewelry |
| anillo (M) | ring | ringo | Ring (M) | Ring (M) | A2, jewelry |
| collar (M) | necklace | koliero | Halskette (F) | Chetti (F) | A2, jewelry |
| percha (F) | hanger | vestarko | Kleiderbügel (M) / Aufhänger (M) | Chleiderbügel (M) | A2, to hang clothes |
| perchero (M) | coat rack | vestorako | Kleiderständer (M) | Chleiderständer (M) | A2, to hang clothes |
| funda (F) | case | kesto | Beutel (M) | Büütel (M) | B1, cases |
| estuche (M) | case | kesto | Behälter (M) | Etui (N) | B1, cases |
| covertor (M) | cover | kovrilo | Bezug (M) | Bezug (M) | B1, cases |

### Verbs: Clothes
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| llevar / llevar puesto | to wear - wore - worn | porti | tragen - trug - getragen / anhaben - hatte an - angehabt | aahaa - haasch aa - aaghaa | A2 |
| ponerse - haberse puesto | to put on - put on - put on | surmeti | anziehen - zog an - angezogen | aazieh - ziesch aa - aazoge | A1 |
| quitarse - haberse quitado | to take off - took off - taken off | demeti | ausziehen - zog aus - ausgezogen | uuszieh - ziesch uus - uuszoge | A2 |
| cambiarse - haberse cambiado | to change | ŝanĝi la vestojn | umziehen - zog um - umgezogen | umzieh - ziesch um - umzoge | A2 |
| tejer | to knit - knitted/knit - knitted/knit | triki | stricken | lisme - lismisch - glismet | B1 |
| coser | to sew - sewed - sewed/sewn | kudri | nähen | näie - näisch - gnäit | B1 |
| remendar | to patch up | ripari | flicken | flicke - flicksch - gflickt | B1 |

### Nouns: Travel
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| viaje (M) | trip | vojaĝo | Ausflug (M) | Uusflug (M) | A1 |
| viaje (M) | travel | vojaĝado | Reise (F) | Rais (F) | A1 |
| viaje de negocios (M) | business trip | komerca vojaĝo | Geschäftsreise (F) | Gschäftsreis (F) | A2 |
| vacaciones (F/Pl) | vacation (US) / holiday (UK) | ferioj | Urlaub (M) | Ferie (Pl) | A1 |
| turista | tourist | turisto | Tourist (M) | Tourist (M) | A1 |
| maleta (F) | suitcase | valizo / kofro | Koffer (M) | Koffer (M) | A1, baggage |
| equipaje (M) | luggage / baggage | bagaĝo / pakaĵo | Gepäck (N) | Gepäck (N) | A1, baggage |
| equipaje de mano (M) | carry-on luggage / carry-on baggage | kunportata bagaĝo | Handgepäck (N) | Handgepäck (N) | A2, baggage |
| equipaje facturado (M) | checked luggage / checked baggage | deponita bagaĝo | check-in Gepäck (N) / aufgegebenes Gepäck (N) | check-in Gepäck (N) / uufgebegenes Gepäck (N) | A2, baggage |
| etiqueta (F) | label | etikedo | Etikette (F) | Etikette (F) | A1, baggage |
| billete (M) | ticket | bileto | Fahrkarte (F) | Billet (N) | A1, documents |
| pasaporte (M) | passport | pasporto | Reisepass (M) / Pass (M) | Pass (M) | A1, documents |

### Nouns: Landscape
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| montaña (F) | mountain | monto | Berg (M) | Berg (M) | A1 |
| sierra (F) | mountain chain | montoĉeno | Gebirgszug (M) / Bergkette (F) | Gebirgszug (M) / Bergchetti (F) | A2 |
| fuente (F) | fountain | fonto / fontano | Brunnen (M) | Brunne (M) | A1 |
| manantial (M) | spring | fonto | Quelle (M) | Quälle (F) | A2 |
| piedra (F) | stone | ŝtono | Stein (M) | Stäi (M) | A1 |
| peñón (M) | rock | ŝtonego | Fels (M) | Fels (M) | B1 |
| acantilado (M) | cliff | klifo | Klippe (F) | Klippe (F) | B1 |
| barranco (M) | ravine | fendego | Schlucht (F) | Schlucht (F) | B1 |
| río (M) | river | rivero | Fluss (M) | Fluss (M) | A1 |
| lago (M) | lake | lago | See (M) | See (M) | A1 |
| mar (M) | sea | maro | Meer (N) | Meer (N) | A1 |
| playa (F) | beach | strando / plaĝo | Strand (N) | Strand (N) | A2 |
| orilla (F) | shore | marbordo | Ufer (N) | Ufer (N) | A2 |
| ola (F) | wave | ondo | Welle (F) | Wälle (F) | A2 |
| campo (M) | field | kampo | Feld (N) | Fäld (N) | A2 |
| oceano (M) | ocean | oceano | Ozean (M) | Ozean (M) | A2 |
| bosque (M) | forest | arbaro | Wald (M) | Wald (M) | A2 |
| cueva (F) | cave | kaverno / kavo / groto | Höhle (F) | Höhli (F) | A2 |
| pradera (F) | prairie | prerio / herbejo | Prärie (F) | Prärie (F) | B1 |
| selva (F) / jungla (F) | jungle | ĝangalo | Dschungel (M) | Dschungel (M) | B1 |
| desierto (M) | desert | dezerto | Wüste (F) | Wüesti (F) | B1 |
| pantano (M) | swamp | marĉejo / marĉo | Sumpf (M) | Sumpf (M) | A2 |
| polo norte (M) | north pole | norda poluso | Nordpol (M) | Nordpol (M) | B1 |
| polo sur (M) | south pole | suda poluso | Südpol (M) | Südpol (M) | B1 |

### Nouns: Languages
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| idioma (M) / lengua (F) / lenguaje (M) | language | lingvo | Sprache (F) | Spraach (F) | A1 |
| abecedario (M) / alfabeto (M) | alphabet | aboco / alfabeto | Alphabet (N) | Alphabet (N) | A1 |
| letra (F) | letter | letero | Buchstabe (M) | Buechstabe (M) | A1 |
| símbolo (M) | symbol | simbolo | Symbol (N) | Symbol (N) | A2 |
| dialecto (M) | dialect | dialekto | Dialekt (M) / Mundart (F) | Dialäkt (M) / Mundart (F) | A1 |
| español (M) | Spanish | hispana (lingvo) | Spanisch (N) | Spanisch (N) | A2 |
| inglés (M) | English | angla (lingvo) | Englisch (N) | Änglisch (N) | A2 |
| esperanto (M) | Esperanto | Esperanto | Esperanto (N) | Esperanto (N) | A2 |
| alemán (M) | German | germana (lingvo) | Deutsch (N) | Tüütsch (N) | A2 |
| alemán alto (M) | High German | alta germana (lingvo) | Hochdeutsch (N) | Hochtüütsch (N) | A2 |
| alemán suizo (M) | Swiss German | svisgermana (lingvo) | Schweizerdeutsch (N) | Zuritüütsch (N) / Schwiizertüütsch (N) | A2 |
| frances (M) | French | franca (lingvo) | Französisch (N) | Französisch (N) | A2 |
| italiano (M) | Italian | itala (lingvo) | Italienisch (N) | Italienisch (N) | A2 |
| portugués (M) | Portuguese | portugala (lingvo) | Portugiesisch (N) | Portugiesisch (N) | A2 |
| japonés (M) | Japanese | japana (lingvo) | Japanisch (N) | Japanisch (N) | A2 |
| ruso (M) | Russian | rusa (lingvo) | Russisch (N) | Russisch (N) | A2 |
| mandarín (M) | Mandarin | mandarina (lingvo) | Mandarin (N) | Mandarin (N) | A2 |
| gramática (F) | grammar | gramatiko | Grammatik (F) | Grammatik (F) | A1, grammar |
| regla gramatical (F) | grammar rule | gramatika regulo | Grammatikregel (F) | Grammatikregel (F) | B1, grammar |
| excepción (F) | exception | escepto | Ausnahme (F) | Uusnahme (F) | B1, grammar |
| sujeto (M) | subject | subjekto | Subjekt (N) | Subjekt (N) | B1, grammar |
| predicado (M) | predicate | predikato | Prädikat (N) | Prädikat (N) | B1, grammar |
| verbo (M) | verb | verbo | Verb (N) | Verb (N) | A1, grammar |
| adverbio (M) | adverb | adverbo | Adverb (N) | Adverb (N) | A2, grammar |
| adjetivo (M) | adjective | adjektivo | Adjektiv (N) | Adjektiv (N) | A1, grammar |
| artículo (M) | article | artikolo | Artikel (M) | Artikel (M) | A1, grammar |
| pronombre (M) | pronoun | pronomo | Pronomen (N) | Pronomen (N) | A2, grammar |
| nombre (M) | noun | nomo | Nomen (N) | Nomen (N) | A2, grammar |
| conjunción (F) | conjunction | konjunkcio | Konjunktion (F) | Konjunktion (F) | A2, grammar |
| preposición (F) | preposition | prepozicio | Präposition (F) | Präposition (F) | A2, grammar |
| interjección (F) | interjection | interjekcio | Interkejtion (F) | Interkejtion (F) | B1, grammar |
| objeto directo (M) | direct object | rekta objekto | direktes Objekt (N) | diräkts Objekt (N) | B1, grammar |
| objeto indirecto (M) | indirect object | malrekta objekto | indirektes Objekt (N) | indiräktes Objekt (N) | B1, grammar |
| declinación (F) | declension | deklinacio | Deklination (F) | Deklination (F) | B1, grammar |
| frase (F) | phrase | lokucio | Satzteil (M) | Satzteil (M) | A2, sentences |
| oración (F) | sentence | frazo | Satz (M) | Satz (M) | A1, sentences |
| palabra (F) | word | vorto | Wort (N) | Wort (N) | A1, words |
| vocabulario (M) | vocabulary | vortlisto | Wortschatz (M) | Wortschatz (M) | A1, words |
| sílaba (F) | syllable | silabo | Silbe (F) | Silbe (F) | A1, words |
| vocal (F) | vowel | vokalo | Vokal (M) | Vokal (M) | A1, words |
| consonante (F) | consonant | konsonanto | Konsonant (M) | Konsonant (M) | A1, words |
| significado (M) | meaning | signifo | Bedeutung (F) | Bedüütig (F) | A1, words |
| diccionario (M) | dictionary | vortaro | Wörterbuch (N) | Wörterbuech (N) | A1, words |
| signo de puntuación (M) | score sign | interpunkciaj markoj | Satzzeichen (N) | Satzzäichen (N) | B1, score signs |
| interrogación (F) / signo de interrogación (M) | interrogation / question mark | ĉusigno / demandosigno | Fragezeichen (N) | Fragezäiche (N) | A2, score signs |
| exclamación (F) / signo de exclamación (M) | exclamation / exclamation point | krisigno | Ausrufezeichen (N) | Ausrufezäiche (N) | A2, score signs |
| punto (M) | period | punkto | Punkt (M) | Punkt (M) | A2, score signs |
| coma (F) | comma | komo | Komma (N) | Komma (N) | A2, score signs |
| dos puntos (M/Pl) | colon | dupunkto | Doppelpunkt (M) | Doppelpunkt (M) | B1, score signs, : |
| punto y coma (M) | semicolon | punktokomo | Semikolon (N) / Strichpunkt (M) | Semikolon (N) / Strichpunkt (M) | B1, score signs, ; |
| guión (M) | hyphen | streketo / dividostreko | Bindestrich (M) | Bindestrich (M) | B1, score signs |
| puntos suspensivos (M/Pl) | ellipsis | tripunkto | Auslassungspunkt (M) | Uuslassigspünkt (M) | B1, score signs |
| comillas simples (F/Pl) / comillas (F/Pl) | single quotes / quotes | solaj citaĵoj / solaj citiloj / citaĵoj / citiloj | einfache Anführungszeichen (N) / Anführungszeichen (N) -- Schlusszeichen (N) | äifache Aaführigszäiche (N) / Aaführigszäiche (N) -- Schlusszäiche (N) | B1, score signs |
| comillas dobles (F/Pl) / comillas (F/Pl) | double quotes / quotes | doublaj citaĵoj / doublaj citiloj / citaĵoj / citiloj | doppelte Anführungszeichen (N) / Anführungszeichen (N) -- Schlusszeichen (N) | doppelte Aaführigszäiche (N) / Aaführigszäiche (N) -- Schlusszäiche (N) | B1, score signs |

### Adjectives: Languages
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| masculino - masculina | male | vira | maskulin / männlich | maskulin / männlich | A2 |
| femenino - femenina | female | virina | feminin / weiblich | feminin / wiiblich | A2 |
| neutro - neutra | neutral | neŭtra | neutrum / sachlich | neutrum / sachlich | A2 |

### Verbs: Languages
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hablar | to speak - spoke - spoken | paroli | reden - redete - geredet | rede - redsch - gredet | A1, a language |
| pronunciar | to pronounce | prononci | aussprechen - sprach aus - ausgesprochen | uuspräche - sprichsch uus - uusgsproche | A2 |

### Nouns: Countries
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| país (M) | country | lando | Land (N) | Land (N) | A1 |
| España (F) | Spain | Hispanio | Spanien (N) | Spanie (N) | A1 |
| Reino Unido (M) | United Kingdom | Unuiĝinta Reĝlando | Vereinigtes Königreich (N) | Veräinigtes Königriich (N) | A2 |
| Estados Unidos de América (M/Pl) | United States of America | Usono | Vereinigte Staaten von Amerika (M/Pl) | Veräinigti Staate vo Amerika (M/Pl) | A2 |
| Alemania (F) | Germany | Germanio | Deutschland (N) | Tüütschland (N) | A2 |
| Suiza (F) | Switzerland | Svislando | Schweiz (F) | Schwiiz (F) | A2 |
| Francia (F) | France | Francio | Frankreich (N) | Frankriich (N) | A2 |
| Italia (F) | Italy | Italio | Italien (N) | Italie (N) | A2 |
| Portugal (M) | Portugal | Portugalio | Portugal (N) | Portugal (N) | A2 |
| Japón (M) | Japan | Japanio | Japan (N) | Japa (N) | A2 |
| Rusia (F) | Russia | Rusio | Russland (N) | Russland (N) | A2 |
| China (F) | China | Ĉinio | China (N) | China (N) | A2 |

### Nouns: Nationalities
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| nacionalidad (F) | nationality | nacieco | Staatsangehörigkeit (F) | Staatsaaghörigkeit (F) | A2 |
| ciudadanía (F) | citizenship | civitaneco | Staatsbürgerschaft (F) | Staatsbürgerschaft (F) | A2 |
| español - española | Spaniard | hispanulo - hispanulino | Spanier - Spanierin | Spanier - Spanierin | A2, specific nationalities |
| inglés - inglesa | Englishman - Englishwoman | anglulo - anglulino | Engländer - Engländerin | Ängländer - Ängländerin | A2, specific nationalities |
| alemán - alemana | German | germanulo - germanulino | Deutscher - Deutsche | Tüütsche - Tüütschi | A2, specific nationalities |
| suizo - suiza | Swiss | svisulo - svisulino | Schweizer - Schweizerin | Schwiizer - Schwiizerin | A2, specific nationalities |
| frances - francesa | Frenchman - Frenchwoman | franculo - franculino | Franzose - Französin | Franzos - Französin | A2, specific nationalities |
| italiano - italiana | Italian | italulo - italulino | Italiener - Italienerin | Iitaliener - Italienerin | A2, specific nationalities |
| portugués - portuguesa | Portuguese | portugalulo - portugalulino | Portugiese - Portugiesin | Portugiis - Portugiisin | A2, specific nationalities |
| japonés - japonesa | Japanese | japanulo - japanulino | Japaner - Japanerin | Japaner - Japanerin | A2, specific nationalities |
| ruso - rusa | Russian | rusulo - rusulino | Russe - Russin | Russ - Russi | A2, specific nationalities |
| chino - china | Chinese | ĉinulo - ĉinulino | Chinese - Chinesin | Chines - Chinesin | A2, specific nationalities |
| inmigrante | immigrant | enmigranto | Immigrant (M) | Immigrant (M) | B1, people |
| emigrante | emigrant | elmigranto | Emigrant (M) | Emigrant (M) | B1, people |
| extranjero - extranjera | foreigner | fremdulo / alilandulo / alilandano | Ausländer (M) | Uusländer (M) | B1, people |
| mapa (M) | map | karto / mapo / geografia karto | Karte (F) | Charte (F) | B1, borders |
| bandera (F) | flag | flago | Flagge (F) | Flagge (F) | B1, borders |
| frontera (F) | border | limo | Grenze (F) | Grenze (F) | B1, borders |

### Adjectives: Nationalities
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| español - española | Spanish | hispana | spanisch | spanisch | A2 |
| inglés - inglesa | English | angla | englisch | englisch | A2 |
| alemán - alemana | German | germana | deutsche | düütsch | A2 |
| suizo - suiza | Swiss | svisa | schweizerisch | schwiizerisch | A2 |
| frances - francesa | French | franca | französisch | französisch | A2 |
| italiano - italiana | Italian | itala | italienisch | italienisch | A2 |
| portugués - portuguesa | Portuguese | portugala | portugiesisch | portugiisisch | A2 |
| japonés - japonesa | Japanese | japana | japanisch | japanisch | A2 |
| ruso - rusa | Russian | rusa | russisch | russisch | A2 |
| chino - china | Chinese | ĉina | chinesisch | chinesisch | A2 |

### Nouns: Money
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| dinero (M) | money | mono | Geld (N) | Gäld (N) | A1 |
| suelto (M) / dinero suelto (M) | change | monereta mono | Taschengeld (N) | Sackgäld (N) | A1 |
| billete (M) | banknote | banknoto | Banknote (F) / Geldschein (M) / Note (F) | Note (F) | A1 |
| moneda (F) | coin | monero | Münze (F) | Münze (F) | A1 |
| moneda (F) | currency | valuto | Währung (F) | Währig (F) | B1 |
| cheque (M) | check | ĉeko | Scheck (M) | Scheck (M) | A2 |
| dólar (M) | dollar | dolaro | Dollar (M) | Dollar (M) | A2, specific currencies, $ / USD |
| centavo (M) | cent | cendo | Cent (M) | Cent (M) | A2, specific currencies, $ 0.01 |
| euro (M) | euro | eŭro | Euro (M) | Euro (M) | A2, specific currencies, € / EUR |
| céntimo (M) | cent | cendo | Cent (M) | Cent (M) | A2, specific currencies, 0.01 € |
| libra esterlina (F) / libra (F) | pound sterling / pound | brita pundo | Pfund Sterling (N) / Pfund (N) | Pfund Sterling (N) / Pfund (N) | A2, specific currencies, £ / GBP |
| penique (M) | penny | penco | Penny (M) | Penny (M) | A2, specific currencies, 0.01 £  |
| franco suizo (M) | Swiss franc | svisa franko | Schweizer Franke (M) / Franke (M) | Schwiizer Franke (M) | A2, specific currencies, Fr. / CHF |
| céntimo (M) | cent | centimo | Cent (M) | Cent (M) | A2, specific currencies, 0.01 Fr. |

### Nouns: Weather
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cielo (M) | sky | ĉielo | Himmel (M) | Himmel (M) | A1 |
| sol (M) | sun | sunon | Sonne (F) | Sunne (F) | A1 |
| luna (F) | moon | luno | Mond (M) | Mond (M) | A1 |
| nube (F) | cloud | nubo | Wolke (F) | Wulche (F) | A1 |
| lluvia (F) | rain | pluvo | Regen (M) | Räge (M) | A1 |
| nieve (F) | snow | neĝo | Schnee (M) | Schnee (M) | A1 |
| temperatura (F) | temperature | temperaturo | Temperatur (F) | Temperatur (F) | A1 |
| calor (M) | heat | varmego | Hitze (F) | Hitz (F) | A1 |
| frío (M) | cold | malvarmo | Kälte (F) | Chälti (F) | A1 |

### Adjectives: Weather
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ventoso - ventosa | windy | venta | windig | windig | A2 |
| lluvioso - lluviosa | rainy | pluva | regnerisch | rägnerisch | A1 |
| nevado - nevada | snowy | neĝa | schneebedeckt | schneebedeckt | A2 |
| soleado - soleada | sunny | sunplena | sonnig | sunnig | A1 |
| nublado - nublada | cloudy | nuba | bewölkt | bewölkt | A1 |
| frío - fría | cold | malvarma | kalt | chalt | A1 |
| fresco - fresca | cool | malvarmeta | kühl | chüehl | A2 |
| templado - templada | warm | varma | warm | warm | A2 |
| caliente - caliente / caluroso - calurosa | hot | varma | heiß | häiss | A1 |

### Verbs: Languages
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| llover | to rain | pluvi | regnen - regnete - | rägnen - - grägnet | A1 |
| nevar | to snow | neĝi | schneien | schneie - - gschnäit/gschneit | A1 |

### Nouns: Space
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| planeta (M) | planet | planedo | Planet (M) | Planet (M) | A1 |
| mundo (M) | world | mondo | Welt (F) | Wält (F) | A1 |
| Mercurio (M) | mercury | Merkuro | Merkur (M) | Merkur (M) | A2 |
| Venus (M) | venus | Venuso | Venus (F) | Venus (F) | A2 |
| la Tierra (F) | the Earth | la Tero | die Erde (F) | die Erde (F) | A1 |
| Marte (M) | Mars | Marso | Mars (M) | Mars (M) | A2 |
| Jupiter (M) | Jupiter | Jupitero | Jupiter (M) | Jupiter (M) | A2 |
| Saturno (M) | Saturn | Saturno | Saturn (M) | Saturn (M) | A2 |
| Urano (M) | Uranus | Urano | Uranus (M) | Uranus (M) | A2 |
| Neptuno (M) | Neptune | Neptuno | Neptun (M) | Neptun (M) | A2 |
| Plutón (M) | Pluto | Plutono | Pluto (M) | Pluto (M) | A2 |
| estrella (F) | star | steleto / stelo | Stern (M) | Stern (M) | A1 |
| cielo (M) | sky | ĉielo | Himmel (M) | Himmel (M) | A1 |
| sol (M) | sun | sunon | Sonne (F) | Sunne (F) | A1 |
| luna (F) | moon | luno | Mond (M) | Mond (M) | A1 |
| meteorito (M) | meteorite | meteorŝtono / aerolito / aerŝtono | Meteorit (M) | Meteorit (M) | B1 |
| satélite (M) | satellite | satelito / sputniko | Satellit (M) | Satellit (M) | B1 |
| órbita (F) | orbit | orbito | Umlaufbahn (F) | Umlaufbahn (F) | B1 |
| cometa (F) | comet | kometo | Komet (M) | Komet (M) | B1 |
| estrella fugaz (F) | shooting star | meteoro / falstelo | Sternschnuppe (F) | Sternschnuppe (F) | B1 |
| atmósfera (F) | atmosphere | atmosfero | Atmosphäre (F) | Atmosphäre (F) | B1 |
| estación espacial (F) | space station | kosmostacio | Raumstation (F) | Ruumstation (F) | B1 |
| espacio (M) | space | kosmo | Weltraum (M) | Wältruum (M) | B1 |
| galaxia (F) | galaxy | galaksio | Galaxie (F) | Galaxie (F) | B1 |
| universo (M) | universe | universo | Universum (N) | Universum (N) | B1 |

### Nouns: Transportation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| metro (M) | subway | metroo | U-Bahn (F) | U-Bahn (F) | A1 |
| tren (M) | train | trajno | Zug (M) | Zug (M) | A1 |
| tranvía (M) | tram | tramo | Straßenbahn (F) / Tram (F) | Tram (F) | A2 |
| autobús (M) | bus | buso | Bus (M) | Bus (M) | A1 |
| taxi (M) | taxi | taksio | Taxi (N) | Taxi (N) | A1 |
| coche (M) | car | aŭto | Auto (N) / Wagen (M) | Auto (N) | A1, vehicles |
| ciclomotor (M) | moped | mopedo | Moped (N) | Töffli (N) | A2, vehicles |
| motocicleta (F) / moto (F) | motorcycle | motorciklo | Motorrad (N) | Töff (M) | A2, vehicles |
| bicicleta (F) | bicycle | biciklo / ciklo | Fahrrad (N) | Velo (N) | A1, vehicles |
| andando / a pie | walking | piedirante | zu fuß | z'fuess | A1, vehicles |
| avión (M) | plane | aviadilo | Flugzeug (N) | Flugzuug (N) | A1, vehicles |
| helicóptero (M) | helicopter | helikoptero / ciklogiro | Hubschrauber (M) | Helicopter (M) / Heli (M) | A1, vehicles |
| barco (M) | boat | ŝipo / barko / boato | Boot (N) | Boot (N) | A1, vehicles |
| tráfico (M) | traffic | trafiko | Verkehr (M) | Verchehr (M) | A2, traffic |
| atasco (M) | jam / traffic jam | trafikŝtopiĝo | Stau (M) | Stau (M) | A2, traffic |
| multa (F) | fine | monpuno | Busse (M) | Buess (M) | A2, traffic |
| trayecto (M) | journey | vojaĝo | Fahrt (F) | Fahrt (F) | A2, traffic |
| gasolinera (F) | gas station | benzinejo / benzinstacio | Tankstelle (F) | Tankstell (F) | A2, fuel |
| combustible (M) | fuel | brulaĵo | Brennstoff (M) / Brennsprit (M) | Brännstoff (M) / Brännsprit (M) | A2, fuel |
| gasolina (F) | gasoline | benzino | Benzin (N) | Benzin (N) | A2, fuel |
| gasoil (M) / gasoleo (M) / diesel (M) | diesel | dizelo / diselo | Diesel (M) | Diesel (M) | A2, fuel |
| dirección (F) | direction | direkto | Richtung (F) | Richtig (F) | A1, direction |
| sentido (M) | way | direkto | Richtung (F) | Richtig (F) | B1, direction |
| velocidad (F) | speed | rapideco | Geschwindigkeit (F) | Gschwindigkäit (F) | A1, speed |

### Verbs: Transportation
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| montar | to ride - rode - ridden | rajdi | reiten - ritt - geritten | riite - riitisch - griite | A2, on animal or car |
| conducir | to drive - drove - driven | veturi | fahren - fuhr - gefahren / treiben - trieb - getrieben | faare - faarsch - gfaare / treiben - triibsch - tribe | A1 |
| ir en coche | to go by car | iri en aŭto | fahren - fuhr - gefahren | faare - faarsch - gfaare | A1 |
| estrellarse - haberse estrellado | to crash / to drive into | kraŝi | hineinfahren - fuhr hinein - hineingefahren | inefaare - faarsch ine - inegfaare | B1 |

### Nouns: Vehicle parts
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| vehículo (M) | vehicle | veturilo / vehiklo | Fahrzeug (N) | Fahrzuug (N) | A1 |
| volante (M) | steering wheel | stirilo / stirrado | Lenkrad (N) | Länkrad (N) | A1 |
| pedal (M) | pedal | pedalo | Pedal (N) | Pedal (N) | A1 |
| acelerador (M) | accelerator | gaspedalo | Gaspedal (N) | Gaspedal (N) | A2 |
| freno (M) | brake | bremso | Bremse (F) | Brämsi (F) | A2 |
| embrague (M) | clutch | kluĉilo | Kupplung (F) | Kupplig (F) | A2 |
| cambio de marchas (M) | gear stick | rapidumŝaltilo | Schalthebel (M) | Schalthebel (M) | A2 |
| matrícula (F) | registration plate / license plate / number plate | numerplato | Kennzeichen (N) / Nummernschild (N) | Nummereschild (N) | A2 |
| rueda (F) | wheel | rado | Rad (N) | Rad (N) | A2 |
| cinturón de seguridad (M) | seat belt | sekurrimeno / sekurzono | Gurt (M) | Gurt (M) | A2 |
| retrovisor (M) | rear view mirror | retro-spegulo | Rückspiegel (M) | Rückspiegel (M) | B1 |
| intermitente (M) | turn signals | turnaj signaloj | Blinklicht (N) | Blinkliecht (N) | B1 |
| eje (M) | axis | akso | Achse (F) | Achse (F) | B1 |
| correa (F) | belt | rimeno | Treibriemen (M) | Triibrieme (M) | B1 |
| cadena (F) | chain | ĉeno / kateno | Kette (F) | Chetti (F) | B1 |
| maletero (M) | trunk | kesto | Kofferraum (M) | Kofferruum (M) | B1 |
| faro (M) / luces (F/Pl) | headlight / headlamp | kofro / valizujo | Scheinwerfer (M) | Scheinwärfer (M) | B1 |
| avería (F) | breakdown / fault / failure | paneo | Ausfall (M) von ... / Fehler (M) | Uusfall (M) von ... / Fehler (M) | B1, failure |

### Nouns: Society
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sociedad (F) | society | societo | Gesellschaft (F) | Gsellschaft (F) | A2 |
| comunidad (F) | community | komunumo | Gemeinschaft (F) | Gmäinschaft (F) | B1 |
| asociación (F) | association | asociacio | Verband (M) | Verband (M) | B1 |
| fundación (F) | foundation | fondaĵo | Stiftung (F) | Stiftig (F) | B1 |
| pueblo (M) | town | urbeto | Dorf (N) | Dorf (N) | A1, places where people live |
| ciudad (F) | city / town | urbo | Stadt (F) | Stadt (F) | A1, places where people live |
| capital (F) | capital | ĉefurbo | Hauptstadt (F) | Hauptstadt (F) | A1, places where people live |
| barrio (M) / barriada (F) | neighborhood | kvartalo / najbarejo | Nachbarschaft (F) / Viertel (N) / Stadtviertel (N) | Nachbarschaft (F) / Viertel (N) / Stadtviertel (N) | A2, neighborhood |
| vecino - vecina | neighbor | najbaro | Nachbar (M) | Nachbar (M) | A2, neighborhood |

### Nouns: Urban
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| carril (M) | lane | vojo | Fahrbahn (F) | Fahrbahn (F) | A2 |
| bulevar (M) | boulevard | boulevard | Boulevard (M) | Boulevard (M) | B1 |
|  | drive |  |  |  | B1 |
| calle (F) | street | strato | Straße (F) | Straass (F) | A1 |
| plaza (F) | square / plaza | placo | Platz (M) | Platz (M) | A1 |
| carretera (F) | road | vojo | Straße (F) | Straass (F) | A2 |
| avenida (F) | avenue | avenuo | Allee (F) | Allee (F) | A2 |
| carril bici (M) | bike lane | biciklovojo | Fahrradweg (M) | Velowäg (M) | A2 |
| autovía (F) / autopista (F) | motorway / highway | aŭtovojo | Autobahn (F) | Autobahn (F) | A1 |
| glorieta (F) / rotonda (F) | roundabout | trafikcirklo | Kreisverkehr (M) | Chräisel (M) | B1 |
| calzada (F) | road | vojo | Straße (F) | Straass (F) | A1, parts of street |
| acera (F) | sidewalk | trotuaro | Bürgersteig (M) / Trottoir (N) | Trottoir (N) | A2, parts of street |
| pavimento (M) | pavement | pavimo | Pflaster (M) / Asphalt (M) | Pflaster (M) / Asfalt (M) | A2, parts of street |
| aparcamiento (M) | parking spot | parkadejo | Parkplatz (M) | Parkplatz (M) | B1, parking |
| parada de bus (F) | bus stop | busa haltejo / aūtobushaltejo | Bushaltestelle (F) | Bushaltestell (F) | A1, transportation |
| parada de taxis (F) | taxi rank / taxicab stand | taksa haltejo | Taxistand (M) | Taxistand (M) | A1, transportation |
| farola (F) | lamp post | stratlumigo / stratlampo | Laternenmast (M) / Laternenpfahl (M) | Pfoste (M) | A2, things in street |
| peatón (M) | pedestrian | piediranto | Fußgänger (M) | Fuessgänger (M) | A2, things in street |
| alcantarilla (F) | sewer | kloaka luko | Kanal (M) | Kanal (M) | B1, things in street |
| tapa de alcantarilla (F) | sewer cover | kloakakovrilo | Kanaldeckel (M) | Kanaldeckel (M) | B1, things in street |
| rampa (F) | ramp | ramplo | Rampe (F) | Rampe (F) | A2, things in street |
| banco (M) | bench | benko | Bank (F) | Bankli (N) | A2, things in street |
| bache (M) | bump | malebenaĵo | Schlagloch (N) | Schlagloch (N) | A2, things in road |
| charco (M) | puddle | flako | Pfütze (F) | Pfütze (F) | A2, things in road |
| cartel (M) | poster | afiŝo | Poster (N) / Plakat (N) | Plakat (N) | A1, signs |
| señal (F) | sign | signo | Schild (N) | Schild (N) | A2, signs |
| señal de tráfico (F) | road sign | vojŝildo | Straßenschild (N) | Straaseschild (N) | A2, signs |
| semáforo (M) | traffic light | vojsignaligo / trafiklumfosto | Ampel (F) | Ample (F) | A1, signs |
| paso de peatones (M) / paso de cebra (M) | pedestrian crossing | transirejo por piedirantoj / zebrostrioj | Zebrastreifen (M) | Zebrasträife (M) | A1, signs |

### Verbs: Urban
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ser de | to come from - came from - come from | alveni | kommen aus - kam aus - aus gekommen  | chume uus - chunsch uus - uus choo | A2 |
| residir / vivir en | to reside / to live in | loĝi | wohnen | wone - wonsch - gwohnt | A1 |

### Nouns: Courtesy
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| señor (M) / Sr. (M) | Mister / Mr. | sinjoro | Herr (M) | Herr (M) | A1 |
| señora (F) / Sra. (F) | Mrs. / Ms. | sinjorino | Frau (F) | Frau (F) | A1 |
| señorita (F) / Srita. (F) | Miss / Ms. | fraŭlino | Fräulein (N) |  | A1 |

### Nouns: Animals
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| roedor (M) | rodent | ronĝulo | Nagetier (N) | Nagetier (N) | B1, rodents |
| ratón (M) | mouse | muso | Maus (F) | Muus (F) | A1, rodents |
| rata (M) | rat | rato | Ratte (F) | Ratte (F) | A2, rodents |
| hámster (M) | hamster | hamstro | Hamster (M) | Hamster (M) | A2, rodents |
| insecto (M) | insect | insekto | Insekt (N) | Insekt (N) | A2, insects |
| bicho (M) | bug | insekto | Käfer (M) | Chäfer (M) | A2, insects |
| avispa (F) | wasp | vespero | Wespe (F) | Wäspi (F) | A2, insects |
| abejorro (M) | bumblebee | bumblebee | Hummel (F) | Hummeli (N) | A2, insects |
| abeja (F) | bee | abelo | Biene (F) | Bienli (F) | A1, insects |
| cucaracha (F) | cockroach | blato | Kakerlake (F) | Kakerlake (F) | A2, insects |
| mosquito (M) | mosquito | moskito | Mücke | Mugge (M) | A2, insects |
| mosca (F) | fly | muŝo | Fliege (F) | Flüüge (F) | A2, insects |
| mariposa (F) | butterfly | papilio | Schmetterling (M) | Schmetterling (M) | A2, insects |
| hormiga (F) | ant | formiko | Ameise (F) | Amäise (F) | A1, insects |
| gusano (M) | worm | vermo | Wurm (M) | Wurm (M) | A2, insects |
| grillo (M) | cricket | grilo / kriketo | Heuschrecke (F) | Heugümper (M) | B1, insects |
| araña (F) | spider | araneo | Spinne (F) | Spinne (F) | A1, insects |
| mamífero (M) | mammal | mamulo | Säugetier (N) | Säugetier (N) | A2, mammals |
| jirafa (F) | giraffe | ĝirafo | Giraffe (F) | Giraff (F) | A2, mammals |
| elefante (M) | elephant | elefanto | Elefant (M) | Elefant (M) | A2, mammals |
| gato (M) | cat | kato | Katze (F) | Chatz (F) | A1, mammals |
| vaca (F) | cow | bovino | Kuh (F) | Chueh (F) | A1, mammals |
| perro (M) | dog | hundo | Hund (M) | Hund (M) | A1, mammals |
| elefante (M) | elephant | elefanto | Elefant (M) | Elefant (M) | A2, mammals |
| zorro (M) | fox | vulpo | Fuchs (M) | Fuchs (M) | A2, mammals |
| caballo (M) | horse | ĉevalo | Pferd (N) | Ross (N) | A1, mammals |
| canguro (M) | kangaroo | kanguruo | Känguru (N) | Känguru (N) | A2, mammals |
| león (M) | lion | leono | Löwe (M) | Leu (M) / Loi (M) | A1, mammals |
| mono (M) | monkey | simio | Affe (M) | Aff (M) | A1, mammals |
| cerdo (M) | pig | porko | Schwein (N) | Schwein (N) | A1, mammals |
| conejo (M) | rabbit | kuniklo | Hase (M) | Haas (M) | A1, mammals |
| oveja (F) | sheep | ŝafo | Schaf (N) | Schaf (N) | A1, mammals |
| tigre (M) | tiger | tigro | Tiger (M) | Tiger (M) | A1, mammals |
| ballena (F) | whale | baleno | Wal (M) | Wal (M) | A2, mammals |
| delfín (M) | dolphin | delfeno | Delfin (M) | Delfin (M) | A2, mammals |
| lobo (M) | wolf | lupo | Wolf (M) | Wolf (M) | A2, mammals |
| cebra (F) | zebra | zebro | Zebra (N) | Zebra (N) | A2, mammals |
| caballo (M) | horse | ĉevalo | Pferd (N) | Pferd (N) / Ross (N) | A1, mammals |
| hipopótamo (M) | hippopotamus | hipopotamo | Flusspferd (N) / Nilpferd (N) | Nilpferd (N) | A2, mammals |
| murciélago (M) | bat | vesperto | Fledermaus (F) | Flädermuus (F) | B1, mammals |
| oso (M) | bear | urso | Bär (M) | Bär (M) | A2, mammals |
| reptil (M) | reptile | reptilio | Reptil (N) | Reptil (N) | B1, reptiles |
| serpiente (F) | snake | serpento | Schlange (F) | Schlange (F) | A2, reptiles |
| dinosaurio (M) | dinosaur | dinosaŭro | Dinosaurier (M) | Dinosaurier (M) | A2, reptiles |
| anfibio (M) | amphibian | ambifio | Amphibie (F) | Amphibie (F) | B1, reptiles |
| cocodrilo (M) | crocodile | krokodilo | Krokodil (N) | Krokodil (N) | A2, reptiles |
| tortuga (F) | turtle | testudo | Schildkröte (F) | Schildchrott (F) | A2, reptiles |
| lagarto (M) | lizard | lacerto | Eidechse (F) | Äidechse (F) | B1, reptiles |
| pájaro (M) / ave (M) | bird | birdo | Vogel (M) | Vogel (M) | A1, birds |
| pato (M) | duck | anaso | Ente (F) | Änte (F) | A1, birds |
| pollo (M) | chicken | kokido | Hähnchen (N) | Huehn (N) | A1, birds |
| loro (M) | parrot | papago | Papagei (M) | Papagäi (M) | A2, birds |
| periquito (M) | parakeet | onda papago | Sittich (M) | Wellesittich (M) | A2, birds |
| canario (M) | canary | kanario | Kanarienvogel (M) | Kanarievogel (M) | A2, birds |
| paloma (F) | dove | kolombo / kolombino | Taube (F) | Tuube (F) | A2, birds |
| cuervo (M) | crow | korvo | Krähe (F) | Chräie (F) | A2, birds |
| pingüino (M) | penguin | pingveno | Pinguin (M) | Pinguin (M) | A2, birds |
| pez (M) | fish | fiŝo | Fisch (M) | Fisch (M) | A1, fish |
| pluma (F) | feather | plumo | Feder (F) | Fädere (F) | A2, fish |
| pata (F) | paw | kruro | Pfote (F) | Pfote (F) | A2, fish |
| pezuña (F) | hoof | hufo | Huf (M) | Huuf (M) | B1, parts of animals |
| cuerno (M) | horn | korno | Horn (N) | Horn (N) | A2, parts of animals |
| colmillo (M) | fang | kojna dento | Fangzahn (M) | Fangzahn (M) | B1, parts of animals |
| ala (F) | wing | flugilo | Flügel (M) | Flügel (M) | A2, parts of animals |
| aleta (F) | fin | naĝilo | Flosse (F) | Flosse (F) | B1, parts of animals |
| pico (M) | beak | beak | Schnabel (M) | Schnabel (M) | B1, parts of animals |
| mascota (F) | pet | dombesto | Haustier (N) | Haustier (N) | A1, pets |
| correa (F) | leash | ligilo | Leine (F) | Leine (F) | A2, pets |

### Verbs: Animals
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ladrar | to bark | boji | bellen | bälle | A2 |
| pacer | to graze | paŝtiĝi | weiden - weidete -  | wäide - wäidisch - gwäidet | B1 |

### Nouns: People
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| persona (F) | person | persono | Person (F) / Mensch (M) | Person (F) / Mänsch (M) | A1 |
| personas (F, Pl) | people | homoj | Personen (F, Pl) / Menschen (M, Pl) | Persone (F, Pl) / Mänsche (M, Pl) | A1 |
| gente (F) | people | homoj | Menschen (M, Pl) / Leute (Pl) | Mänsche (M, Pl) / Luut (Pl) | A1 |
| hombre (M) | man | viro | Mann (M) | Maa (M) | A1 |
| mujer (F) | woman | virino | Frau (F) | Frau (F) | A1 |
| niño (M) | kid | infano | Kind (N) | Chind (N) | A1 |
| niña (F) | kid | infanino | Kind (N) | Chind (N) | A1 |
| niños (M/Pl) | kids | infanoj | Kinder (N, Pl) | Chinde (N, Pl) / Chinde (N, Pl) | A1 |
| bebé (M) | baby | bebo | Baby (N) | Baby (N) | A1 |
| bebé (F) | baby | bebino | Baby (N) | Baby (N) | A1 |
| niño pequeño (M) / niño chico (M) | toddler | infano | Kleinkind (N) | Chllichind (N) | A2 |
| niña pequeña (F) / niña chica (F) | toddler | infanino | Kleinkind (N) | Chllichind (N) | A2 |
| chico (M) | boy | knabo | Junge (M) | Bueb (M) | A1 |
| chica (F) | girl | knabino | Mädchen (N) | Mäitli (N) | A1 |
| anciano (M) / hombre mayor (M) | old man (M) | maljunulo | alter Mann (M) / Greis (M) | alte Maa (M) | A2 |
| anciana (F) / mujer mayor (F) | old woman (F) | maljunulino | alte Frau (F) / Greisin (F) | alti Frau (F) | A2 |
| familia (F) | family | familio | Familie (F) | Familie (F) | A1, family |
| marido (M) | husband | edzo | Mann (M) | Maa (M) | A1, family |
| esposa (F) | wife | edzino | Ehefrau (F) | Ehefrau (F) | A1, family |
| padres (M/Pl) | parents | gepatroj | Eltern (Pl) | Eltere (Pl) | A1, family |
| padre (M) | father | patro | Vater (M) | Vater (M) | A1, family |
| madre (F) | mother | patrino | Mutter (F) | Mueter (F) | A1, family |
| hijo (M) | son | filo | Sohn (M) | Sohn (M) | A1, family |
| hija (F) | daughter | filino | Tochter (F) | Tochter (F) | A1, family |
| hermano (M) | brother | frato | Bruder (M) | Brüeder (M) | A1, family |
| hermana (F) | sister | fratino | Schwester (F) | Schwöster (F) | A1, family |
| abuelo (M) | grandfather | avo | Großvater (M) / Opa (M) | Groossvater (M) / Opa (M) / Opi (M) | A1, family |
| abuela (F) | grandmother | avino | Großmutter (F) / Oma (F) | Groossmueter (F) / Oma (F) / Opi (F) | A1, family |
| nieto (M) | grandson | nepo | Enkel (M) | Änkel (M) | A1, family |
| nieta (F) | granddaughter | nepino | Enkelin (F) | Änkelin (F) | A1, family |
| bisabuelo (M) | grand-grandfather | prapatro | Urgroßvater (M) | Urgroossvater (M) | B1, family |
| bisabuela (F) | grand-grandmother | prapatrino | Urgroßmutter (F) | Urgroossmueter (F) | B1, family |
| tatarabuelo (M) | grand-grand-grandfather | praprapatro | Ururgroßvater (M) | Ururgroossvater (M) | B1, family |
| tatarabuela (F) | grand-grand-grandmother | praprapatranino | Ururgroßmutter (F) | Ururgroossmueter (F) | B1, family |
| primo (M) | cousin | kuzo | Cousin (M) | Cousin (M) | A2, family |
| prima (F) | cousin | kuzino | Cousine (F) | Cousine (F) | A2, family |
| tío (M) | uncle | onklo | Onkel (M) | Onkel (M) | A1, family |
| tía (F) | aunt | onklino | Tante (F) | Tante (F) | A1, family |
| sobrino (M) | nephew | nevo | Neffe (M) | Neffe (M) | A1, family |
| sobrina (F) | niece | nevino | Nichte (F) | Nichte (F) | A1, family |
|  | sibling |  | Geschwister (N) | Gschwüsterti (N) | A2, family, generic brother/sister |
| descendencia (F/Pl) | offspring | idaro | Nachwuchs (M) | Nachwuchs (M) | B1, family |
| niño (M) - niña (F) | child | infano | Kind (N) | Chind (N) | A1, family, someone's child |
| niños (M/Pl) | children | infanoj | Kinder (Pl) | Chinder (Pl) | A1, family, someone's children |
| padrastro (M) | stepfather | duonpatro | Stiefvater (M) | Stiifvater (M) | B1, step family |
| madrastra (F) | stepmother | duonpatrino | Stiefmutter (F) | Stiifmueter (F) | B1, step family |
| hermanastro (M) | stepbrother | duonfrato | Stiefbruder (M) | Stiifbrüeder (M) | B1, step family |
| hermanastra (F) | stepsister | duonfratino | Stiefschwester (F) | Stiifschwöster (F) | B1, step family |
| suegro (M) | father-in-law | bopatro | Schwiegervater (M) | Schwiigervater (M) | A2, in-laws |
| suegra (F) | mother-in-law | bopatrino | Schwiegermutter (F) | Schwiigermüeter (F) | A2, in-laws |
| yerno (M) | son-in-law | bofilo | Schwiegersohn (M) | Schwiigersohn (M) | B1, in-laws |
| nuera (F) | daughter-in-law | bofilino | Schwiegertochter (F) | Schwiigertochter (F) | B1, in-laws |
| cuñado (M) | brother-in-law | bofrato | Schwager (M) | Schwager (M) | B1, in-laws |
| cuñada (F) | sister-in-law | bofratino | Schwägerin (F) | Schwägerin (F) | B1, in-laws |
| mamá (F) | mom | panjo | Mama (F) |  | A2, affectionate |
| papá (M) | dad | paĉjo | Papa (M) |  | A2, affectionate |
| mami (F) | mommy | panjo | Mutti (F) | Mami (F) | A2, affectionate |
| papi (M) | daddy | paĉjo | Vati (M) | Papi (M) | A2, affectionate |
| abu (M) | granddad | avoĉjo | Opa (M) | Opi (M) | A2, affectionate |
| abu (F) | grandmom | avinjo | Oma (F) | Opi (F) | A2, affectionate |
| abu (M) | grampa | avoĉjo | Opa (M) | Opi (M) | A2, affectionate |
| abu (F) | granny | avinjo | Oma (F) | Opi (F) | A2, affectionate |
| gemelo - gemela | twin | dunaskito / ĝemelo | Zwilling (M) | Zwilling (M) | B1, twins |
| mellizo - melliza | twin | dunaskito / ĝemelo | Zwilling (M) | Zwilling (M) | B1, twins |

### Adjectives: People/Animals
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| joven | young | juna | jung | jung | A1 |
| viejo - vieja | old | malnova | alt | alt | A1 |
| inteligente | intelligent | inteligenta | intelligent | intelligänt | A1, intelligence |
| listo - lista | smart | inteligenta | klug / schlau | schlau / gschiid | A1, intelligence |
| tonto - tonta | dumb | stulta | dumm / blöd | dumm / blöd | A1, intelligence |
| imbécil | fool | stulta | schwachsinnig | schwachsinnig | A1, intelligence |
| idiota | moron | idiota | idiot | idiot | A1, intelligence |
| guapo - guapa | pretty | bela | schön | schön | A1, beauty |
| feo - fea | ugly | malbela | hässlich | hässlich / wüest | A1, beauty |
| cuidadoso - cuidadosa | careful | zorgema | vorsichtig | vorsichtig | A2, carefulness |
| descuidado - descuidada | careless | senzorga | leichtsinnig | liechtsinnig | B1, carefulness |
| rico - rica | rich | riĉa | reich | riich | A2, richness |
| pobre | poor | malriĉa | arm | arm | A2, richness |
| exitoso - exitosa | successful | sukcesa | erfolgreich | erfolgriich | B1, richness |
| afortunado - afortunada | lucky | bonŝanca | glücklich | glücklich | B1, richness |
| curioso - curiosa | curious | scivola | neugierig | neugiirig | A1, curiousness |
| vivo - viva | alive | viva | lebendig | lebändig | A2, liveness |
| muerto - muerta | dead | morta | tot | tot | A2, liveness |
| agradable | nice | agrabla | nett | nett | A1, niceness |
| cruel / malo - mala | cruel / mean | kruela | gemein | gemäin | B1, niceness |
| malo - mala | bad | malbona | böse | böös | B1, niceness |
| mono - mona / lindo - linda | cute | bela | niedlich / süß | herzig | A1, cuteness |
| trabajador - trabajadora | hard-working | laborema | fleißig | fliissig | A2, propension to work |
| vago - vaga | lazy | mallaborema | faul | fuul | A2, propension to work |
| pesimista | pessimistic | pesimisma | pessimistisch | pessimistisch | B1, optimism |
| optimista | optimistic | optimisma | optimistisch | optimistisch | B1, optimism |
| despierto - despierta / espabilado - espabilada | awake | veka | wach | wach | B1, awakeness |
| dormido - dormida | asleep | dorma | schlafend | schlafend | A2, awakeness |
| amistoso - amistosa | friendly | amika | freundlich | fründlich | B1, friendlyness |
| hostil / descortés | hostile / discourteous | malfavora | feindlich / unhöflich | unfründlich | B1, friendlyness |
| educado - educada | polite | bonmaniera / ĝentila | höflich | höflich | A2, politeness |
| rudo - ruda | rude | vulgara / malĝentila | unhöflich | unhöflich | B1, politeness |
| cobarde | coward | malkuraĝulo / timulo | feig | fiig | B1, braveness |
| valiente | brave | brava | mutig | muetig | B1, braveness |
| desnudo - desnuda | naked / nude | nuda | nackt | nackt | A2, nakedness |
| vestido - vestida | dressed | vestita | angezogen | aazoge | A2, nakedness |
| egoista | selfish | egoista | egoistisch | egoistisch | A2, greediness |
| avaro - avara / codicioso - codiciosa | greedy | avara | gierig nach ... (etwas konkret) / gierig | giirig nach ... (öppis konkret) / giirig | A2, greediness |
| malvado - malvada | evil | malbona | böse | bös | A2, good/evil |
| bueno - buena | good | bona | gut | guet | A1, good/evil |
| solo - sola | alone | sola | allein | alläi | A2, alone/accompanied |
| acompañado - acompañada | accompanied | akompanita | begleitet | begläitet | B1, alone/accompanied |
| serio - seria | serious | serioza | ernst | ernst | B1, seriousness |
| travieso - traviesa | naughty | miskonduta / buba | frech / schelmisch | fräch | B1, seriousness |
| tímido - tímida | shy | timema | scheu / schüchtern | schüüch | B1, seriousness |

### Nouns: Fantasy
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| historia (F) | history | historio | Geschichte (F) | Gschicht (F) | A1 |
| cuento (M) | story | rakonto | Geschichte (F) | Gschicht (F) | A1 |
| cuento de hadas (M) | fairy-tale | feinrakonto | Märchen (N) | Märli (N) | A2 |
| unicornio (M) | unicorn | unikorno | Einhorn (N) | Äinhorn (N) | B1 |
| dragón (M) | dragon | drako | Drachen (M) | Drache (M) | A1 |
| hada (F) | fairy | feo / feino | Fee (F) | Fee (F) | B1 |
| gigante (M) | giant | giganto | Riese (M) | Riis (M) | A2 |
| enano (M) | dwarf | nano | Zwerg (M) | Zwerg (M) | A2 |
| bruja (F) | witch | sorĉistino | Hexe (F) | Häx (F) | B1 |
| mago (M) | magician | sorĉisto / magiisto | Zauberer (M) | Zauberer (M) | B1 |
| varita mágica (F) | magic wand | magia bastoneto | Zauberstab (M) | Zauberstab (M) | B1, magic |
| magia (F) | magic | magio | Zauber (M) | Zauber (M) | A1, magic |
| truco de magia (M) | magic trick | magia truko | Zaubertrick (M) | Zaubertrick (M) | A1, magic |
| fantasma (F) | ghost | fantomo | Geist (M) | Gäist (M) | A2, religious |
| demonio (M) | demon | demono | Dämon (M) | Dämon (M) | B1, religious |
| ángel (M) | angel | anĝelo | Engel (M) | Ängel (M) | B1, religious |
| monstruo (M) | monster | monstro / bestaĉo | Monster (N) | Monster (N) | A1, monsters |
| zombie (M) | zombie | zombio | Zombie (M) | Zombii (M) | B1, monsters |
| momia (F) | mummy | mumo / mumio | Mumie (F) | Mumie (F) | B1, monsters |
| vampiro (M) | vampire | vampiro | Vampir (M) | Vampir (M) | B1, monsters |
| cofre (M) | chest | kesto | Truhe (F) | Truhe (F) | B1, pirates |
| cofre del tesoro (M) | treasure chest | trezorkesto | Schatzkiste (F) | Schatzchiste (F) | B1, pirates |
| tesoro (M) | treasure | trezoro | Schatz (M) | Schatz (M) | B1, pirates |
| pirata (F) | pirate | pirato | Pirat (M) | Pirat (M) | A2, pirates |
| maldición (F) | curse | malbeno | Fluch (M) | Fluech (M) | B1, enchantments |
| encantamiento (M) | enchantment | sorĉaĵo | Verzauberung (F) | Verzauberig (F) | B1, enchantments |

### Nouns: Spiritual
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| Dios (M) | God | dio | Gott (M) | Gott (M) | B1 |
| alma (F) | soul | animo / soulo | Seele (F) | Seel (F) | B1 |
| paraíso (M) | paradise | paradizo | Paradies (N) | Paradiis (N) | B1 |

### Nouns: Relationships
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| amigo - amiga | friend | amiko - amikino | Freund - Freundin | Fründ - Fründin / Kolleg - Kollegin | A1 |
| novio - novia | boyfriend / girlfriend | koramiko - koramikino | Freund - Freundin | Fründ - Fründin | A1 |
| amistad (F) | friendship | amikeco | Freundschaft (F) | Fründschaft (F) | A1 |
| enemigo - enemiga | enemy | malamiko - malamikino | Feind (M) | Fäind (M) | A2 |
| conocido - conocida | acquaintance | konato | Bekannte (F) | Bekannte (F) | A2 |

### Adjectives: Relationships
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| soltero - soltera | single | sola | single / ledig | single / ledig | A2 |
| casado - casada | married | edziĝinta | verheiratet | verhüürated | A2 |
| divorciado - divorciada | divorced | eksedziĝita | geschieden | gschiide | A2 |
| viudo - viuda | widowed | vidva | verwitwet | verwitwet | A2 |
| separado - separada | separated | disigita | getrennt | trännt | A2 |

### Nouns: Body
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cabeza (F) | head | kapo | Kopf (M) | Chopf (M) | A1 |
| cara (F) | face | vizaĝo | Gesicht (N) | Gsicht (N) | A1, face |
| frente (F) | forehead | frunto | Stirn (F) | Stirn (F) | A2, face |
| mejilla (F) | cheek | vango | Wange (F) | Bagge (F) | A2, face |
| patilla (F) | sideburn | vangharo | Backenbart (M) / Kotelette (N/Pl) | Kotelette (N/Pl) | B1, face |
| flequillo (M) | bangs | franĝharoj | Fransen (F/Pl) | Fransle (F/Pl) | B1, face |
| barbilla (F) | chin | mentono | Kinn (N) | Chini (N) | B1, face |
| oreja (F) | ear | orelo | Ohr (N) | Ohr (N) | A1, ear |
| oído (M) | cochlea | kokleo | Schnecke (F) | Schnägg (F) | A2, ear |
| cera de oído (F) | ear wax | cerumeno | Ohrenschmalz (N) | Ohreschmalz (N) | B1, ear |
| boca (F) | mouth | buŝo | Mund (M) | Muul (N) | A1, mouth |
| aliento (M) | breath | spiraĵo | Atem (M) / Mundgeruch (M) | Mundgruch (M) / Atem (M) | B1, mouth |
| eructo (M) | belch / burp | rukto | Rülps (M) | Görbs (M) | B1, mouth |
| labio (M) | lip | lipo | Lippe (F) | Lippe (F) | A1, mouth |
| diente (M) | tooth | dento | Zahn (M) | Zah (M) | A1, mouth |
| dientes (Pl) | teeth | dentoj | Zähne (Pl) | Zäh (Pl) | A1, mouth |
| muela (F) / molar (M) | molar / molar tooth | vanga dento / molaro / mueldento | Mahlzahn (M) / Molar (M) / Backenzahn (M) | Baggezah (M) | A1, mouth |
| colmillo (M) | fang | kojna dento | Fangzahn (M) | Fangzah (M) | A1, mouth |
| paleta (F) | incisor | tranĉodento / incizivo | Schneidezahn (M) | Schniidezah (M) | A1, mouth |
| diente de leche (M) | baby tooth | denteto | Babyzahn (M) / Milchzahn (M) | Milchzahn (M) | A2, mouth |
| lengua (F) | tongue | lango | Zunge (F) | Zunge (F) | A1, mouth |
| encía (F) | gum | dentokarno / gingivo | Gummi (N) / Zahnfleisch (N) | Zahfleisch (N) | A2, mouth |
| garganta (F) | throat | gorĝo | Hals (M) | Hals (M) | A1, mouth |
| saliva (F) | saliva | salivo | Speichel (M) | Späichel (M) | A2, mouth |
| nariz (F) | nose | nazo | Nase (F) | Nase (F) | A1, nose |
| fosa nasal (F) / agujero de la nariz (M) | nostril | nazotruo | Nasenloch (N) | Naseloch (N) | B1, nose |
| ojo (M) | eye | okulo | Auge (N) | Aug (N) | A1, eye |
| lágrima (F) | tear | larmo | Träne (F) | Träne (F) | A1, eye |
| ceja (F) | eyebrow | brovo | Augenbrauen (F) | Augebraue (F) | A2, eye |
| pestaña (F) | eyelash | okulharoj | Wimper (F) | Wimpere (F) | A2, eye |
| párpado (M) | eyelid | palpebro | Augenlid (N) | Augelid (N) | A2, eye |
| globo ocular (M) | eyeball | okulbulbo / okulglobo | Augapfel (M) | Augapfel (M) | B1, eye |
| pupila (F) | pupil | pupilo | Pupille (F) | Pupille (F) | B1, eye |
| iris (M) | iris | iriso | Iris (F) | Iris (F) | B1, eye |
| córnea (F) | cornea | korneo | Hornhaut (F) | Hornhuut (F) | B1, eye |
| pelo (M) / cabello (M) | hair | haro | Haare (N/Pl) | Haar (N/Pl) | A1, hair, many |
| pelo (M) / cabello (M) | hair | hararo | Haar (N) | Haar (N) | A1, hair |
| vello (M) | hair | haretaro | Haara (N/Pl) / Härchen (N/Pl) | Haar (N/Pl) / Häärli (N/Pl) | B1, hair, many |
| vello (M) | hair | hareto | Haar (N) / Härchen (N) | Haar (N) / Häärli (N) | B1, hair |
| peluca (F) | wig | peruko | Perücke (F) | Perügge (F) | B1, hair |
| bigote (M) | moustache | lipharoj | Schnurrbart (M) | Schnauz (M) | A2, hair |
| barba (F) | beard | barbo | Bart (M) | Bart (M) | A2, hair |
| cuerpo (M) | body | korpo | Körper (M) | Körper (M) | A1, body |
| cuello (M) | neck | kolo | Hals (M) | Hals (M) | A1, body |
| columna vertebral (F) | spine | vertebraro | Wirbelsäule (F) | Wirbelsüüli (F) | B1, body |
| espalda (F) | back | dorso | Rücken (M) | Rücke (M) | A1, body |
| barriga (F) / vientre (M) | belly | ventro | Bauch (M) | Buuch (M) | A1, body |
| ombligo (M) | navel | umbiliko | Nabel (M) | Nabel (M) | A2, body |
| pierna (F) | leg | kruro | Bein (N) | Bei (N) | A1, leg |
| rodilla (F) | knee | genuo | Knie (N) | Chnüü (N) | A2, leg |
| tobillo (M) | ankle | maleolo | Knöchel (M) | Chnöchel (M) | A2, leg |
| pie (M) | foot | piedo | Fuß (M) | Fuess (M) / Füess (Pl) | A1, leg |
| dedo del pie (M) | toe | piedfingro | Zehe (F) | Zeche (F) | A2, leg |
| brazo (M) | arm | brako | Arm (M) | Arm (M) / Ärm (Pl) | A1, arm |
| axila (F) / sobaco (M) | armpit | subbrako / akselo | Achsel (F) | Achsle (F) | A2, arm |
| codo (M) | elbow | kubuto | Ellenbogen (M) | Ellebogen (M) | A2, arm |
| hombro (M) | shoulder | ŝultro | Schulter (F) | Schultere (F) | A2, arm |
| mano (F) | hand | mano | Hand (M) | Hand (M) / Händ (Pl) | A1, arm |
| muñeca (F) | wrist | pojno | Handgelenk (N) | Handglänk (N) | A2, arm |
| dedo (M) | finger | fingro | Finger (M) | Finger (M/Pl) | A1, arm |
| pulgar (M) | thumb | dikfingro | Daumen (M) | Duume (M) | A2, arm |
| uña (F) | nail | najlo | Nagel (M) | Nagel (M) / Fingernagel (M) | A1, arm |
| piel (F) | skin | haŭto | Haut (F) | Haut (F) | A1, skin |
| cicatriz (F) | scar | cikatro | Narbe (F) | Narbe (F) | B1, skin |
| sudor (M) | sweat | ŝvito | Schweiß (M) | Schwäiss (M) | A1, skin |
| hueso (M) | bone | osto | Knochen (M) | Chnoche (M) | A2, bones |
| articulación (F) | joint | artiko | Gelenk (N) | Glänk (N) | B1, bones |
| célula (F) | cell | ĉelo | Zelle (F) | Zelle (F) | B1, cell |
| sangre (F) | blood | sango | Blut (N) | Bluet (N) | A1, blood |
| músculo (M) | muscle | muskolo | Muskel (M) | Muskel (M) | A2, muscle |
| órgano (M) / órgano interno (M) | organ | organo | Organ (N) | Organ (N) | B1, entrails |
| entrañas (F/Pl) | entrails | internaĵo | Eingeweide (N) / Innereien (F/Pl) | Innereie (F/Pl) | B1, entrails |
| hígado (M) | liver | hepato | Leber (F) | Läbere (F) | A2, entrails |
| riñon (M) | kidney | reno | Niere (F) | Niere (F) | A2, entrails |
| pulmón (M) | lung | pulmo | Lunge (F) | Lunge (F) | A2, entrails |
| intestino (M) | intestine | intesto | Darm (M) | Darm (M) | A2, entrails |
| cerebro (M) | brain | cerbo / cefalo | Gehirn (N) | Ghirn (N) | A1, entrails |
| estómago (M) | stomach | stomako | Magen (M) | Mage (M) | A1, entrails |
| corazón (M) | heart | koro | Herz (N) | Herz (N) | A1, entrails |
| traquea (F) | trachea | traĥeo | Luftröhre (F) | Luftröhre (F) | A2, entrails |
| esófago (M) | esophagus | ezofago | Speiseröhre (F) | Speiseröhre (F) | A2, entrails |
| nutrición (F) / alimentación (F) | nutrition | nutro | Ernährung (F) | Ernährig (F) | B1, nutrition |
| grasa (F) | fat | graso / sebo | Fett (N) | Fett (N) | A2, nutrition |
| proteina (F) | protein | proteino | Protein (N) | Protein (N) | A2, nutrition |
| hidrato de carbono (M) | carbohydrate | karbonhidrato / glucido | Kohlenhydrat (N) | Chohlehydrat (N) | B1, nutrition |
| dieta (F) | diet | dieto | Diät (F) | Diät (F) | A2, nutrition |
| orina (F) | urine | urino | Urin (M) | Urin (M) | B1, excretions |
| excremento (M) | excrement | ekskremento / fekaĵo / feko | Exkrement (N) | Exkremänt (N) | B1, excretions |
| pipí (M) / pis (M) | pee | piso | Pipi (N) | Bisi (N) | A1, excretions |
| meado (M) | piss | piso | Pisse (F) | Pisse (F) | B1, Informal, excretions |
| caca (F) | poop | ekskremento / fekaĵo / feko | Kacke (F) | Kacke (F) | A1, Informal, excretions |
| mierda (F) | shit | merdo | Scheiße (F) / Mist (M) | Schiisse (F) / Mist (M) | A1, Informal, excretions |
| bostezo (M) | yawn | oscedo | Gähnen (N) | Gähne (N) | A2, involuntary |
| hipo (M) | hiccup | singulto | Schluckauf (M) | Hitzgi (M) | B1, involuntary |
| pedo (M) | fart | furzo | Furz (M) | Furz (M) | B1, involuntary |
| hambre (F; pero "el hambre") | hunger | malsato | Hunger (M) | Hunger (M) | A1, hunger/thirst |
| sed (F) | thirst | soifo | Durst (M) | Durst (M) | A1, hunger/thirst |
| sexo (M) | sex | sekso | Sex (M) | Sex (M) | A1, sex |
| corte de pelo (M) | haircut | frizo | Haarschnitt (M) | Haarschnitt (M) | A2, haircurt |
| grano (M) | pimple | akno / butono | Pickel (M) | Pickel (M) | A2, pimple |

### Adjectives: Body
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| alto - alta | tall | granda | groß | grooss | A1, height |
| bajo - baja | short | malgranda | klein | chlii | A1, height |
| gordo - gorda | fat | dika | dick | dick | A1, weight |
| delgado - delgada | skinny / thin | maldika | dünn | dünn | A1, weight |
| calvo - calva | bald | senhara / kalva | kahl | kahl | B1, weight |
| hambriento - hambrienta | hungry | malsata | hungrig | hungrig | A1, hunger/thirst |
| sediento - sedienta | thirsty | soifa | durstig | durstig | A1, hunger/thirst |
| lleno - llena | stuffed / full | sata | voll | voll | A1, hunger/thirst |
| embarazada | pregnant | graveda | schwanger | schwanger | A2, pregnancy |

### Verbs: Body
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| vivir | to live | vivi | leben | lebe - lebsch - glebt | A1, liveness |
| morir - muerto | to die | morti | sterben - starb - gestorben | stärbe - stirbsch - gestorbe | A2, liveness |
| dormirse - haberse dormido | to fall asleep - fell - fallen | ekdormi | einschlafen - schlief ein - eingeschlafen | iischlafe - schlafsch ii - iigschlafe | A2, sleep |
| dormir | to sleep - slept - slept | dormi | schlafen - schlief - geschlafen | schlafe - schlafsch - gschlafe | A1, sleep |
| soñar | to dream - dreamt/dreamed - dreamt/dreamed | sonĝi | träumen | troime - troimsch - troimt | A2, sleep |
| despertar | to wake up - waked/woke - waked/woken | veki | aufwachen - wachte auf - aufgewacht | uufwache - wachsch uuf - uufgwacht | A2, sleep |
| roncar | to snore | ronki | schnarchen | schnarchle - schnarchlisch - gschnarchlet | A2, sleep |
| rascar | to scratch | skrapi | kratzen | chratze - chartzisch - kratzt | B1, itch |
| picar | to itch | juki | jucken | bisse - bissisch - pisse | B1, itch |
| adelgazar / ponerse delgado | to lose weight - lost weight - lost weight / to get thin - got thin - got/gotten thin | maldikiĝi | abnehmen - nahm ab - abgenommen | abnäh - nimmsch ab - abgno | A2, weight |
| engordar / ponerse gordo | to gain weight / to get fat - got fat - got/gotten fat | dikiĝi | zunehmen - nahm zu - zugenommen | zunäh - nimmsch zu - zugno | A2, weight |
| mear | to piss | pisi | pullern | bisle - bislisch - pislet | B1, excretions |
| cagar | to shit - shat - shat | kaki | scheißen - schiß - geschissen | bschiisse - bschiissisch - bschiisse | A2, excretions |
| hacer pis - hecho pis / hacer pipí - hecho pipí | to pee | pisi | pinkeln | bisle - bislisch - pislet | A2, excretions |
| hacer caca - hecho caca | to poo | feki | kacken | kacke - kackish - kacket | A2, excretions |
| desmayarse - haberse desmayado | to faint / to pass away | senkonsciiĝi | in Ohnmacht fallen - fiel in Ohnmacht - in Ohnmacht gefallen | in Ohnmacht gheie / ohnmächtig werde | A2, consciousness |
| marearse - haberse mareado | to feel dizzy - felt dizzy - felt dizzy | vertiĝi | sich schwindlig fühlen | sich schwindlig fühle - fühlsch dich schwindlig - sich schwindlig gfühlt | A2, consciousness |
| respirar | to breathe | spiri | atmen | schnuufe - schnuufsch - gschnuuft/gschnuufet | A2, breath |
| parpadear | to blink | palpebrumi | blinzeln | blinzle - blinzlisch - plinzlet | A2, blink |
| sonarse los mocos - haberse sonado los mocos / sonarse la nariz - haberse sonado la nariz | to blow your nose - blew your nose - blown your nose | blovi la nazon | sich die Nase putzen  | Nase schnüüze - Nasa schnüüzisch - gschnüüzt | A2, nose |

### Nouns: Health
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| salud (F) | health | sano | Gesundheit (F) | Gsundhäit (F) | A2 |
| medicina (F) | medicine | medicino | Medizin (F) | Medizin (F) | A2 |
| paciente | patient | malsanulo | Patient (M) | Patient (M) | A2, person |
| enfermedad (F) | illness | malsano | Krankheit (F) | Chrankhäit (F) | A2, sickness |
| resfriado (M) / constipado (M) | cold | malvarmumo | Erkältung (F) | Erchältig (F) | A2, sickness |
| gripe (F) | flu | gripo | Grippe (F) | Gripp (F) | A2, sickness |
| cáncer (M) | cancer | kancero | Krebs (M) | Chräbs (M) | A2, sickness |
| alergia (F) | allergy | alergio | Allergie (F) | Allergi (F) | A2, sickness |
| ataque al corazón (M) / ataque cardiaco (M) / infarto (M) | heart attack | kora infarkto | Herzinfarkt (M) | Herzinfarkt (M) | B1, sickness |
| ictus (M) / ataque (M) / apoplejia (F) | ictus / stroke / seizure | apopleksio | Iktus (M) / Schlaganfall (M) / Anfall (M) | Iktus (M) / Schlagaafall (M) / Aafall (M) | B1, sickness |
| resaca (F) | hangover | postebrio | Kater (M) | Kater (M) | B1, sickness |
| hipo (M) | hiccups | singulto | Schluckauf (M) | Hitzsgi (M) | A2, involuntary/accidental |
| calambre en la pierna (M) | leg cramp | krurokramfo | Beinkrampf (M) | Chrampf im Bei (M) | B1, involuntary/accidental |
| agujetas (F/Pl) | sore muscles | muskolodoloro | Muskelkater (M) | Muskelkater (M) | B1, involuntary/accidental |
| diagnóstico (M) | diagnosis | diagnozo | Diagnose (F) | Diagnose (F) | B1, diagnosis |
| termómetro (M) | thermometer | termometro | Thermometer (N) | Thermometer (N) | A2, diagnosis |
| síntoma (M) | symptom | simptomo | Symptom (N) | Symptom (N) | B1, symptom |
| dolor (M) | ache | doloro | Schmerz (M) | Weh (N) | A2, symptom |
| dolor de cabeza (M) | headache | kapdoloro | Kopfschmerz (M) | Chopfweh (N) | A2, symptom |
| dolor de estómago (M) | stomachache | stomakdoloro | Magenschmerz (M) | Buuchweh (N) | A2, symptom |
| dolor de muelas (M) | tooth pain | dentodoloro | Zahnschmerz (M) | Zahweh (N) | A2, symptom |
| dolor de garganta (M) / garganta irritada (F) | sore throat | gorĝdoloron | Halsschmerz (M) | Halsschmerz (M) | A2, symptom |
| coma (M) | coma | komato | Koma (N) | Koma (N) | A2, symptom |
| tos (F) | cough | tuso | Husten (M) | Hueste (M) | A1, symptom |
| estornudo (M) | sneeze | terno | Niesen (N) | Nüüse (N) | A1, symptom |
| mocos (M/Pl) | mucus | muko | Schleim (M) | Schleim (M) | A2, symptom |
| cardenal (M) | bruise | ekimozo / batmakulo | Prellung (F) | Prellig (F) | A2, symptom |
| estrés (M) | stress | streso | Stress (M) | Stress (M) | A2, symptom |
| fiebre (F) | fever | febro | Fieber (N) | Fieber (N) | A1, symptom |
| estreñimiento (M) | constipation | mallakso / konstipeco | Verstopfung (F) | Verstopfig (F) | A2, symptom |
| diarrea (F) | diarrhea | lakso / diareo | Durchfall (M) | Durchfall (M) | A2, symptom |
| herida (F) | wound | vundo | Wunde (F) | Wunde (F) | A1, wound |
| corte (M) | cut | tranĉo | Schnittwunde (F) | Schnittwunde (F) | B1, wound |
| fractura (F) | fracture | frakturo | Fraktur (F) / Bruch (M) | Bruch (M) | B1, wound |
| quemadura | burn | brulvundo | Verbrennung (F) | Verbrannig | B1, wound |
| luxación (F) | dislocation | elartikiĝo | Ausrenkung (F) / Auskugelung (F) | Uusränkig (F) | B1, wound |
| esguince (M) | sprain | distordiĝo | Verstauchung (F) | Verstuuchig (F) | B1, wound |
| virus (M) | virus | viruso | Virus (N) | Virus (N) | B1, infectious |
| bacteria (F) | bacteria | bakterio | Bakterium (N) | Bakterium (N) | B1, infectious |
| parásito (M) | parasite | parásito | Parasit (M) | Parasit (M) | B1, infectious |
| tratamiento (M) | treatment | traktado | Behandlung (F) | Behandlig (F) | B1, treatment |
| medicamento (M) | medicine / drug | medicinaĵo / medikamento / kuracilo | Medikament (N) | Medis (Pl) / Medikament (N) | A1, treatment |
| receta (F) | prescription | recepto | Rezept (N) | Rezäpt (N) | A2, treatment |
| suero (M) / suero fisiológico (M) | saline / saline solution | serumo | Serum (N) | Serum (N) | B1, treatment |
| pastilla (F) / píldora (F) | pill | pilolo | Pille (F) | Pille (F) | A2, treatment |
| cápsula (F) | capsule | kapsulo | Kapsel (F) | Chapsle (F) | B1, treatment |
| aspirina (F) | aspirin | aspirino | Aspirin (N) | Aspirin (N) | A2, treatment |
| analgésico (M) | painkiller | analgeziko / kontraŭdolorilo | Schmerzmittel (N) | Schmerzmittel (N) | B1, treatment |
| antibióticos (M/Pl) | antibiotics | antibiotiko | Antibiotika (N/Pl) | Antibiotika (N/Pl) | B1, treatment |
| antiinflamatorio (M) | antiinflammatory | kontraŭinflamo | Entzündungshemmer (M) | Entzündigshemmer (M) | A2, treatment |
| paracetamol (M) | paracetamol | paracetamolo | Paracetamol (N) | Paracetamol (N) | A2, treatment |
| ibuprofeno (M) | ibuprofen | ibuprofeno | Ibuprofen (N) | Ibuprofen (N) | A2, treatment |
| vacuna (F) | vaccine | vakcino | Impfung (F) | Impfig (F) | A2, treatment |
| inyección (F) | injection | injekto | Injektion (F) | Injektion (F) | A2, treatment |
| jeringa (F) | syringe | injektilo | Spritze (F) | Sprütze (F) | B1, treatment |
| aguja (F) | needle | nadlo | Nadel (F) | Nadle (F) | B1, treatment |
| spray (M) | spray | ŝpruco | Spray (N) | Spray (N) | B1, treatment |
| venda (F) | bandage | bandaĝo | Verband (M) / Bandage (F) | Verband (M) | A2, treatment |
| tirita (F) | band-aid | pansobendo | Pflaster (N) | Pflaster (N) | A2, treatment |
| muleta (F) | crutch | lambastono | Krücke (F) | Krücke (F oder Pl) | B1, treatment |
| escayola (F) | plaster  | gipsobandaĝo | Gips (M) | Gips (M) | B1, treatment |
| férula (F) | splint | splinto | Schiene (F) | Schiine (F) | B1, treatment |
| cita (F) | appointment | rendevuo | Termin (M) | Termin (M) | B1, appointment |
| consulta (F) | consultation | konsulto | Beratung (F) | Beratig (F) | B1, appointment |
| reconocimiento (M) | check up | medicina kontrolo | Untersuchung (F) | Untersuechig (F) | B1, appointment |
| análisis (M) | analysis | medicina analizo | Analyse (F) | Analyse (F) | B1, appointment |
| prueba médica (F) | medical test | medicina provo | medizinischer Test (M) | medizinische Test (M) | B1, appointment |
| radiografïa | x-ray | iks-fotografaĵo | Röntgenbild (N) | Röntgebild (N) | B1, appointment |
| cirugía (F) | surgery | kirurgio | Chirurgie (F) | Chirurgie (F) | B1, surgery |
| operación (F) / intervención (F) | operation / intervention | operacio / interveno | Operation (F) | Operation (F) | B1, surgery |
| anestesia (F) | anesthesia | anestezo | Anästhesie (F) | Anästhesie (F) | B1, surgery |
| parto (M) | childbirth | akuŝo | Geburt (F) | Geburt (F) | B1, pregnancy |

### Adjectives: Health
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sano - sana | healthy | sana | gesund | gsund | A1 |
| enfermo - enferma | sick | malsana | krank | chrank | A1 |
| contagioso - contagiosa | contagious | infekta / kontaĝa | ansteckend | aasteckend | A1, contagious |
| mareado - mareada | dizzy | kapturna | schwindelig | trümmlig | A2, dizzy |
| minusválido (M) - minusválida (F) / discapacitado (M) - discapacitada (F) | handicapped / disabled | invalida | invalid | invalid | A2, disabled |
| dañino - dañina / nocivo - nociva | harmful / hazardous | danĝera / noca | schädlich | schädlich | A2, harmfulness |
| inofensivo - inofensiva / inocuo - inocua | harmless | nenoca | harmlos | harmlos | A2, harmfulness |

### Verbs: Health
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| doler | to hurt | dolori | schmerzen | weh tue - tuesch weh - weh taa | A2 |
| curar | to cure | kuraci / sanigi | heilen | häile - häilsch - ghäilt | A2 |
| toser | to cough | tusi | husten | hueste - huestisch - ghuestet | A2 |
| estornudar | to sneeze | terni | niesen | nüsse - nüssisch - gnüsst | A2 |
| parir / dar a luz | to give birth - gave birth - given birth | naskigi | gebären | gebäre - gebärsch - ggebärt | B1 |
| nacer | to be born - was born - been born | naskiĝi | geboren werden - wurde geboren - geboren geworden | gebore werde - wirsch gebore - gebore worde | B1 |
| prescribir - prescrito / recetar | to prescribe | preskribi | verschreiben - verschrieb - verschrieben | verschriibe - verschriibsch - verschribe | A2 |

### Nouns: Adictions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| droga (F) | drug | drogo | Droge (F) | Droge (F) | A2 |
| alcohol (M) | alcohol | alkoholo | Alkohol (M) | Alkohol (M) | A1 |
| cafeina (F) | caffeine | kafeino | Koffein (N) | Koffein (N) | A2 |
| cigarro (M) / cigarrillo (M) | cigarette | cigaredo | Zigarette (F) | Zigarette (F) / Zigi (F) | A1 |
| colilla (F) | cigarette butt / butt | cigaredrestaĵo / cigaredstump | Zigarettenstummel (M) / Stummel (M) | Zigarettestummel (M) / Stummel (M) | A2 |
| ceniza (F) / cenizas (F/Pl) | ash | cindro | Asche (F) | Äsche (F/Pl) | A2 |
| puro (M) | cigar | cigaro | Zigarre (F) | Zigarre (F) | B1 |
| porro (M) / peta (M) | joint | mariĥuana cigaredo | Joint (M) | Joint (M) | B1 |
| tabaco (M) | tobacco | tabako | Tabak (M) | Tabak (M) | A1 |
| cenicero (M) | ashtray | cindrujo / cindrotelero | Aschenbecher (M) | Aschebächer (M) | A2 |
| encendedor (M) | lighter | fajrilo | Feuerzeug (N) | Füürzüüg (N) | A2 |
| cerilla (F) | match | alumeto | Zündholz (N) | Zündholzli (N) | B1 |
| barra de bar (F) / barra (F) | bar | drinkejo / taverno | Bar (F) | Bar (F) | A1 |
| copa (F) / bebida (F) / bebida alcohólica (F) | drink / alcoholic beverage | alkohola trinkâjo | Drink (M) / alkoholisches Getränk (N) | Drink (M) / alkoholischi Getränk (N) | A1, alcoholic drink |
| chupito (M) | shot | trinketo | Shot (M) | Shot (M) | A1 |

### Adjectives: Adictions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| borracho - borracha | drunk | ebria | betrunken / besoffen | betrunke / bsoffe | A1 |

### Verbs: Adictions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| fumar | to smoke | fumi | rauchen | rauche - rauchsch - graucht | A1 |
| beber | to drink - drank - drunk | trinki | trinken | trinke - trinksch - trunke | A1, alcohol |
| consumir | to consume / to use / to do drugs | konsumi drogojn | konsumiere / Drogen nehmen - nahm Drogen - Drogen genommen | konsumiere - konsumiersch - konsumiert / Droge näh - nimmsch Droge - Droge gno | B1, drugs |
| drogarse - haberse drogado / tomar drogas - tomado drogas | to get high - got high - got/gotten high / to do drugs - did drugs - done drugs | konsumi drogojn | high werden - wurde high - high geworden | high werde - wiirsch high - high gworde | B1, drugs |

### Nouns: Hygiene
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| higiene (F) | hygiene | higieno | Hygiene (F) | Hygiene (F) | A2 |
| cuidado (M) | care | zorgo | Pflege (F) | Pfleg (F) | A2 |
| jabón (M) | soap | sapo | Seife (F) | Soife (F) / Säifi (F) / Säife (F) | A1, soap |
| champú (M) | shampoo | ŝampuo | Shampoo (N) | Shampoo (N) | A1, shower |
| gel de ducha (M) | shower gel / body wash | likva sapo | Duschgel (N) | Duschgel (N) | A1, shower |
| esponja (F) | sponge | spongo | Schwamm (M) | Schwamm (M) | A2, shower |
| toalla (F) | towel | tuko | Handtuch (N) | Tuech (N) / Tüechli (N) | A1, shower |
| toallita húmeda (F) | wet wipe | malseka bantuko | Feuchttuch (N) | Füechttüechli (N) | A2, cleaning |
| papel higiénico (M) | toilet paper | neceseja papero | Toilettenpapier (N) | WC-Papier (N) | A1, cleaning |
| kleenex (M) / pañuelo de papel (M) | paper handkerchief / paper tissue | naztuko | Papiertaschentuch (N) | Nastüechli (N) | A1, cleaning |
| desodorante (M) | deodorant | senodorogilo | Deodorant (N) | Deodorant (M) / Deo (M) | A1, smell |
| colonia (F) / perfume (M) | perfume | parfumo | Parfüm (N) | Parfüm (N) | A1, smell |
| cortauñas (M) | nail clipper | ungotajlilo | Nagelknipser (M) | Klipser (M) | B1, nails |
| tijeras de uñas (F/Pl) | nail scissors | ungotondilo | Nagelschere (F) | Nagelscher (F) | B1, nails |
| lima de uñas (F) | nail file | ungoraspilo | Nagelfeile (F) | Nagelfiile (F) | A2, nails |
| pinzas (F/Pl) | tweezers | prenileto / pinĉileto | Pinzette (F) | Pincette (F) | B1, hair |
| crema de manos (F) | hand cream | manokremo | Handcreme (F) | Handcreme (F) | A2, moisturizer |
| cacao de labios (M) | lip balm | lipa balzamo | Lippenbalsam (M) | Lippepommade (F) | B1, moisturizer |
| crema hidratante (F) | moisturizer | humidigilo | Feuchtigkeitscreme (F) | Füechtigkeitcrem (F) | B1, moisturizer |
| cepillo de dientes (M) | toothbrush | dentbroso | Zahnbürste (F) | Zahbürste (F) | A1, teeth |
| pasta de dientes (F) | toothpaste | dentpasto | Zahnpasta (F) | Zahpasta (F) | A1, teeth |
| hilo dental (M) | dental floss / floss | dentfadeno / dentsilko | Zahnseide (F) | Zahsiide (F) | B1, teeth |

### Adjectives: Hygiene
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| limpio - limpia | clean | pura | sauber | suuber | A1 |
| sucio - sucia | dirty | malpura | schmutzig | dräckig | A1 |

### Verbs: Hygiene
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| limpiar | to clean | purigi | reinigen / putzen | räinige - räinigsch - gräiniget / putze - putzisch - putzt | A2 |
| lavar | to wash | lavi | waschen - wusch - gewaschen | wäsche - wäschisch - gwäsche | B1 |
| enjuagar | to rinse | lavi | spülen | spüele - spüelsch - gspüelt | B1 |
| bañarse - haberse bañado | to take a bath - took a bath - taken a bath | bani | baden - badete - gebadet | bade - badish - badet | A2 |
| ducharse - haberse duchado | to take a shower - took a shower - taken a shower | pluvi | duschen | dusche - duschisch - duschet | A2 |

### Nouns: Cleaning
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| limpieza (F) | cleaning | purigo | Reinigung (F) | Reinigung (F) | A1 |
| basura (F) | garbage / rubbish | rubo | Müll (M) | Abfall (M) / Güsel (M) | A1 |
| cubo de basura (M) | garbage can / rubbish bin | rubujo | Mülleimer (M) / Abfalleimer (M) | Abfallchübel (M) / Güselchübel (M) | A1 |
| papelera (F) | wastepaper bin | rubujo | Papierkorb (M) | Papierchorb (M) | A1 |
| papelera de reciclaje (F) | recycle bin | rubujo | Papierkorb (M) | Papierchorb (M) | A1 |
| cubo (M) | bucket | sitelo | Eimer (M) | Chübel (M) | A1 |
| contenedor (M) / contenedor de basura (M) | trashcan / wheelie bin | rubujo | Mülleimer (M) | Abfallcontainer (M) | A2 |
| vertedero (M) / basurero (M) | landfill | terŝtopaĵo | Deponie (F) | Deponii (F) / Sammlig (F) | B1 |
| bolsa de basura (F) | garbage bag | rubejo | Müllsack (M) | Güselsack (M) | A2 |
| suciedad (F) | dirt | malpuraĵo | Schmutz (M) / Dreck (M) | Dräck (M) | B1 |
| polvo (M) | dust | polvo | Staub (M) | Staub (M) | A2 |
| mancha (F) | stain | makulo | Fleck (M) | Fläck (M) | A2 |

### Nouns: Baby
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| pañal (M) | diaper | vindaĵo / vindotuko | Windel (F) | Windle (F) | A1 |
| carrito de bebé (M) | baby carriage | beboĉaro | Kinderwagen (M) | Chinderwage (M) | A1 |
| chupete (M) | pacifier | suĉilo | Schnuller (M) / Beruhigungssäuger (M) | Nuggi (M) | A2 |
| biberón (M) | baby bottle | suĉbotelo | Babyflasche (F) / Flasche (F) | Fläsche (F) | A2 |
| polvos de talco (M/Pl) | baby powder / talcum powder | bebopomado | Talkumpuder (N) | Talkumpuder (N) | B1 |
| cuna (F) | cradle | lulilo | Wiege (F) | Wiege (F) | A1 |

### Nouns: Leisure
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ocio (M) | leisure | libertempo | Freizeit (F) | Fräiziit (F) | B1 |
| festival de música (M) | music festival | muzika festivalo | Musikfestival (N) | Musikfestival (N) | A1 |
| obra (F) | play | ludo | Stück (N) | Stück (N) | A2, theater |
| película (F) | movie / film | filmo | Film (M) | Film (M) | A1 |
| serie de televisión (F) | TV series | televida serio / teleserio | Fernsehserie (F) | Fernsehserie (F) | A1 |
| temporada (F) | season | sezono | Staffel (F) | Staffle (F) | A2 |
| episodio (M) | episode | epizodo | Folge (F) | Folg (F) | A2 |
| subtítulos (M/Pl) | subtitles | subtekstoj | Untertitel (M) | Untertitel (M) | A2 |
| noticias (F/Pl) | news | novaĵoj | Nachrichten (F/Pl) | Nachrichte (F/Pl) | A1 |
| juego (M) | game | ludo | Spiel (N) | Spiil (N) / Spiili (N) | A1 |
| videojuego (M) | videogame | videoludo | Videospiel (N) | Game (N) / Videospiil (N) / Videospiili (N) | A1 |
| CD (M) | CD | KD | CD (N) | CD (N) | A1 |
| DVD (M) | DVD | DVD | DVD (N) | DVD (N) | A1 |
| televisión (M) | TV | televidilo | Fernseher (M) | Fernseh (M) | A1, media |
| radio (F) | radio | radioaparato | Radio (N) | Radio (N) | A1, media |
| revista (F) | magazine | revuo | Zeitschrift (F) | Heftli (N) | A1, media |
| periódico (M) | newspaper | ĵurnalo | Zeitung (F) | Ziitig (F) | A1, media |
| noticia (F) | piece of news | novaĵo | Beitrag (M) | Biitrag (M) | A1, news |
| teatro (M) | theather | teatro | Theater (N) | Theater (N) | A2, places |
| estadio (M) | stadium | stadiono | Stadion (N) | Stadion (N) | A2, places |
| cine (M) | cinema | kino | Kino (N) | Kino (N) | A1, places |
| biblioteca (F) | library | biblioteko | Bibliothek (F) | Bibliothek (F) | A1, places |
| literatura (F) | literature | literaturo | Literatur (F) | Literatur (F) | B1, literature |
| libro (M) | book | libro | Buch (N) | Buech (N) | A1, literature |
| capítulo (M) | chapter | ĉapitro | Kapitel (N) | Kapitel (N) | A2, literature |
| página (F) | page | paĝo | Seite (F) | Siite (F) | A1, literature |
| sección (F) | section | sekcio | Abschnitt (M) | Abschnitt (M) | A2, literature |
| párrafo (M) | paragraph | paragrafo | Absatz (M) | Absatz (M) | B1, literature |
| libro electrónico (M) | ebook | bitlibro | Ebook (N) | Ebook (N) | A2, literature |
| novela (F) | novel | romano | Roman (M) | Roman (M) | A1, literature |
| ficción (F) | fiction | fikcio | Fiktion (F) | Fiktion (F) | A2, literature |
| ciencia ficción (F) | science fiction | sciencfikcio | Science-Fiction (F) | Science-Fiction (F) | A2, literature |
| comedia (F) | comedy | komedio | Komödie (F) | Komödie (F) | A2, literature |
| humor (M) | humor | humoro | Humor (M) | Humor (M) | A2, literature |
| poesía (F) | poetry | poezio | Poesie (F) | Poesii (F) | A2, literature |
| fantasía (F) | fantasy | fantazio | Fantasie (F) | Fantasii (F) | A2, literature |
| comic (M) | comic | bildrakonto / komikso | Comic (M) | Comic (M) | A2, literature |
| colección (F) | collection | kolekto | Sammlung (F) | Sammlig (F) | A2, collection |
| deporte (M) | sport | sporto | Sport (M) | Sport (M) | A1, sport |
| gimnasio (M) | gym | gimnazio | Fitnessstudio (N) | Fitnessstudio (N) | A1, sport |
| campo de fútbol (M) | soccer field | futbala kampo | Fussballplatz (M) | Fuessballplatz (M) | A1, sport |
| estadio (M) | stadium | stadio | Stadion (F) | Stadion (F) | A2, sport |
| cancha de baloncesto (F) | basketball court | basketbalejo | Basketballplatz (M) | Basketballplatz (M) | B1, sport |
| natación (F) | swimming | naĝado | Schwimmen (N) | Schwimme (N) | A2, sport |
| correr (M) | running | kurado | Laufen (N) | Laufe (N) | A2, sport |
| fútbol (M) | soccer | futbalo | Fußball (M) | Fuessball (M) | A2, sport |
| fútbol americano (M) | football | amerika futbalo | amerikanischer Fußball (M) | amerikanisch Fuessball (M) | A2, sport |
| tenis (M) | tennis | teniso | Tennis (N) | Tennis (N) | A2, sport |
| baloncesto (M) | basketball / basket | basketbalo | Basketball (M) | Basketball (M) | A2, sport |
| jugador - jugadora | player | ludanto - ludantino | Spieler - Spielerin | Spieler - Spielerin | A2, sport |
| partido (M) | match | partio / maĉo | Match (M) | Match (M) | A2, sport |
| intento (M) | attempt | provo / atenco / klopodo | Versuch (M) | Versuech (M) | B1, sport |
| protección (F) | protection | protekto | Schoner (M) | Schoner (M) | A2, protection |
| casco (M) | helmet | kasko | Helm (M) | Helm (M) | B1, protection |
| masaje (M) | massage | masaĝo | Massage (F) | Massage (F) | A2, massage |
| atracción de feria (F) | fair attraction | atrakcio / foira atrakcio | Messeattraktion (F) | Attraktion (F) | A1, fair |
| coches de choque (M/Pl) | bumper cars | kolizia veturilo | Autoscooter (M) | Autotütschi (N) | B1, fair |
| noria (F) | ferris wheel | giganta rado / radego | Riesenrad (N) | Rieserad (N) | B1, fair |
| viaje (M) | ride | rajdo | Fahrt (F) | Fahrt (F) | A1, fair |
| parque infantil (M) | children's playground | infanludejo | Kinderspielplatz (M) | Chindespiilplatz (M) | B1, playground |
| columpio (M) | swing | balancilbreto / balancilsidilo | Schaukel (F) | Gireizli (N) | A1, playground |
| balancín (M) | rocker | baskulo | Balancierstange (F) | Gigampfi (N) | A2, playground |
| tobogán (M) | slide | tobogano / glitejo / glitvojo | Rutsche (F) | Rutschbahn (F) | A2, playground |
| trineo (M) | sled | sledo | Schlitten (M) | Schlitte (M) | A2, tools for leisure |
| red (F) | net | reto | Netz (N) | Schlitte (M) | A2, tools for leisure |
| paseo (M) | walk | promeno | Spaziergang (M) | Spaziergang (M) | A1, walk |

### Verbs: Leisure
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| bailar | to dance | danci | tanzen | tanze - tanzisch - tanzet | A2 |
| salir | to go out - went out - gone out | eliri | ausgehen - ging aus - ausgegangen | uusgaa - gaasch uus - uusggange | A2 |
| viajar | to travel - traveled/travelled - traveled/travelled | vojaĝi | reisen | räise - räisisch - gräist | A1 |
| leer | to read - read - read | legi | lesen - las - gelesen | läse - lisisch - gläse | A1 |
| coleccionar | to collect | kolekti | sammeln | sammle - sammlisch - gsammlet | A1 |
| surfear / hacer surf - haber hecho surf | to surf | surfi | surfen | sörfe - sörfsch - gsörft | B1 |
| correr / hacer jogging - haber hecho jogging | to run - ran - run | kuri | joggen | tschoge - tschogsch - tschoget | A2 |
| jugar a fútbol - haber jugado a fútbol | to play soccer | ludi futbalon | Fussball spielen | Fuessball spile - spilsch Fuessball - Fuessball gspilt | A1 |
| hacer senderismo - haber hecho senderismo | to hike | marŝi | wandern | wandere - wanderisch - gwanderet | A2 |
| esquiar | to ski | skii | Ski fahren - fuhr Ski - Ski gefahren | Schii faare - faarsch Schii - Schii gfaare | A2 |
| nadar | to swim - swam - swum | naĝi | schwimmen - schwamm - geschwommen | schwime - schwimsch - gschwume | A2 |
| conducir un trineo | to sled - sledded - sledded | sledi | Schlitten fahren - fuhr Schlitten - Schlitten gefahren | schlittle - schlittlisch - gschlittlet | B1 |
| practicar | to practice | praktiki | üben | üebe - üebsch - güebt | A1 |
| pescar | to fish | fiŝi | fischen | fische - fischisch - gfischet | A1 |

### Nouns: Games
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| juego (M) | game | ludo | Spiel (N) / Partie (F) | Spiil (N) / Spiili (N) / Partii (F) | A1 |
| ajedrez (M) | chess | ŝako | Schach (N) | Schach (N) | A2 |
| go (M) | go | goo | Go (N) | Go (N) | B1 |
| sudoku (M) | sudoku | sudokuo | Sudoku (N) | Sudoku (N) | B1 |
| laberinto (M) | labyrinth / maze | labirinto | Labyrinth (N) | Labyrinth (N) | B1 |
| crucigrama (M) | crossword | krucvortenigmo | Kreuzworträtsel (N) | Chrüüzworträtsel (N) | B1 |
| misterio (M) | mystery | mistero | Rätsel (N) | Rätsel (N) | B1 |
| acertijo (M) | riddle | enigmo | Rätsel (N) | Rätsel (N) | B1 |
| pista (F) | hint | aludo | Tipp (M) | Tipp (M) | A2 |
| partida (F) | match | partio | Spiel (N) | Spiil (N) | A2, competition |
| desafío (M) | challenge | defio | Herausforderung (F) | Heruusforderig (F) | A2, competition |
| campeonato (M) | championship | ĉampionado | Meisterschaft (F) | Mäisterschaft (F) | B1, competition |
| torneo (M) | tournament | turniro | Turnier (N) | Turnier (N) | B1, competition |
| competición (F) | competition | konkuro / konkurado | Wettbewerb (M) | Wettbewerb (M) | B1, competition |
| concurso (M) | contest | konkurso | Wettbewerb (M) | Wettbewerb (M) | B1, competition |
| juego de azar (M) | game of chance | hazarda ludo | Glücksspiel (N) | Glücksspiil (N) | B1, chance |
| azar (M) | chance | hazardo | Chance (F) | Chance (F) | B1, chance |
| lotería (F) | lottery | loterio | Lotterie (F) | Lotterii (F) / Lotto (N) | A1, chance |
| apuesta (F) | bet | veto | Wette (F) | Wett (F) | A2, chance |
| máquina tragaperras (F) | slot machine | slotmaŝino | einarmiger Bandit (M) | Glückspielautomat (M) | B1, chance |
| bingo (M) | bingo | bingo | Bingo (N) | Bingo (N) | B1, chance |
| premio (M) | prize | premio | Preis (M) | Priis (M) | A2, prize |
| trofeo (M) | trophy | venksigno / trofeo | Trophäe (F) | Trophäe (F) | A2, prize |
| juego de mesa (M) | board game | tabulludo | Brettspiel (N) | Brättspiil (N) | A1, board games |
| ficha de dominó (F) | domino tab | domena tabuleto | Dominostein (M) | Dominostäi (M) | A2, board games |
| dominó (M) | dominoes | domeno | Domino (N) | Domino (N) | A1, board games |
| dado (M) | die | ludkubo | Würfel (M) | Würfel (M) | A2, board games |
| carta (F/Pl) | playing card | ludkarto | Karte (F) | Charte (F) | A2, board games |
| baraja de cartas (F) | deck of cards | ludkartaro | Kartendeck (N) | Chartedeck (N) | A2, board games |

### Verbs: Games
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| jugar | to play | ludi | spielen | spile - spilsch - gspilt | A1, game |
| ganar | to win - won - won | gajni | gewinnen - gewann - gewonnen | gwünne - gwünnsch - gwunne | A2 |
| perder | to lose - lost - lost | perdi | verlieren - verlor - verloren | verlüre - verlürsch - verlore | A2 |

### Nouns: Toys
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| juguete (M) | toy | ludilo | Spielzeug (N) | Spiilzüüg (N) | A1 |
| puzzle (M) | puzzle | puzlo | Puzzle (N) | Puzzle (N) | A2 |
| pelota (F) / bola (F) | ball | pilko | Ball (M) | Ball (M) | A1 |
| muñeco (M) | doll | pupo | Puppe (F) | Puppe (F) | A1 |
| peluche (M) | stuffed animal / plush toy | pluŝbesto | Plüschtier (N) | Plüschtier (N) | A2 |
| cometa (F) | kite | kajto | Drachen (M) | Drache (M) | B1 |

### Nouns: Music
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| música (F) | music | muziko | Musik (F) | Musik (F) | A1 |
| estilo musical (M) | musical style | muzika ĝenro | Musikrichtung (F) / Musikstil (M) / Genre (N) | Musikrichtig (F) / Musikstil (M) / Genre (N) | B1, style |
| rap (M) | rap | repo | Rap (M) | Rap (M) | A1, style |
| rock (M) | rock | rokmuziko | Rock (M) | Rock (M) | A1, style |
| jazz | jazz | ĵazo | Jazz (M) | Jazz (M) | A1, style |
| heavy metal (M) | heavy metal | metalroko | Heavy Metal (N) | Heavy Metal (N) | A1, style |
| música clásica (F) | classical music | klasika muziko | klassische Musik (F) | klassischi Musik (F) | A1, style |
| pop (M) | pop | pop-muziko | Pop (M) | Pop (M) | A1, style |
| nota musical (F) | musical note | muziknoto | Musiknote (F) | Musiknote (F) | B1, notes |
| do (M) | C | C | C | C | B1, notes |
| re (M) | D | D | D | D | B1, notes |
| mi (M) | E | E | E | E | B1, notes |
| fa (M) | F | F | F | F | B1, notes |
| sol (M) | G | G | G | G | B1, notes |
| la (M) | A | A | A | A | B1, notes |
| si (M) | B | B | B | B | B1, notes |
| sostenido (M) | sharp | dieso | Kreuz (N) | Chrüüz (N) | B1, notes, ♯ |
| bemol (M) | flat | bemolo | B (N) | B (N) | B1, notes, ♭ |
| becuadro (M) | natural | naturigilo | Auflösungszeichen (N) | Uuflösigszäiche (N) | B1, notes, ♮ |
| melodía (F) | melody | melodio | Melodie (F) | Melodii (F) | A2, music theory |
| armonía (F) | harmony | harmonio | Harmonie (F) | Harmonii (F) | A2, music theory |
| ritmo (M) | rhythm | ritmo | Rhythmus (M) | Rhythmus (M) | A2, music theory |
| canción (F) | song | kanto | Lied (N) | Lied (N) | A1, songs |
| letra (F) | lyrics | kantoteksto | Liedtext (M) | Liedtegst (M) | A1, songs |
| instrumento musical (M) | musical instrument | muzikilo / muzika instrumento | Musikinstrument (N) | Musikinstrument (N) | A1, instrument |
| guitarra (F) | guitar | gitaro | Gitarre (F) | Gitarre (F) | A2, string instrument |
| bajo (M) | bass / bass guitar | basgitaro | Bass (M) | Bass (M) | A2, string instrument |
| violín (M) | violin | violono | Geige (F) | Giige (F) | A2, string instrument |
| viola (F) | viola | aldviolono | Viola (F) | Viola (F) | A2, string instrument |
| contrabajo (M) | double bass | kontrabaso | Kontrabass (M) | Kontrabass (M) | B1, string instrument |
| ukelele (M) | ukulele | ukulelo | Ukulele (F) | Ukulele (F) | B1, string instrument |
| arpa (F) | harp | harpo | Harfe (F) | Harfe (F) | B1, string instrument |
| piano (M) | piano | piano | Klavier (N) | Klavier (N) | A1, key instrument |
| teclado (M) | keyboard | klavaro | Taste (F) | Taste (F) | A2, key instrument |
| voz (F) | voice | voĉo | Stimme (F) | Stimm (F) | A1, air instrument |
| flauta (F) | flute | fluto | Flöte (F) | Flöte (F) | A1, air instrument |
| saxofón (M) | saxophone | saksofono | Saxophon (N) | Saxophon (N) | B1, air instrument |
| clarinete (M) | clarinet | klarneto | Klarinette (F) | Klarinette (F) | B1, air instrument |
| acordeón (M) | accordion | akordiono | Akkordeon (N) | Akkordeon (N) | B1, air instrument |
| armónica (F) | harmonica | harmoniko | Mundharmonika (F) | Mundharmonika (F) | B1, air instrument |
| percusión (M) | percussion | perkutado | Schlag (M) | Schlag (M) | B1, percussion |
| batería (F) | drum set / drum kit / drums | drumo / frapinstrumentaro | Schlagzeug (N) | Schlagzüüg (N) | A1, percussion |
| tambor (M) | drum | tamburo | Trommel (F) | Trummle (F) | B1, percussion |
| xilófono (M) | xylophone | ksilofono | Xylophon (N) | Xylophon (N) | B1, percussion |
| volumen (M) | volume | laŭteco | Lautstärke (F) | Luutstärchi (F) | A2, volume |

### Verbs: Music
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| tocar | to play | ludi | spielen | spile - spilsch - gspilt | A1, instrument |

### Nouns: Military
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ejército (M) | army | armeo | Armee (F) | Armee (F) | B1, people |
| militar | soldier | soldato | Militär (F) | Militär (F) | B1, people |
| soldado | soldier | soldato | Soldat (M) | Soldat (M) | A2, people |
| guerrero - guerrera | warrior | militisto / batalisto | Krieger (M) | Chrieger (M) | A2, people |
| guardia (F) | guard | gardisto | Wache (F) | Wache (F) | A2, people |
| seguridad (F) | security | sekureco | Sicherheit (F) | Sicherhäit (F) | B1, security |
| seguridad (F) | safety | sekureco | Sicherheit (F) | Sicherhäit (F) | B1, security |
| vigilancia (F) | surveillance | viglado | Überwachung (F) | Überwachig (F) | B1, surveillance |
| guerra (F) | war | milito | Krieg (M) | Chrieg (M) | A1, war vs. peace |
| paz (F) | peace | paco | Frieden (M) | Fride (M) | A1, war vs. peace |
| libertad (F) | freedom | libereco | Freiheit (F) | Fräihäit (F) | A2, war vs. peace |
| arma (F; pero "el arma") | weapon | armilo / batalilo | Waffe (F) | Waffe (F) | A1, weapon |
| espada (F) | sword | glavo | Schwert (N) | Schwert (N) | A2, weapon |
| arco (M) | bow | pafarko / arko | Bogen (M) | Boge (M) | B1, weapon |
| flecha (F) | arrow | sago | Pfeil (M) | Pfiil (M) | B1, weapon |
| ballesta (F) | crossbow | arbalesto | Armbrust (F) | Armbrust (F) | B1, weapon |
| saeta (F) | bolt / quarrel | sago | Bolzen (M) | Bolze (M) | B1, weapon |
| hacha (F) | axe | hakilo | Axt (F) | Axt (F) | A2, weapon |
| hacha de mano (F) | hatchet | hakileto | Beil (N) | Biili (N) | B1, weapon |
| escudo (M) | shield | ŝildo | Schild (M) | Schild (M) | B1, weapon |
| armadura (F) | armor | kiraso | Rüstung (F) | Rüstig (F) | B1, weapon |
| casco (M) | helmet | kasko | Helm (M) | Helm (M) | B1, weapon |
| chaleco antibalas (M) | bulletproof vest | kuglorezista veŝto | kugelsichere Weste (F) | chugelsicheri Weste (F) | B1, weapon |
| pistola (F) | gun | pafilo | Gewehr (N) | Gwehr (N) | A1, weapon |
| proyectil (M) | projectile | ĵetaĵo | Projektil (N) | Projektil (N) | A2, weapon |
| misil (M) | missile / rocket | ĵetarmilo / misilo / raketo | Rakete (F) | Rakete (F) | B1, weapon |
| bala (F) | bullet | kuglo / pafilkuglo | Kugel (F) | Chugle (F) | A2, weapon |
| disparo (M) | shot | pafo | Schuss (M) | Schuss (M) | A2, weapon |
| escopeta (F) | shotgun | ĉasfusilo | Schrotflinte (F) / Flinte (F) | Schrotflinte (F) / Flinte (F) | A2, weapon |
| fusil (M) / rifle (M) | rifle | fusilo | Gewehr (N) | Gwehr (N) | B1, weapon |
| explosión (F) | explosion | eksplodo | Explosion (F) | Explosion (F) | A1, weapon |
| explosivo (M) | explosive | eksplodaĵo | Sprengstoff (M) | Sprengstoff (M) | B1, weapon |
| granada (F) | grenade | grenado | Granate (F) | Granate (F) | B1, weapon |
| catapulta (F) | catapult | katapulto | Katapult (N) | Katapult (N) | B1, weapon |
| pelea (F) | brawl | kverelo | Schlägerei (F) | Schlägerei (F) | A2, fight |
| lucha (F) | fight | lukto | Kampf (M) | Champf (M) | B1, fight |
| combate (M) | combat | batalo | Kampf (M) | Champf (M) | B1, fight |
| batalla (F) | battle | batalo | Schlacht (F) | Schlacht (F) | B1, fight |
| ataque (M) | attack | atako | Angriff (M) | Aagriff (M) | B1, in a fight |
| defensa (F) | defense | defendo | Verteidigung (F) | Verteidigung (F) | B1, in a fight |
| puñetazo (M) | punch | punĉo | Schlag (M) | Schlag (M) | A2, in a fight |
| patada (F) | kick | piedbato | Tritt (M) | Tritt (M) | A2, in a fight |
| golpe (M) | hit | bato |  |  | A1, in a fight |

### Adjectives: Military
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| militar | military | milita | militärisch | militärisch | B1 |

### Nouns: Incidents
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| incidente (M) | incident | okazaĵo | Vorfall (M) | Vorfall (M) | B1 |
| suceso (M) | event / happening | evento / okazo | Ereignis (N) | Eräignis (N) | B1 |
| catástrofe (F) | catastrophe | katastrofo | Katastrophe (F) | Katastrophe (F) | A1, catastrophe |
| desastre (M) | disaster | katastrofo | Katastrophe (F) | Katastrophe (F) | A2, catastrophe |
| inundación (F) | flood | inundo | Flut (F) | Fluet (F) | B1, catastrophe |
| tormenta (F) | storm | ŝtormo | Sturm (M) | Sturm (M) | A1, catastrophe |
| rayo (M) | lightning | fulmo | Blitz (M) | Blitz (M) | A2, catastrophe |
| trueno (M) | thunder | tondro | Donner (M) | Donner (M) | A2, catastrophe |
| diluvio (M) | deluge | diluvo | Sintflut (F) | Sintfluet (F) | B1, catastrophe |
| incendio (M) | fire | fajro | Brandfall (M) / Brand (M) | Brandfall (M) / Brand (M) | A1, catastrophe |
| huracán (M) | hurricane | uragano | Hurrikan (M) | Hurrikan (M) | B1, catastrophe |
| tornado (M) | tornado | tornado | Tornado (M) | Tornado (M) | B1, catastrophe |
| terremoto (M) | earthquake | tertremo | Erdbeben (N) | Erdbebe (N) | A2, catastrophe |
| accidente (M) | accident | akcidento | Unfall (M) | Unfall (M) | A1, accident |
| emergencia (F) | emergency | krizo | Notfall (M) | Notfall (M) | A1, emergency |
| ambulancia (F) | ambulance | ambulanco | Krankenwagen (M) | Chrankewage (M) | A1, emergency |
| camión de bomberos (M) | fire truck | estingotaĉmenta veturilo | Feuerwehrauto (N) | Füürwehrauto (N) | A1, emergency |
| coche de policía (M) | police car | polica aŭto | Polizeiauto (N) | Polizäiauto (N) | A1, emergency |
| boca de incendios (F) | fire hydrant | hidranto | Feuerhydrant (M) / Hydrant (M) | Füürhydrant (M) / Hydrant (M) | A2, fire |
| extintor (M) | fire extinguisher / extinguisher | estingaparato / fajrestingilo | Feuerlöscher (M) | Füürlöscher (M) | A2, fire |
| botiquín (M) | first aid kit | manapteko | Verbandkasten (M) | Verbandchaste (M) | A2, first aid kit |
| precaución (F) | caution | singardeco | Vorsicht (F) | Vorsicht (F) | A1, caution |
| riesgo (M) | risk | risko | Risiko (N) | Risiko (N) | A2, caution |
| peligro (M) | danger | danĝero | Achtung (F) | Achtung (F) | A1, caution |

### Nouns: Legal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| crimen (M) | crime | krimo | Verbrechen (N) | Verbräche (N) | B1 |
| ley (F) | law | leĝo | Gesetz (N) | Gsetz (N) | A1 |
| testigo | witness | atestanto | Zeuge (M) | Züüge (M) | B1 |
| víctima (F) | victim | viktimo | Opfer (N) | Opfer (N) | B1 |
| autor (M) / autor del crimen (M) | perpetrator | perpetranto | Täter (M) | Täter (M) | B1 |
| juez (M) | judge | juĝisto | Richter (M) | Richter (M) | A2 |
| condena (F) | conviction | kondamno | Urteil (N) | Urtäil (N) | B1 |
| castigo (M) / pena (F) | punishment | puno | Straafe (F) | Straaf (F) | B1 |
| juicio (M) | trial | juĝado | Prozess (M) | Prozäss (M) | B1 |
| abogado (M) | lawyer | advokato | Anwalt (M) | Aawalt (M) | B1 |
| secuestro (M) | kidnap | forrabo | Entführung (F) | Entfüerig (F) | B1, kidnap |
| secuestrador - secuestradora | kidnapper | forrabisto | Entführer (M) | Entfüerer (M) | B1, kidnap |
| bomba (F) | bomb | bombo | Bombe (F) | Bombe (F) | A1, terrorist |
| atentado (M) / atentado terrorista | terrorist attack | terorisma atako | Terroranschlag (M) | Terroraaschlag (M) | A1, terrorist |
| terrorista | terrorist | teroristo | Terrorist (M) | Terrorist (M) | A1, terrorist |
| herido - herida | injured | vundito | Verletzte (M) | Verletzte (M) | B1, murder |
| cadáver (M) | corpse / cadaver | kadavro | Leiche (F) | Liiche (F) | B1, murder |
| muerto - muerta | dead | mortinto | Tot (M) | Tod (M) | B1, murder |
| asesino - asesina | killer / murderer | murdisto | Mörder (M) | Mörder (M) | B1, murder |
| asesinato (M) | murder | murdo | Mord (M) | Mord (M) | B1, murder |
| homicidio (M) | homicide | hommortigo | Tötung (F) | Tötig (F) | B1, murder |
| atraco (M) | robbery | rabo | Überfall (M) | Überfall (M) | B1, heist |
| atracador - atracadora | robber | rabisto | Räuber (M) | Räuber (M) | B1, heist |
| rehén (M) | hostage | ostaĝo | Geisel (M/F) | Geisle (M/F) | B1, heist |
| robo (M) | theft | ŝtelo | Diebstahl (M) | Diebstahl (M) | B1, theft |
| ladrón - ladrona | thief | ŝtelisto | Dieb (M) | Dieb (M) | A2, theft |
| prueba (F) | proof | pruvo | Beweis (M) | Bewiis (M) | B1, investigation |
| pista (F) | clue | postsigno | Indiz (N) | Indiz (N) | B1, investigation |
| huella (F) | footprint | piedsigno | Fußabdruck (M) | Fuessabdruck (M) | A2, investigation |
| huella dactilar (F) | fingerprint | fingrospuro | Fingerabdruck (M) | Fingerabdruck (M) | B1, investigation |
| restos (M/Pl) | remains | restaĵo | Überreste (M/Pl) | Überreste (M/Pl) | B1, investigation |

### Adjectives: Legal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| presunto - presunta | alleged / presumed | supozata | vermutet | vermuetet | B1 |
| asesinado - asesinada | murdered | murdita | ermordet | ermordet | B1 |
| herido - herida | injured | vundita | verletzt | verletzt | B1 |
| terrorista | terrorist | terorisma |  |  | A1 |
| condenado - condenada | condemned | kondamnita | verurteilt | verurteilt | B1 |
| inocente | innocent | senkulpa | unschuldig | unschuldig | B1 |
| culpable | guilty | kulpa | schuldig | schuldig | B1 |
| legal | legal | laŭleĝa | legal | legal | A2, legality |
| ilegal | illegal | mallaŭleĝa | illegal | illegal | A2, legality |

### Verbs: Legal
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| matar | to kill | mortigi | umbringen - brachte um - umgebracht | umbringe - bringsch um - umbracht | B1 |
| robar | to steal | ŝteli | stehlen - stahl - gestohlen | stehle - stehlsch - gstehlt | B1 |
| investigar | to investigate | enketi | untersuchen - suchte unter - untergesucht | untersueche - untersuechsch - untergsuecht | B1 |
| detener | to arrest | aresti | festnehmen - nahm fest - festgenommen / verhaften - verhaftete - verhaftet | festnäh - nimmsch fest - festgno / verhafte - verhaftisch - verhaftet | B1 |
| juzgar | to judge | juĝi | beurteilen | beurtäile - beurtäilsch - beurtäilt | B1 |
| condenar | to condemn | kondamni | verurteilen | verurtäile - verurtäilsch - verurtäilt | B1 |

### Nouns: Things
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| cosa (F) | thing | aĵo | Ding (N) / Sache (F) | Ding (N) / Sach (F) | A1 |
| objeto (M) | object | objekto | Objekt (N) / Gegenstand (M) | Objäkt (N) / Gägestand (M) | A2 |
| categoría (F) | category | kategorio | Kategorie (F) | Kategorii (F) | B1 |
| grupo (M) | group | grupo | Gruppe (F) | Gruppe (F) | A1 |
| lista (F) | list | listo | Liste (F) | Liste (F) | A1 |
| conjunto (M) | set | aro | Set (N) | Set (N) | A2 |
| mezcla (F) | mix | mixaĵo | Gemisch (N) | Gmisch (N) | A2 |
| parte (F) | part | parto | Teil (N) | Täil (N) | A1 |
| trozo (M) | piece / chunk | peco | Stück (N) | Stuck (N) | A1 |
| pedazo (M) | piece / chunk | peco | Stück (N) | Stuck (N) | A1 |

### Adjectives: Things
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| grande | big | granda | groß | grooss | A1, size |
| enorme | huge | grandega | riesig | riisig | A2, size |
| pequeño - pequeña | small | malgranda | klein | chlii | A1, size |
| diminuto - diminuta | tiny | malgrandeta | winzig | winzig | A2, size |
| largo - larga | long | longa | lang | lang | A1, size |
| corto - corta | short | mallonga | kurz | churz | A1, size |
| nuevo - nueva | new | nova | neu | neu | A1, age |
| viejo - vieja | old | malnova | alt | alt | A1, age |
| antiguo - antigua | old | malnova | alt | alt | A1, age |
| bonito - bonita | pretty | bela | schön | schön | A1, beauty |
| feo - fea | ugly | malbela | hässlich | hässlich / wüest | A1, beauty |
| suave | soft | glata | weich / sanft | wäich / sanft | A1, touch |
| blando - blanda | soft | mola | weich | wäich | A1, touch |
| rugoso - rugosa | rugged | ruĝa | rau | rau | A2, touch |
| esponjoso - esponjosa | fluffly | lanuga | flauschig | flauschig | A2, touch |
| duro - dura | hard | malmola | hart | härt | A2, touch |
| flexible | flexible | fleksebla | flexibel | flexibel | A2, touch |
| rizado - rizada | curly | frizita | lockig | lockig | B1, hair, hair |
| liso - lisa | straight | glata | glatt | glatt | B1, hair, hair |
| roto - rota / estropeado - estropeada | broken | rompita | kaputt | kaputt | A2, functioning state |
| pegado - pegada | fixed | fiksita | geklebt | aakläbt | A2, functioning state |
| arreglado - arreglada | fixed | reparita | repariert | flickt | A2, functioning state |
| transparente | transparent | travidebla | transparent / durchsichtig | transparänt / durchsichtig | A1, translucity |
| translúcido - translúcida | translucent | translua | lichtdurchlässig | liechtdurchlässig | B1, translucity |
| opaco - opaca | opaque | opaka | undurchsichtig | undurchsichtig | B1, translucity |
| invisible | invisible | nevidebla | unsichtbar | unsichtbar | A2, visibility |
| visible | visible | videbla | sichtbar | sichtbar | A2, visibility |
| escondido - escondida / oculto - oculta | hidden | kaŝita | versteckt | versteckt | A2, visibility |
| apretado - apretada | tight | streĉa | eng | eng | B1, tightness |
| suelto - suelta | loose | malstreĉa | locker | locker | B1, tightness |
| artificial | artificial | artefarita | künstlich | künstlich | B1, artificial vs natural |
| natural | natural | natura | natürlich | natürlich | B1, artificial vs natural |
| orgánico - orgánica | organic | organika | bio | bio | B1, artificial vs natural |
| ancho - ancha | wide | larĝa | breit | bräit | B1, wide |
| estrecho - estrecha | narrow | mallarĝa | eng | eng | B1, wide |
| lleno - llena | full | plena | voll | voll | A2, fullness |
| vacío - vacía | empty | malplena | leer | leer | A2, fullness |
| pesado - pesada | heavy | peza | schwer | schweer | A2, weight |
| ligero - ligera | light | malpeza / leĝera | leicht | liecht | A2, weight |
| abierto - aberta | open | malfermita | öffnen | offe | A1, open vs close |
| cerrado - cerrada | closed | fermita | geschlossen | zue | A1, open vs close |
| claro - clara | clear | klara | klar | klar | A1, ease to understand |
| confuso - confusa / desconcertante | confusing | konfuza | verwirrend | verwirrend | A2, ease to understand |
| redondo - redonda | round | ronda | runde | runde | A2, roundness |
| plano - plana | flat | plata | eben / flach | ebe / flach | A2, roundness |
| afilado - afilada | sharp | akra | scharf | scharf | B1, sharpness |
| romo - roma | blunt | malakra | stumpf | Stumpf | B1, sharpness |
| moderno - moderna | modern | moderna | modern | modern | B1, antiqueness |
| anticuado - anticuada | antique | antikva | altmodisch | altmodisch | B1, antiqueness |
| cómodo - cómoda | comfortable | komforta | gemütlich | gmüetlich | B1, comfortableness |
| incómodo - incómoda | uncomfortable | malkomforta | unbequem | unbequem | B1, comfortableness |
| acogedor - acogedora | cozy | komforta | gemütlich | gemütlich | B1, coziness |
| frío - fría | cold | malvarma | kalt | chalt | A1, temperature |
| fresco - fresca | cool | malvarmeta | kühl | chüehl | A2, temperature |
| a temperatura ambiente | lukewarm | varmeta | lauwarm | lauwarm | A2, temperature |
| templado - templada | warm | varma | warm | warm | A2, temperature |
| caliente - caliente / caluroso - calurosa | hot | varma | heiß | häiss | A1, temperature |
| constante | constant | konstanta | konstant | konstant | A2, duration |
| permanente | permanent | konstanta / daŭra / ĉiama | ständig / permanent | ständig / permanänt | A2, duration |

### Conversational
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| exacto - exacta | exact | ĝusta | genau | genau | A2, exactness |
| aproximado - aproximada | approximate | proksimuma | ungefähr | ungefähr | A2, exactness |

### Verbs: Things
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| hacer - hecho | to do - did - done | fari | tun - tat - getan | mache - machsch - gmacht (tue - tuesch - taa isch für Betonig) | A1 |
| hacer - hecho / crear | to make - made - made | fari | machen | mache - machsch - gmacht | A1 |
| tirar | to pull | tiri | ziehen - zog - gezogen | zieh - ziesch - zoge | A2 |
| lanzar | to throw - threw - thrown | ĵeti | werfen - warf - geworfen | rüere - rüersch - grüert | A2 |
| obtener | to get - got - got/gotten | akiri | bekommen - bekam - bekommen | becho -  bechunsch - bechoo | A1 |
| enviar | to send - sent - sent | sendi | senden - sendete - gesendet / schicken - schickte - geschickt | schicke - du schicksch - gschickt | A1 |
| recibir | to receive | ricevi | bekommen - bekam - bekommen | becho - bechunnsch - bechoo | A1 |
| poner - puesto | to lay - laid - laid | meti | legen | lege - legsch - gläit | A1 |
| poner - puesto | to put - put - put | meti | stellen | stelle - stellsch - gstellt | A1 |
| dar | to give - gave - given | doni | geben - gab - gegeben | gee - gisch - geh | A1 |
| tomar | to take - took - taken | preni | nehmen - nahm - genommen | näh - nimmsch - gno | A1 |
| encontrar | to find - found - found | trovi | finden - fand - gefunden | finde - findsch - gfunde | A1 |
| necesitar | to need | bezoni | brauchen | bruuche - bruuchsch - bruucht | A1 |
| buscar | to search | serĉi | suchen | sueche - suechsch - gsuecht | A1 |
| sostener | to hold - held - held | teni | halten - hielt - gehalten | hebe - du hebsch - ghebt | A2 |
| llevar | to carry - carried - carried | porti | tragen - trug - getragen | träge - trägsch - trägt | A2 |
| traer | to bring - brought - brought | alporti | bringen - brachte - gebracht | bringe - bringsch - bracht | A1 |
| escribir - escrito | to write - wrote - written | skribi | schreiben - schrieb - geschrieben | schriibe - schriibsch - gschribe | A1 |
| mantener | to keep - kept - kept | teni | behalten - behielt - behalten | bhalte - bhaltisch - bhalte | A2 |
| mostrar | to show - showed - shown/showed | montri | zeigen | zäige - zäigsch - zäigt | A2 |
| usar | to use | uzi | benutzen | bruuche - bruuchsch - bruucht | A1 |
| dejar | to let - let - let | lasi | lassen - ließ - gelassen | laa la - laasch la - la glaa (ich laa dich la singe) | A1, object |
| construir | to build - built - built | konstrui | bauen | baue - du bausch - baut | A1 |
| dibujar | to draw - drew - drawn | desegni | zeichnen - zeichnete - gezeichnet | zäichne - zäichnisch - zäichnet | A1 |
| romper - roto | to break - broke - broken | rompi | brechen - brach - gebrochen | bräche - brichsch - broche | A2 |
| cortar | to cut - cut - cut | tranĉi | schneiden - schnitt - geschnitten | schniide - schniidsch - gschnitte | A1 |
| elegir | to choose - chose - chosen | elekti | auswählen - wählte aus - ausgewählt | uuswähle - wählsch uus - uusgwählt | A1 |
| seleccionar | to select | elekti | auswählen - wählte aus - ausgewählt | uuswähle - wählsch uus - uusgwählt | A2 |
| pintar | to paint | pentri | malen - - malt | male - malsch - gmalet | A2 |
| guardar | to save | savi | speichern | speichere - speicherisch - gspeicheret | B1 |
| devolver - devuelto | to return / to give back - gave back - given back | redoni | zurückgeben - gab zurück - zurückgegeben | zruggee - gisch zrugg - zruggeh | B1 |
| recuperar | to recover | rekuperi | erholen | erhole - erholsch - erholt | B1 |
| no conseguir - no conseguido | to fail | malsukcesi | versagen | versaue - versausch - versaut / versäge - versäisch - versäit | B1 |
| presentar | to introduce | enkonduki | vorstellen - stellte vor - vorgestellt | voorstelle - stellsch voor - voorgstellt | A2, a topic |
| suministrar / entregar | to deliver | liveri | liefern | lifere - liferisch - gliferet | B1 |
| establecer / poner - puesto | to set - set - set | fiksi | einstellen | iistelle - stellsch ii - iigstellt | A2 |
| dejar | to leave - left - left | lasi | verlassen - verließ - verlassen | verlaa - verlaasch - verlah | A1 |
| retomar | to resume | repreni | fortsetzen - setzte fort - fortgesetzt | fortsetze - setzisch fort - fortgsetzt | B1 |
| resumir | to summarize | resumi | zusammenfassen - fasste zusammen - zusammengefasst | zämmefasse - fassisch zämme - zämmegfasst | B1 |
| pasar / ocurrir | to pass | pasi | passieren - - passiert | passiere - passiersch - passiert | A2 |
| cambiar / reemplazar / sustituir | to change / to replace | ŝanĝi / anstataŭi | wechseln / ersetzen | wächsle - wächslisch - gwächslet / ersetze - ersetzisch - ersetzt | A2 |
| cambiar / intercambiar | to exchange | interŝanĝi | tauschen | tuusche - tuuschisch - tuuscht | A2 |
| abrir - abierto | to open | malfermi | öffnen | uuf mache - maachsch uuf - uufgmacht | A1 |
| cerrar | to close | fermi | schließen - schloß - geschlossen | zue mache - maachsch zue - zuegmacht | A1 |
| esconder / ocultar | to hide | kaŝi | verstecken | verstecke - verstecksch - versteckt | A1 |
| poseer | to own | posedi | besitzen - besaß - besessen | besitze - besitzisch - bsässe | A2 |
| sonar | to sound | soni | tönen / klingen - klang - geklungen | töne - tönsch - tönt | A1 |
| dañar | to damage | damaĝi | beschädigen | beschädige - beschädigsch - beschädigt | A2 |
| reparar / arreglar | to repair / to fix | ripari | reparieren / flicken | flicke - flicksch - gflickt | B1 |
| declinar / rechazar | to decline / to reject | declini / malakcepti | ablehnen - lehnte ab - abgelehnt | ablehne - lehnsch ab - abglehnt | B1 |
| aceptar | to accept | akcepti | akzeptieren | akzeptiere | B1 |
| contener / sujetar | to hold - held - held | teni | halten - hielt - gehalten | hebe - hebsch - ghebt | B1 |
| secar | to dry / to dry off | sekigi | trocknen | tröchne - tröchnisch - tröchnet | B1 |
| colgar | to hang - hanged/hung - hanged/hung | pendigi | aufhängen - hing auf - aufgehängt | uufhänke - hänkisch uuf - uufghänkt | B1 |

### Nouns: Architecture
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| arquitectura (F) | architecture | arkitekturo | Architektur (F) | Architektur (F) | B1 |
| torre (F) | tower | turo | Turm (M) | Turm (M) | A2 |
| campana (F) | bell | sonorilo | Glocke (F) | Glocke (F) | A2 |
| columna (F) | column | kolumno | Säule (F) | Süüle (F) | A2 |
| puente (M) | bridge | ponto | Brücke (F) | Bruck (F) | A1 |
| túnel (M) | tunnel | tunelo | Tunnel (M) | Tunnel (M) | A2 |
| estatua (F) | statue | statuo | Statue (F) | Statue (F) | A2 |
| monumento (M) | monument | monumento | Sehenswürdigkeit (F) | Sehenswürdigkeit (F) | A1 |
| bloque (M) | block | bloko | Block (M) | Block (M) | A2 |

### Nouns: Mind
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| mente (F) | mind | menso | Verstand (M) | Verstand (M) | A2 |
| recuerdo (M) | memory | memoro | Erinnerung (F) | Erinnerig (F) | A1 |
| memoria (F) | memory | memoro | Gedächtnis (N) | Gedächtnis (N) | A2 |
| idea (F) | idea | ideo | Idee (F) | Idee (F) | A1 |
| pensamiento (M) | thought | penso | Gedanke (M) | Gedanke (M) | A1 |
| imaginación (F) | imagination | imago | Vorstellung (F) | Vorstellig (F) | A2 |
| sensación (F) | sensation | sento | Gefühl (N) | Gefühl (N) | A2 |
| instinto (M) | instinct | instinkto | Instinkt (M) | Instinkt (M) | A2 |
| intuición (F) | intuition | intuicio / intuo | Intuition (F) | Intuition (F) | A2 |

### Nouns: Emotions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| emoción (F) | emotion | emocio | Emotion (F) | Emotion (F) | A2 |
| sentimiento (M) | feeling | sento | Gefühl (N) | Gefühl (N) | A1 |
| felicidad (F) / alegría (F) | happiness / joy | feliĉo / ĝojo | Glück (N) / Freude (F) | Glück (N) / Freud (F) | A1 |
| tristeza (F) | sadness | malfeliĉo / malĝojo | Traurigkeit (F) | Truurigkäit (F) | A1 |
| ambiente (M) | atmosphere | etoso | Atmosphäre (F) | Atmosphäre (F) | A1, of a place, of a place |

### Adjectives: Emotions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| nervioso - nerviosa | nervous | nervoza | nervös | nervös | A2, nervousness |
| tranquilo - tranquila | calm | kvieta / mallaŭta | ruhig | ruhig | A2, nervousness |
| feliz / alegre | happy | feliĉa / ĝoja | glücklich | glücklich | A1, happiness |
| infeliz | unhappy | malfeliĉa / malĝoja | unglücklich | unglücklich | A2, happiness |
| triste | sad | malfeliĉa / malĝoja | traurig | truurig | A1, happiness |
| contento - contenta / feliz | happy | feliĉa / ĝoja | glücklich | glücklich | A1, happiness |
| contento - contenta | content | kontenta | zufrieden | z'fride | A1, happiness |
| descontento - descontenta | discontent | malkontenta | unzufrieden | unz'fride | A2, happiness |
| satisfecho - satisfecha | satisfied | kontenta | zufrieden | z'fride | A1, happiness |
| insatisfecho - insatisfecha | dissatisfied | malkontenta | unzufrieden | unz'fride | A2, happiness |
| molesto - molesta | annoyed / upset | ĝenita / ĉagrenita | verärgert | verärgert | B1, happiness |
| enfadado - enfadada | angry / mad | kolera | wütend | hässig | A2, happiness |
| sorprendido - sorprendida | surprised | surprizita | überrascht | überrascht | B1, feeling towards something |
| asustado - asustada | scared | timigita | ängstlich | ängstlich | A2, feeling towards something |
| asustado - asustada | scared | timigita | erschrocken | erschrocke | A2, feeling towards something |
| impresionado - impresionada | impressed | impresita | beeindruckt | beiidruckt | B1, feeling towards something |
| preocupado - preocupada | worried | maltrankviligita | besorgt | besorgt | B1, feeling towards something |
| cansado - cansada | tired | laca | müde | müed | A2, interest |
| emocionado - emocionada | excited | ekscitita | fröhlich | fröhlich | A1, interest |
| aburrido - aburrida | bored | tedita | gelangweilt | glangwiilt | A1, interest |

### Verbs: Emotions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| esperar | to hope | esperi | hoffen | hoffe - hoffsch - ghofft | B1 |
| echar de menos - echado de menos | to miss | preterlasi | vermissen - - vermisst | vermissen - vermissisch - vermisst | B1 |
| desear | to desire | deziri | wünschen | wünsche - wünschisch - gwünscht | B1 |
| imaginar | to imagine | imagi | vorstellen - stellte vor - vorgestellt | voorstelle - stellsch voor - voorgstellt | B1 |
| importar | to matter | gravi | bedeuten - bedeutete - bedeutet | bedüüte - bedüütisch - bedüütet | A2 |
| preferir | to prefer | preferi | bevorzugen - - bevorzugt | bevorzuge - bevorzugsch - bevorzoge | A2 |
| alegrarse - haberse alegrado | to rejoice / to be glad - was glad - been glad | ĝoji | sich freuen - freute sich - sich gefreut | sich freue - du freusch dich - sich gfreut | A2 |

### Verbs: Movement
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| andar | to walk | marŝi | laufen - lief - gelaufen | lauffe - laufsch - gloffe | A1 |
| correr | to run - ran - run | kuri | rennen - rannte - gerannt | ränne - rännsch - grännt / springe - springsch - gsprunge | A1 |
| saltar | to jump | salti | springen - sprang - gesprungen | gumpe - gumpsch - gumpet | A1 |
| ir | to go - went - gone | iri | gehen - ging - gegangen | gaa go - gaasch go - go ggange (ich gaa go schwümme) | A1 |
| venir - vuelto | to come - came - come | veni | kommen - kam - gekommen | cho go - chunsch go - go choo (1. ich chume go ...) / cho cho - chunsch cho - cho choo (1. ich chume cho ...) | A1 |
| estar de pie | to stand - stood - stood | stari | stehen | staa - staasch - gstande | A1 |
| levantarse - haberse levantado | to stand up - stood up - stood up | stari | aufstehen - stand auf - aufgestanden | uufstaa - staasch uuf - uufsgstande | A2 |
| sentarse - haberse sentado | to sit - sat - sat | sidi | setzen / absitzen - saß ab - abgesessen | sitze (+AKK) - sitzisch (+AKK) - gsässe (+AKK) | A1 |
| estar sentado - estado sentado | to be sitting - was sitting/were sitting - been sitting | sidi | sitzen saß - gesessen | sitze (+DAT) - sitzisch (+DAT) - gsässe (+DAT) | A2 |
| quedarse - haberse quedado | to stay - stayed - stayed | resti | bleiben - blieb - geblieben | bliibe - bliibsch - blube | A2 |
| tumbarse - haberse tumbado | to lie down - lay down - lain down | kuŝi | hinlegen - legte hin - hingelegt | aneligge - liisch ane - anegläge | A2 |
| levantarse de la cama - haberse levantado de la cama | to get up - got up - got/gotten up | leviĝi | aufstehen - stand auf - aufgestanden | uufstaa - staasch uuf - uufgstande | A1 |
| levantarse - haberse levantado | to rise - rose - risen | leviĝi | aufsteigen - stieg auf - aufgestiegen | uufstige - du stigsch uuf - uufgstiige | A2 |
| entrar | to enter | eniri | betreten - betrat - betreten / hinein gehen - hinein ging - hinein gegangen | ine gaa - ine gaasch - ine ggange | A2 |
| salir | to leave - left - left | eliri | verlassen - verließ - verlassen | verlaa - verlaasch - verlah | A2 |
| regresar | to return / to come back - came back - come back | reveni | zurückkommen - kam zurück - zurückgekommen | zruggcho - chunsch zrugg - zruggchoo | B1 |
| seguir | to follow | sekvi | folgen | folge - folgsch - gfolgt | A2 |
| moverse - haberse movido | to move | movi | sich bewegen - bewegte/bewog sich - sich bewogen/bewegt | sich bewege - bewegsch dich - sich bewegt | A2 |
| volar | to fly | flugi | fliegen - flog - geflogen | flüge - flügsch - gfloge | A2 |
| agacharse - haberse agachado | to crouch | kroĉi | kriechen - kroch - gekrochen | chrüche - chrüchsch - kroche | A2 |
| recostarse - haberse recostado | to lie down - lay down - lain down | kuŝiĝi | lehnen - lehnte - gelehnt | abligge - liggsch ab - abglage | A2 |

### Nouns: People interactions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| broma (F) | prank | bubaĵo | Streich (M) | Sträich (M) | A1, pranks |
| chiste (M) | joke | ŝerco / ridindaĵo | Scherz (M) / Witz (M) | Scherz (M) / Witz (M) | A1, pranks |
| sonrisa (F) | smile | rideto | Lächeln (N) | Lächle (N) | A1, reactions |
| grito (M) | shout | kriego / krio | Schrei (M) | Schräi (M) | B1, reactions |
| consejo (M) | advice | konsilo | Rat (M) | Rat (M) | A1, advice |
| truco (M) / consejo (M) | tip | konsilo | Hinweis (M) | Hiiwiis (M) | A1, advice |
| verdad (F) | truth | vero | Wahrheit (F) | Wahrhäit (F) | A1, truth |
| mentira (F) | lie | mensogo | Lüge (F) | Lüüg (F) | A1, truth |
| secreto (M) | secret | sekreto | Geheimnis (N) | Gehäimnis (N) | A1, secret |
| dueño - dueña | owner | proprietulo / posedanto | Inhaber (M) / Besitzer (M) / Eigentümer (M) | Inhaber (M) / Bsitzer (M) / Äigetümer (M) | A2, host vs guest |
| anfitrión - anfitriona | host - hostess | mastro | Gastgeber - Gastgeberin | Gastgeber - Gastgeberin | A2, host vs guest |
| invitado - invitada | guest | gasto - gastina | Gast (M) | Gast (M) | A2, host vs guest |
| huésped | guest | gasto - gastina | Gast (M) | Gast (M) | A2, host vs guest |
| costumbre (F) | custom | kutimo | Angewohnheit (F) | Agwohnhäit (F) | A2, customs |
| insulto (M) | insult | insulto | Schimpfwort (N) | Schimpfwort (N) | A1, insults and compliments |
| amenaza (F) | threat | minaco | Bedrohung (F) / Drohung (F) | Drohig (F) / Bedrohig (F) | A2, insults and compliments |
| cumplido (M) | compliment | komplimento | Kompliment (N) | Kompliment (N) | B1, insults and compliments |
| respeto (M) | respect | respekto | Respekt (M) | Respekt (M) | B1, trait |
| calidad (F) | quality | kvalito | Qualität (F) | Qualität (F) | B1, trait |
| paciencia (F) | patience | pacienco | Geduld (F) | Geduld (F) | B1, trait |
| suerte (F) | luck | bonŝanco / ŝanco | Glück (N) | Glück (N) | A1, luck |
| mala suerte (F) | bad luck | malbonŝanco | Pech (N) | Päch (N) | B1, luck |
| problema (M) | problem | problemo | Problem (N) | Problem (N) | A1, problem |

### Adjectives: People interactions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sonriente | smiling | ridanta | lächelnd | lächelnd | A2 |
| secreto - secreta | secret | sekreta | geheim | ghäim | A1 |
| embarazoso - embarazosa | embarrassing | embarasa | peinlich | päinlich | A1 |

### Verbs: People interactions
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| mentir | to lie - lied - lied | mensogi | lügen - log - gelogen | lüge - lügsch - gloge | A2 |
| decir la verdad | to tell the truth - told the truth - told the truth | diri la veron | die Wahrheit sagen - sagte die Wahrheit - die Wahrheit gesagt | d Wahrhäit säge - säisch d Wahrhäit - d Wahrhäit gsäit | A2 |
| hablar | to speak - spoke - spoken | paroli | sprechen - sprach - gesprochen | rede - redsch - gredet | A1 |
| gritar | to shout - shouted - shouted / to yell - yelled - yelled | krii | schreien - schrie - geschrien | schräie - schräisch - gschroue | A2 |
| preguntar | to ask | demandi | fragen | frööge - fröögsch - gfröögt | A1 |
| conocer | to know - knew - known | koni | kennen - kannte - gekannt | käne - känsch - känt | A1, person or thing |
| amar / querer | to love | ami | lieben | liebe - liebsch - gliebt | A1 |
| odiar | to hate | malami | hassen - hasste - gehasst | hasse - hassisch - ghasst | A1 |
| agradecer | to thank | danki | danken | danke - danksch - dankt | A2 |
| responder | to reply - replied - replied | respondi | antworten - antwortete - geantwortet | antworte - antwortisch - gantworted | A1 |
| llamar | to call | voki | rufen - rief - gerufen | rüefe - rüefsch - grüeft | A1 |
| llamar por teléfono | to phone | telefoni | anrufen - rief an - angerufen | aalüüte - lüütisch aa - aaglüüte | A2 |
| decir - dicho | to say - said - said | diri | sagen | säge - säisch - gsäit | A1 |
| hacer cosquillas - hecho cosquillas | to tickle | tikli | kitzeln | chützle - chützlisch - kützlet | B1 |
| besar | to kiss | kisi | küssen | küsse - küssisch - küsst | A2 |
| pedir | to request / to ask for | peti | bitten - bat - gebeten | bitte - bittisch - bätte | A1 |
| obeceder | to obey | obei | gehorchen | folge - folgsch - gfolgt | B1 |
| presentar | to introduce | enkonduki | vorstellen - stellte vor - vorgestellt | voorstelle - stellsch voor - voorgstellt | A2, people |
| luchar / pelear | to fight - fought - fought | batali / lukti | kämpfen | kämpfe - kämpfsch - kämpft | A2 |
| querer decir - haber querido decir | to mean - meant - meant | voli diri / celi diri | meinen | mäine - mäinsch - gmäint | A2 |
| encontrarse a - haberse encontrado a | to meet - met - met | renkonti | treffen - traf - getroffen | träffe - triffsch - troffe | A1, when unplanned |
| encontrarse con - haberse encontrado con / reunirse con - haberse reunido con | to meet - met - met | renkonti | sich treffen - traf sich - sich getroffen | sich träffe - triffsch sich - sich troffe | A1, when planned |
| llamarse - haberse llamado | to be called - was called - been called | nomiĝi | heißen - hieß - geheißen | häisse - häissisch - ghäisse | A2 |
| tener razón - tenido razón | to be right - was right - been right | pravi | Recht haben - Recht hatte - Recht gehabt | Recht haa - haasch Recht - Recht ghaa | A2 |
| contar | to tell - told - told | rakonti | erzählen - - erzählt | verzelle - verzellsch - verzellt | A1 |
| tener éxito - tenido éxito | to succeed | sukcesi | erfolgreich sein - erfolgreich war - erfolgreich gewesen | erfolgriich sii - bisch erfolgriich - erfolgriich gsii | B1 |
| llorar | to cry - cried - cried | krii | weinen | brüele - brüelsch - brüelt | A1 |
| adivinar | to guess | diveni | raten - riet - geraten | rate - ratisch - grate | A2 |
| ser capaz - sido capaz | to be able - was able - been able | kapabli | in der Lage sein - war in der Lage - in der Lage gewesen | i de Laag sii - bisch i de Laag - i de Laag gsii | A2 |
| poner esfuerzo - puesto esfuerzo / hacer esfuerzo - haber hecho esfuerzo | to put effort - put effort - put effort | peni | Mühe geben - gab Mühe - Mühe gegeben | Müeh gee - gisch Müeh - Müeh geh | A2 |
| estar de buen humor | to be in a good mood - was in a good mood - been in a good mood | havi bonan humoron | in einer guten Laune sein - war in einer guten Laune - in einer guten Laune gewesen / guten Laune haben - hatte guten Laune - guten Laune ghabt | gueti Luune han - hasch gueti Luune - gueti Luune gha | A2 |
| estar de humor para hacer ... | to be in the mood to do ... - was in the mood to do ... - been in the mood to do ... | havi humoron por ... | in der Laune sein, ... zu tun - war in der Laune, ... zu tun - in der Laune gewesen, ... zu tun | i de Luune, zum ... mache sii - bisch i de Luune, zum ... mache - i de Luune, zum ... mache gsii | B1 |
| tener ganas de hacer ... - tenido ganas de hacer | to fancy to do ... - fancied to do ... - fancied to do ... | voli ... | Lust haben, ... zu tun - hatte Lust, ... zu tun - Lust ghabt, ... zu tun | Lust ha, zum ... mache - hasch Lust, zum ... mache - Lust gha, zum ... mache | A2 |
| reir | to laugh | ridi | lachen | lache - lachsch - glacht | A1 |
| bromear / estar de broma - haber estado de broma | to joke / to be kidding - was kidding - been kidding | ŝerci | scherzen | scherze | A1 |
| debatir / discutir | to discuss | diskuti | diskutieren - diskutierte - diskutiert | diskutiere - diskutiersch - diskutiert | A2 |
| cuidar | to look after | prizorgi | pflegen - pflegte/pflog - geflogen/geflegt | pflege - pflegsch - pflegt | A2 |
| servir | to serve | servi | servieren | serviere - serviersch - serviert | B1, e.g. food in restaurant |
| quejarse - haberse quejado | to complain | plendi | sich beschweren - - sich beschwert / beklagen - - beklagt | reklamiere - reklamiersch - reklamiert / sich beschwere - beschwersch dich - sich beschwert | A2 |
| sentarse juntos - haberse sentado juntos | to sit together - sat together - sat together | sidiĝi kune | beisammen sitzen - saß beisammen - beisammen gesessen | zämehöcke - zämehöckisch - zämeghöcket / zämesitze - sitzisch zäme - zämegsässe | A2 |
| hacer daño - haber hecho daño | to hurt - hurt - hurt | vundi | verletzten - - verletzt | verletzte - verletztisch - verletzt | A1 |
| pelearse por ... / discutir por ... | to argue about ... | argumenti pri ... | streiten über ... - über ... stritt - über ... gestritten | striite über ... - über ... striitisch - über ... gstriite | A2 |
| luchar | to fight - fought - fought | batali | kämpfen | chämpfe - chämpfsch - kämpft | A2 |
| pelearse | to have a fight - had a fight - had a fight | argumenti | kämpfen | chämpfe - chämpfsch - kämpft | A2 |
| prometer | to promise | promesi | versprechen  - versprach - versprochen | verspräche - versprichsch - versproche | A1 |
| convencer | to convince | konvinki | überzeugen - überzeugte - überzeugt | überzüüge - überzüügsch - überzüügt | A2 |
| ayudar | to help - helped - helped | helpi | helfen - half - geholfen | hälfe - hilfsch - ghulfe | A1 |
| portarse bien / haberse portado bien | to behave well | konduti bone | sich gut benehmen - benahm sich gut - sich gut benommen | sich guet benäh - benimmsch dich guet - mich guet begno | A2 |
| portarse mal / haberse portado mal | to behave badly | konduti malbone | sich schlecht benehmen - benahm sich schlecht - sich schlecht benommen | sich schlächt benäh - benimmsch dich schlächt - mich schlächt begno | A2 |
| sonreir | to smile | rideti | lächeln | lächle - lächlisch - glächlet | A2 |
| pasarlo bien - haberlo pasado bien / pasárselo bien - habérselo pasado bien | to have fun | amuziĝi | Spaß haben - hatte Spaß - spaß gehabt | Spass haa - haasch Spass - Spass ghaa | A2 |
| amenazar | to threaten | minaci | bedrohen - bedrohte - bedroht / drohen - - | bedrohe - bedrohsch - bedroht (+AKK) / drohe - drohsch - gdroht (+DAT) | A2 |
| reirse de alguien - haberse reido de alguien | to laugh at someone | ridaĉi ĉe iu | auslachen - lachte aus - ausgelacht | uuslache - lachsch uus - uusglacht | A2 |
| tener vergüenza - tenido vergüenza | to be ashamed - was ashamed - been ashamed | honti | sich schämen | sich schäme - schämsch dich - gschämt | A1 |
| hablar de tú |  |  | duzen | duze - duzisch - gduzet | A1, formal/informal |
| hablar de usted |  |  | siezen | siize - siizisch - gsiizet | A1, formal/informal |

### Nouns: Senses
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| sentido (M) | sense | senso | Sinn (M) | Sinn (M) | B1 |
| vista (F) | sight | vido / vidsenso / vidado | Sicht (N) | Sicht (N) | A1, sight |
| visión (F) | vision | vizio | Sicht (N) | Sicht (N) | A2, sight, a concrete thing that is seen |
| oído (M) | sound | aŭdo / aŭdsenso / aŭdado | Gehör (N) | Ghör (N) | A1, sound |
| sonido (M) | sound | sono | Geräusch (N) | Grüüsch (N) | A1, sound, a concrete thing that is heard |
| olfato (M) | smell | flaro / flarsenso / flarado | Geruch (M) | Gruch (M) | A2, smell |
| olor (M) | smell | odoro | Geruch (M) | Gruch (M) | A1, smell, a concrete thing that is smelled |
| gusto (M) | taste | gusto / gustosenso / gustumado | Geschmack (M) | Gschmack (M) | A2, taste |
| sabor (M) | taste | gusto | Geschmack (M) | Gschmack (M) | A1, taste, a concrete thing that is tasted |
| tacto (M) | touch | tuŝo / tuŝsenso / tuŝado | Gefühl (N) | Gfühl (N) | A2, touch |
| tacto (M) | touch | tuŝo | Gefühl (N) | Gfühl (N) | A1, touch, a concrete thing that is touched |

### Verbs: Senses
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| ver - visto | to see - saw - seen | vidi | sehen - sah - gesehen | gsee - gseesch - gsee | A1 |
| observar | to observe | observi | beobachten - beobachtete - beobachtet | beobachte - beobachtisch - beobachtet | B1 |
| oir | to hear - heard - heard | aŭdi | hören | hööre - höörsch - ghöört | A1 |
| mirar | to watch | rigardi | ansehen - sah an - angesehen / schauen | aaluege - luegsch aa - aagluegt / luege - luegsch - gluegt  | A1 |
| percibir | to perceive / to sense | percepti | spüren | spüüre - spüürsch - gspüürt | B1 |
| verse - haberse visto / aparentar / tener aspecto de | to look like | aspekti | aussehen - sah aus - ausgesehen | uusgsee - gseesch uus - uusgsee | A2 |
| notar / darse cuenta - haberse dado cuenta | to notice | rimarki | bemerken - - bemerkt | bemerke - bemerksch - bemerkt | A2 |
| parecer | to seem | ŝajni / aspekti | scheinen - schien - geschienen | schiine - schiinsch - gschune | A1 |
| pensar | to think - thought - thought | pensi | denken - dachte - gedacht | dänke - dänksch - dänkt | A1 |
| creer | to believe | kredi | glauben | glaube - glaubsch - glaubt | A1 |
| comprender | to understand - understood - understood | kompreni | verstehen - verstand - verstanden | verstaa - verstaasch - verstande | A1 |
| saber | to know - knew - known | scii | wissen - wusste - gewusst | wüsse - wäisch - gwüsst | A1, fact |
| sentir | to feel - felt - felt / to sense | senti | fühlen | fühle - fühlsch - gfühlt | A2 |
| saber | to taste | gustigi | schmecken | schmöcke - schmöcksch - gschmöckt | A2, a thing tastes ... |
| oler | to smell | odoras | riehen - roh - gerohen | schmöcke - schmöcksch - gschmöckt | A2, a thing smells ... |
| saborear | to taste | gustumi | schmecken | schmöcke - schmöcksch - gschmöckt | A2, a person tastes a thing |
| oler | to smell | flari | riehen - roh - gerohen | schmöcke - schmöcksch - gschmöckt | A2, a person smells a thing |

### Nouns: Miscellaneous
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| agujero (M) | hole | truo | Loch (N) | Loch (N) | A1 |
| hoyo (M) | hole | truo | Loch (N) | Loch (N) | B1 |
| raja (F) | slit | krado | Schlitz (M) | Schlitz (M) | A2 |
| hueco (M) | gap | breĉo | Spalt (M) | Spalt (M) | A2 |
| rotura (F) | break | rompaĵo | Riss (M) | Riss (M) | A2 |
| doblez (M) / pliegue (M) | fold | faldo | Falte (F) | Falte (F) | B1 |
| principio (M) / comienzo (M) | beginning | komenco | Anfang (M) | Aafang (M) | A2 |
| final (M) / fin (M) | end | fino | Ende (N) | Ändi (N) | A2 |
| vez (F) | time | foje | Mal (N) | Mal (N) | A1 |
| forma (F) | way | vojo | Weg (M) | Wäg (M) | A1 |
| opuesto (M)  | opposite | kontraŭo | Gegenteil (N) | Gägetäil (N) | A1 |

### Adjectives: Miscellaneous
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| simple | simple | simpla | einfach | äifach | A1, difficulty |
| complicado - complicada | complicated | malsimpla / komplika | kompliziert | kompliziert | A1, difficulty |
| complejo - compleja | complex | kompleksa | komplex | komplex | A1, difficulty |
| fácil | easy | facila | einfach | aifach | A1, difficulty |
| difícil | hard | malfacila | schwer / schwerig | schwer / schwerig | A1, difficulty |
| incorrecto - incorrecta | wrong / incorrect | malĝusta / malkorekta | falsch | falsch | A1, correctness |
| correcto - correcta | right / correct | ĝusta / korekta | richtig | richtig | A1, correctness |
| rápido - rápida | fast | rapida | schnell | schnäll | A1, speed |
| lento - lenta | slow | malrapida | langsam | langsam | A1, speed |
| seco - seca | dry | seka | trocken | troche | A2, wetness |
| húmedo - húmeda | damp | malseka | feucht | füecht | A1, wetness |
| mojado - mojada | wet | malseka | nass | nass | A1, wetness |
| fluido - fluida | fluent | flua | fließend | flüüssend | B1, noise |
| silencioso - silenciosa | quiet / silent | kvieta / silenta | leise / still | liislig / still | A2, noise |
| ruidoso - ruidosa | noisy | laŭta / ruida | laut | luut | A2, noise |
| diferente | different | malsama | verschieden / anders | verschiede / andersch | A1, equality |
| el mismo - la misma | same | egala | gleich | gliich | A1, equality |
| igual | equal | egala | gleich | gliich | A1, equality |
| parecido - parecida / similar | similar | simila | ähnlich | ähnlich | A1, equality |
| común | common | komuna | üblig | üblig | A1, common |
| típico / típica | typical | tipa | typisch | typisch | A2, common |
| normal | normal | normala | normal | normal | A1, common |
| raro - rara | strange | stranga | komisch | komisch | A2, common |
| excepcional | rare | malofta | selten | sälte | B1, common |
| posible | possible | ebla | möglich | möglich | A2, possibility |
| imposible | impossible | neebla | unmöglich | unmöglich | A2, possibility |
| listo - lista | ready | preta | bereit / fertig | parat | A2, readiness |
| preparado - preparada | prepared | preta | vorbereit | vorbereitet | A2, readiness |
| acabado - acabada | over / finished | finita | fertig | fertig | A2, readiness |
| preferido - preferida | preferred | preferita | bevorzugt | bevorzugt | A2, relevance |
| obligatorio - obligatoria | obligatory / mandatory | deviga | obligatorisch | obligatorisch | A2, relevance |
| importante | important | grava | wichtig | wichtig | A1, relevance |
| urgente | urgent | urĝa | dringend | dringend | A1, relevance |
| necesario - necesaria | necessary | necesa | notwendig | notwändig | B1, relevance |
| seguro - segura | sure | certe | sicher | sicher | A1, probability |
| probable | probable | verŝajna | wahrscheinlich | wahrschiinli / wahrschiinlich | A1, probability |
| seguro - segura | safe | senriska | sicher | sicher | A1, safeness |
| inseguro - insegura | unsafe | riska | unsicher | unsicher | A1, safeness |
| gran | great | granda | groß | grooss | A1, great |
| quieto - quieta | still | senmova | still | still | A2, still |
| aleatorio - aleatoria | random | hazarda | zufällig | zuefällig | A2, random |
| débil | weak | malforta / debila | schwach | schwach | A1, strength |
| fuerte | strong | forta | stark | starch | A1, strength |
| lejos | far | malproksima | weit | wiit | A2, distance |
| cerca | close | proksima | nah | näch | A2, distance |
| actual | current | nuna | aktuell | aktuell | A1, currentness |
| real | actual | vera | echt | ächt | A1, actual/real |
| real | real | vera | echt | ächt | A1, actual/real |
| peludo - peluda | hairy | harkovrita | haarig | haarig | B1, hair |
| cierto - cierta / verdadero - verdadera | true | vera | wahr | wahr | A1, true/false |
| falso - falsa | false | malvera | falsch | falsch | A1, true/false |
| alto - alta | high | alta | hoch | hoch | B1, height |
| bajo - baja | low | malalta | tief / niedrig | tüüf | B1, height |
| profundo - profunda | deep | profunda | tief | tüüf | B1, height |
| molesto - molesta | annoying | ĝena / ĉagrena | ärgerlich | ärgerlich | B1, interest |
| interesante | interesting | interesa | interessant | interessant | A1, interest |
| aburrido - aburrida | boring | teda / enua | langweilig | langwiilig | A1, interest |
| emocionante | exciting | ekscita | spannend | spannend | A2, interest |
| divertido - divertida | fun | amuza | lustig | lustig | A1, interest |
| puro - pura | pure | pura | rein | rain | B1, pureness |
| mezclado - mezclada | mixed | miksita | gemischt | gmischt | B1, pureness |
| contaminado - contaminada | contaminated / polluted | polua / malpura | verschmutzt | verschmutzt / dräckig | B1, pureness |
| sólido - sólida | solid | solida | solid | solid / fest | B1, solid/liquid/gaseous |
| líquido - líquida | liquid | fluida | flüssig | flüssig | B1, solid/liquid/gaseous |
| gaseoso - gaseosa | gaseous | gasa / gasforma | gasförmig | gasförmig | B1, solid/liquid/gaseous |
| oscuro - oscura | dark | malluma | dunkel | dunkel | A1, clearness |
| claro - clara | clear | klara / hela | hell | hell | A1, clearness |
| principal | main | ĉefa | haupt | haupt | A1, main |
| conocido - conocida | known | konata | bekannt | bekannt | A2, known |
| desconocido - desconocida | unknown | nekonata | unbekannt | unbekannt | A2, known |
| disponible | available | disponebla | verfügbar | verfüegbar | A2, avaiability |
| no disponible | unavailable | maldisponebla | nicht verfügbar | nöd verfüegbar | A2, avaiability |
| favorito - favorita | favorite | plej ŝatata | lieblings | lieblings | A1, favorite |
| definitivo - definitiva | ultimate | kulmina | ultimativ / definitiv | ultimativ / definitiv | B1, final |
| definitivo - definitiva | final | fina | abschließend | abschlüsend / s'letste | A2, final |
| digno - digna | worthy | inda / digna | würdig | würdig | B1, value |
| valioso | valuable | valora | wertvoll | wertvoll | B1, value |
| inestimable | invaluable | netaksebla | unschätzbar / unbezahlbar | unschätzbar / unbezahlbar | B1, value |
| horripilante | creepy | timiga | gruselig | gruselig | B1, scary |
| de miedo | scary | timiga | unheimlich | unhäimlich | B1, scary |
| ridículo - ridícula | ridiculous | ridinda | lächerlich | lächerlich | B1, absurd |
| absurdo - absurda | absurd | absurda / sensenca | absurd | absurd | B1, absurd |
| gracioso - graciosa | funny | amuza | komisch | komisch | B1, funny |
| permitido - permitida | allowed | permesita | erlaubt | erlaubt | A1, allowed |
| prohibido - prohibida | forbidden / prohibited | malpermesita | verboten | verbote | A1, allowed |
| perdido - perdida | lost | perdita | verloren | verloren | A1, lost+found |
| encontrado - encontrada | found | trovita | gefunden | gefunden | A2, lost+found |
| entero - entera | whole | tuta | ganz | ganz | A1, completeness |
| útil | useful | utila | nützlich | nützlich / bruuchbar | A1, completeness |
| inútil | useless | neutila | nutzlos | nutzlos | A1, completeness |

### Verbs: Miscellaneous
| Español | English | Esperanto | Deutsch | Zuritüütsch | notes |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ | -- |
| crecer | to grow - grew - grown | kreski | wachsen | wachse - wachsisch - gwachse | A2 |
| esperar | to wait | atendi | warten - wartete - gewartet | warte - wartisch - gwartet | A1 |
| comenzar / empezar | to start / to begin - began - begun | komenci | anfangen - fing an - angefangen / beginnen - begann - begonnen | aafange - fangsch aa - aagfange | A1 |
| parar | to stop - stopped - stopped | halti | aufhören - hörte auf - aufgehört | uufhööre - höörsch uuf - uufghöört | A1 |
| significar | to mean - meant - meant | signifi | bedeuten - bedeutete - bedeutet | bedüüte - bedüütisch - bedüütet | A1 |
| probar (a saltar) | to try to (jump) - tried to (jump) - tried to (jump) | provi (salti) | zu (springen) versuchen | z (springe) probiere - z (springe) probiersch - z (springe) probiert | A1 |
| intentar (saltar) | to try and (jump) - tried and (jumped) - tried and (jumped) / to attempt to (jump) | klopodi (salti) | zu (springen) versuchen | z (springe) probiere - z (springe) probiersch - z (springe) probiert | A2 |
| permitir | to let - let - let | lasi | lassen - ließ - gelassen | laa la - laasch la - la glaa (ich laa dich la singe) | A1 |
| encajar | to fit - fitted - fitted / to suit | taŭgi | passen | passe - passisch - passt | A2 |
| pertenecer | to belong | aparteni | gehören - - gehört | ghöre - ghörsch - ghört | A2 |
| aparecer | to appear | aperi | erscheinen - erschien - erschienen | erschiine - erschiinsch - erschune | A2 |
| pasar tiempo | to spend time - spent time - spent time | pasigi tempon | Zeit verbringen - Zeit verbrachte - Zeit verbracht | Ziit verbringe - du verbringsch Ziit - Ziit verbracht | A1, a person spends time |
|  | to like | ŝati | mögen - mochte - gemocht / (wenn Verb, "gerne / gern", z.B.: ich springe gerne / ich springe gern) | gern (Verb) / gern haa (Objekt) - gern haasch (Objekt) - (Objekt) gern ghaa / (möge - magsch - möge) | A1 |
| gustar (a alguien) | to please | plaĉi | gefallen - gefiel - gefallen | gfale - gfalsch - gfale | A2 |
| caer | to fall - fell - fallen | fali | fallen - fiel - gefallen | gheihe - gheihsch - gheit | A2 |
| pasar | to pass | pasigi | vergehen - verging - vergangen | vergah -  - vergange | A2, time passes |
| continuar / seguir | to continue | daŭrigi | weitermachen - machte weiter - weitergemacht | wiitermache - machsch wiiter - wiitergmacht | A2 |
| participar | to participate | partopreni | teilnehmen - nahm teil - teilgenommen | teilnäh - nimmsch teil - teilgno | A2 |
| salirle bien a alguien - haberle salido bien a alguien | to work out for someone | funkcii por iu | gelingen ihm/ihr - gelang ihm/ihr - ihm/ihr gelungen | im/ire glinge -  - im/ire glunge (3. glingt im) | B1 |
| golpear | to hit - hit - hit | bati / frapi | schlagen - schlug - geschlagen | schlaa - schlaasch - gschlage | A2 |
| deshacerse de - haberse deshecho de | to get rid of - got rid of - gotten rid of | forigi | loswerden | loswerde - wirsch los - losworde (sii, nöd haa) | B1 |
| cambiar / alterar | to change / to alter | ŝanĝi | ändern | ändere - änderisch - gänderet | A2 |
| cesar / parar de | to cease to / to stop - stopped - stopped | ĉesi | aufhören - hörte auf - aufgehört | uufhöre - hörsch uuf - uufghört | B1, to stop doing something |
| parar | to stop - stopped - stopped | halti | stoppen - stoppte - gestoppt | stoppe - stoppsch - gstoppt | B1, to stop something e.g. something that is slipping |
| escuchar | to listen | aŭskulti | zuhören - hörte zu - zugehört | lose - losisch - gloset | A1, something |
| escuchar | to listen | aŭskulti | zuhören - hörte zu - zugehört | zuelose - losisch zue - zuegloset | A1, someone |
| separar | to separate | apartigi | trennen | träne - tränsch - tränt | A2 |
| separar | to pull apart | disigi | auseinander ziehen - zog auseinander - auseinander gezogen | uusenand zieh - ziesch uusenand - uusenand zoge | A2 |
| tener cuidado - tenido cuidado | to be careful | atenti | vorsichtig sein - war vorsichtig - vorsichtig gewesen | vorsichtig sii - bisch vorsichtig - vorsichtig gsii | B1 |
| perseguir | to chase | ĉasi | jagen | jage - jagsch - gjagt | B1 |
| atrapar | to catch | kapti | fangen - fing - | gfange - fangsch - gfange | A2 |
| aprovechar | to take advantage - took advantage - taken advantage | eluzi | ausnutzen - nutzte aus - ausgenutzt | uusnutze - nutztisch uus - uusgnutzt | A2 |

End of file
