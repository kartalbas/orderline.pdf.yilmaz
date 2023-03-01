#!/bin/bash

# lösche alle unwichtige Dateien
find ~/orderline.pdf.yilmaz/ -type f -regextype posix-extended -regex '^.*[0-9a-fA-F]{32}\.(xls|pdf)' -exec rm {} \;

# markiere alles für commit
git add --all

# commit alle Rechnungen
git commit -m "Rechnungen bis `date +'%d.%m.%Y %H:%M:%S'`"

# push alle Rechnungen zu Github
git push

