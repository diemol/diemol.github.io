#!/bin/bash

echo -e "\033[0;32mDeleting Hugo previously generated directories...\033[0m"
rm -rf diemol/public

echo -e "\033[0;32mGenerating Hugo site...\033[0m"
cd diemol && hugo && cd ..

echo -e "\033[0;32mRefreshing contents of the published directory...\033[0m"
rm -rf $(ls diemol/public)
mv diemol/public/* .

echo -e "\033[0;32mDone building site!\033[0m"
