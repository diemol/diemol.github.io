#!/bin/bash

echo -e "\033[0;32mDeleting Hugo previously generated directories...\033[0m"
rm -rf docs

echo -e "\033[0;32mGenerating Hugo site...\033[0m"
hugo --destination docs

echo -e "\033[0;32mCopying CNAME...\033[0m"
cp CNAME docs

echo -e "\033[0;32mDone building site!\033[0m"
