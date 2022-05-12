#!/bin/bash

echo -e "\033[0;32mDeleting Hugo previously generated directories...\033[0m"
rm -rf public

echo -e "\033[0;32mGenerating Hugo site...\033[0m"
hugo

echo -e "\033[0;32mDone building site!\033[0m"
