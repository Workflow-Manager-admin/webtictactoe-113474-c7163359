#!/bin/bash
cd /home/kavia/workspace/code-generation/webtictactoe-113474-c7163359/webtictactoe
npx eslint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

