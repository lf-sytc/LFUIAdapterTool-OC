#!/bin/bash


POD_SPECS_HTTP="https://github.com/lf-sytc/LFSpecs"
POD_SPECS_NAME="LFSpecs"

if [ ! -n "$1" ]
then
pod lib lint --sources="$POD_SPECS_HTTP,https://github.com/CocoaPods/Specs"  --clean --private --allow-warnings

pod spec lint --sources="$POD_SPECS_HTTP,https://github.com/CocoaPods/Specs"  --clean --private --allow-warnings --verbose

pod repo push $POD_SPECS_NAME --private --allow-warnings
elif [ $1 == 0 ]
then
  pod lib lint --sources="$POD_SPECS_HTTP,https://github.com/CocoaPods/Specs" --clean --private --allow-warnings
elif [ $1 == 1 ]
then
  pod spec lint --sources="$POD_SPECS_HTTP,https://github.com/CocoaPods/Specs" --clean --private --allow-warnings --verbose
elif [ $1 == 2 ]
then
    pod repo push $POD_SPECS_NAME --private --allow-warnings
else
    echo '参数有误'
fi
