
```bash
#!/bin/bash
fileName=~/.bashrc
searchString='bash_aliases'

writeInFile {
    echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
    echo '. ~/.bash_aliases' >> $fileName
    echo 'fi' >> $fileName
    cat $fileName
}

if [ -a $fileName ]; then
    if [ ! -n "$(grep $searchString $fileName)" ]; then
        writeInFile
    fi
else
    touch $fileName
    writeInFile
    cat $fileName
fi
```
