#!/bin/sh

printf "%s" "$LICENSE_KEY" > ope/licensekey.txt

sed -i 's/@@/\n/g' ope/licensekey.txt
ope/bin/dita -f pdf-css-html5 -i sample/talking-cricle.ditamap -o sample/out/pdf-css-html5
ope/bin/dita -f webhelp-responsive -i sample/talking-cricle.ditamap -o sample/out/webhelp-responsive