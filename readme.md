# Adam learns Lua

# Why did you choose this subject?
I wanted to learn a new programming language, preferably one that is not so popular!
# How were you first made aware of it?
In Blizzard Entertainment's World of Warcraft (you may have heard of it?), all the third-party addons are built using Lua. As a hero of Azeroth I loved creating my own addons, which required some knowledge of creating and editing Lua files. Back then I had no idea what I was doing, and never bothered to really learn the language that I was so hastily copy/pasting.

Sidenote: if you're remotely familiar with WoW, you can checkout what I made here http://www.wowinterface.com/forums/showthread.php?t=50430

# What problem does it solve?
From the tutorialpoint website (https://www.tutorialspoint.com/lua/lua_quick_guide.htm):

"It was designed from the beginning to be a software that can be integrated with the code written in C and other conventional languages. This integration brings many benefits."

# How does it solve the problem (conceptually)?
"It does not try to do what C can already do but aims at offering what C is not good at: a good distance from the hardware, dynamic structures, no redundancies, ease of testing and debugging. For this, Lua has a safe environment, automatic memory management, and good facilities for handling strings and other kinds of data with dynamic size."
# Why does one use it?
Game Programming, Scripting in standalone apps, scripting in web
# What are the alternatives?
C
# What is it similar to, if anything?
C
# What is the history of this technology?
It started as an in-house project in 1993 by Roberto Ierusalimschy, Luiz Henrique de Figueiredo, and Waldemar Celes.
# Who is maintaining it?
Lua is designed, implemented, and maintained by a team at PUC-Rio, the Pontifical Catholic University of Rio de Janeiro in Brazil.
# What is your opinion on the technology after having built something with it?
Syntax seems very similar to ruby, in that they both require less punctuation and curly brackets than javascript. Also, loops have easier-to-use syntax i.e. (for init,max/min value, increment). 

However, Arrays in Lua seem different than in Javascript and Ruby. For starters, the first value in an array is accessed by using the index "1" instead of "0". 
# What are the biggest conceptual hurdles (if any) you encountered when researching this?
-How to display my lua code in the browser
-How to work with key: value pairs in Lua
-How to add a SQL database
# What resources do you recommend for interested students?
https://www.lua.org
# What article or forum was most helpful to you in learning this?
https://www.tutorialspoint.com/lua/lua_quick_guide.htm
# What are 3 interview questions one might be asked about this technology?
-What are the popular uses of Lua?
-If you want to access the first value in an array coded in Lua, how would you do that?
-Name some popular libraries for Lua


# Installation

1) To build/test Lua in the Mac OS X, use the following command:

$ curl -R -O http://www.lua.org/ftp/lua-5.2.3.tar.gz
$ tar zxf lua-5.2.3.tar.gz
$ cd lua-5.2.3
$ make macosx test

If you encounter errors running the above commands, see this guide:
https://www.tutorialspoint.com/lua/lua_environment.htm 

2) Then get luarocks, and use it to install orbit:

$ sudo apt-get install luarocks
$ luarocks install orbit

If you encounter errors running the above commands, see this guide: http://keplerproject.github.io/orbit/index.html

3) Clone down this repo, and cd into the root directory. Then run:

$ orbit songs.lua

4) Navigate to localhost:8080, and there's my first silly attempt at a lua app.
