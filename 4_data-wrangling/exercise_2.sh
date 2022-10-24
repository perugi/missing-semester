#!/usr/bin/env bash

echo "Number of words ending with 's and having at least three a characters:"
cat /usr/share/dict/words | tr [:upper:] [:lower:] | sed -E "/^(\w+)'s$/d" | sed -nE "/^(\w*a\w*a\w*a\w*)$/p" | wc -l

echo ""
echo "Three most common endings of above words:"
cat /usr/share/dict/words | tr [:upper:] [:lower:] | sed -E "/^(\w+)'s$/d" | sed -nE "/^(\w*a\w*a\w*a\w*)$/p" | sed -E "s/\w*(\w{2})/\1/" | sort | uniq -c | sort -nk1,1 | tail -n3

echo ""
echo "Number of endings of above words."
cat /usr/share/dict/words | tr [:upper:] [:lower:] | sed -E "/^(\w+)'s$/d" | sed -nE "/^(\w*a\w*a\w*a\w*)$/p" | sed -E "s/\w*(\w{2})/\1/" | sort | uniq -c | wc -l

