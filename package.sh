#!/bin/bash

cd "$(dirname "$0")";

echo "Beginning Packaging..."

if [ ! -d "out" ]; then
	mkdir "out";
fi

cd "out";

if [ -d "Chocolatier Continued" ]; then
	echo "> Removing Existing Release Directory...";
	rm -r "Chocolatier Continued";
fi

mkdir "Chocolatier Continued";

cd "Chocolatier Continued";

cp -R ../../\[* ./;

cp ../../LICENSE ../../README.md ./\[CP*/;
cp ../../LICENSE ../../README.md ./\[PFM*/;

cd \[CP*/assets;

rm *.psd

cd ../../../;

if [ -f "Chocolatier Continued.zip" ]; then
	echo "> Removing Existing Release Archive...";
	rm "Chocolatier Continued.zip";
fi

zip -q -0 -r "Chocolatier Continued.zip" "Chocolatier Continued"

echo "Packaging Complete!"
