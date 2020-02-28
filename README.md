# ffjoe
A mediafile splitter

Sometimes I need to split a mediafile (mainly audio) in parts without loosing the quality: ffmpeg is a wonderful tool to do that, however its command line interface is complex and hard to remember.
For this reason I wrote a simple script in JOE language (https://github.com/mbertacca/joe) in order to simplify the ffmpeg usage. Acyually the interface is still using command line, however the use is straightforward.
If you run the script without argument you get the following help:

`Usage: joe C:\Users\marco\bin\ffjoe.joe <tag> [ ... ]`  
`Available tags:`  
`   @setArtist`  
`   @split`  
`   @help`  
`   @setAlbum`   

In order to split a file, you need to specify the tag @split followed by the name of the mediafile to split and a list of couples <name> <starting point>.

This is an example about how to split a media file in 4 parts:

`ffjoe @split "Schubert String Quartet No 14.mp3" "01 - Allegro" 00:00 "02 - Andante con moto" 11:26 "03 - Scherzo. Allegro molto" 24:50 "04 - Presto" 28:58`

You can also specify a couple of metadata, i.e. artist through the tag @setArtist and album through the tag @setArtist.

This is the previous example with metadata:

`ffjoe @setArtist "Borromeo String Quartet" @setAlbum "String Quartet No. 14 in D minor" @split "Schubert String Quartet No 14.mp3" "01 - Allegro" 00:00 "02 - Andante con moto" 11:26 "03 - Scherzo. Allegro molto" 24:50 "04 - Presto" 28:58`

In order to use it you need to have both Java and ffmpeg installed on your computer. I added a shell script for Unix/Linux and a command script for Windows in order to simplify the usage. All the file must be in the same directory.

