# pickemschedules

![Alt text](pickem.png?raw=true "nfl pickem schedule editor")

phppickem (nfl pickem game) schedule editor and current schedule table dump

the game source (end of life, no longer maintained by the author) can be found at:

https://github.com/rothkj1022/phppickem

more about the game:

http://www.phppickem.org/

the database represents the 2018 game schedule as mysql dump file.

just remove the prior season schedule table, and then run the dump against your database.

this is a quick put together tool for creating such a schedule manually from i.e. the espn schedules page, which can be found here:

http://www.espn.com/nfl/schedule/_/week/1/seasontype/2

requirements:

composer: https://getcomposer.org/
nodejs: https://nodejs.org/en/
a web server (one that can serve static html and php files)
a database (i am using mariadb)

to install:

cd /path/to/pickemschedules/libs
composer update
cd /path/to/pickemschedules/www/scripts
npm install
edit /path/to/pickemschedules/conf/config.json to fit your needs.

then visit the tool with your webbrowser.
