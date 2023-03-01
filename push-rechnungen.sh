#!/bin/bash

REPO_PATH="/home/yfadmin/orderline.pdf.yilmaz"

# lösche alle unwichtige Dateien
find "$REPO_PATH" -type f -regextype posix-extended -regex '^.*[0-9a-fA-F]{32}\.(xls|pdf)' -exec rm {} \;

# markiere alles für commit
git -C "$REPO_PATH" add --all

# commit alle Rechnungen
git -C "$REPO_PATH" commit -m "Rechnungen bis `date +'%d.%m.%Y %H:%M:%S'`"

# push alle Rechnungen zu Github
git push

