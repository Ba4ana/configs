
```bash
#!/bin/bash
fileName=~/.bashrc
searchString='bash_aliases'

if [ -a $fileName ]; then
    echo Файл $fileName найден.
    if [ ! -n "$(grep $searchString $fileName)" ]; then
        echo Строка $searchString не найдена в $fileName.
        echo Добавляем условие в $fileName
        echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
        echo '. ~/.bash_aliases' >> $fileName
        echo 'fi' >> $fileName
        echo Условие успешно добавлено
        cat $fileName
    else
        echo Условие найдено.
    fi
else
    echo Файл $fileName не найден.
    echo Создаем файл.
    touch $fileName
    echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
    echo '. ~/.bash_aliases' >> $fileName
    echo 'fi' >> $fileName
    echo Файл успешно создан.
    cat $fileName
fi
```
