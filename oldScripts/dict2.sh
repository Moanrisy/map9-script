#! /bin/bash
for dictionary in edict2 radkfile kradfile kanjidic examples; do
curl -s ftp://ftp.monash.edu.au/pub/nihongo/$dictionary.gz | gunzip | iconv -f eucjp -t utf8 > $dictionary.utf
done
