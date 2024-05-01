#!/bin/bash

cd "$(dirname "$0")";

echo "Beginning Packaging..."

if [ ! -d "out" ]; then
	mkdir "out";
fi

cd "out";

if [ -d "[CP] Chocolatier Continued" ]; then
	echo "> Removing Existing Release Directory...";
	rm -r "[CP] Chocolatier Continued";
fi

cp -R ../"[CP] Chocolatier Continued" ./;

cp ../LICENSE ../README.md ../CREDITS.md ./\[CP*/;

if [ -f "Chocolatier Continued.zip" ]; then
	echo "> Removing Existing Release Archive...";
	rm "Chocolatier Continued.zip";
fi

zip -q -0 -r "Chocolatier Continued.zip" "[CP] Chocolatier Continued"

echo "Packaging Complete!"
