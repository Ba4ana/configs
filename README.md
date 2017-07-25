
```bash
#!/bin/bash
fileName=~/.bashrc
searchString='bash_aliases'

if [ -a $fileName ]; then
    if [ ! -n "$(grep $searchString $fileName)" ]; then
        echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
        echo '. ~/.bash_aliases' >> $fileName
        echo 'fi' >> $fileName
        cat $fileName
    fi
else
    touch $fileName
    echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
    echo '. ~/.bash_aliases' >> $fileName
    echo 'fi' >> $fileName
    cat $fileName
fi
```
