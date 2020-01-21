#!/usr/bin/awk -f

{
    text = $0;
    split(text, words, /[^a-zA-Z]+/);
    for (i=1; i<=length(words); i++) {
        res = res toupper(substr(words[i],1,1)) tolower(substr(words[i],2));
    }
    print res
}
