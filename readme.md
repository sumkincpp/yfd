Yandex.Fotki Downloaders
========================

This is a collection of scripts that allows to download photos from albums hoste at [Yandex.Fotki](Yandex.Fotki) .
Photos are downloaded in Original Size.

The major part of this scripts are taken from [Yandex.Club](http://clubs.ya.ru/fotki/posts.xml?tag=1223985)

Python download.py
------------------

Allows to download full albums or full photo archive from Yandex.Fotki.

Main script was published [here](http://clubs.ya.ru/fotki/replies.xml?item_no=51820), added
some fixes to support unicode.

Tested and working on python 2.7.1 @ Fedora 16

### Usage

For help

    python download.py -h

Downloading albums from user hello (interactive)

    python download.py hello

Downloading album by id from user hello

    python download.py hello -a 4632

Bash down.sh
------------------

Allows to download all photos for selected user

Go to down.sh script.
On second line write down correct username.
Run it.
