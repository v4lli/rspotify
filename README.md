rspotify - a UNIX remote to Spotify
====================

The shell script `rspotify` basically uses netcat to communicate with a remote host running a compatible server.

Some may call this a dirty hack. I kept the client clean and compliant though (as far as you can say that with the netcat stuff, lol).

## Functionality
It doesn't use mutch of a protocol, except maybe TCP if you count that. Binary operations like skipping a track are done in a *binary* fashion, i.e. connecting to the respective TCP port skips to the next song.

The only real data returned is the current track, artist and album. It's formating is left to the server.

## Installation
Actually there isn't much installation required.

### On the client
...you need nothing but the rspotify script itself (and Linux, *BSD, Mac OS...). Copy it somewhere you like (preferably somewhere in your $PATH) and execute it.

It takes only two arguments. The first one is the IP of the server and the second one is the base port configured on the server (by default 21337. *What else.*).

**Example**: `./rspotify 10.0.0.144 21337`

You will be asked if you want to save the two parameters so you can just use `rspotify` in the future. If you agree, those will be written to `~/.rspotifyrc`.

### On the server

... well, it's a little less *free* here. Until now, this repository only contains a Mac OS version. If you have a somewhat recent version of Mac OS X and Spotify installted, just navigate to the `server/` directory  and execute `./rspotify_server`. Oh, and you need to have `tmux` installed for this "hacky" version of a "server". [Get it from Brew](http://mxcl.github.com/homebrew/), for example: `brew install tmux`

## Props
To @younix for the idea, to Conceited Software for providing parts of the *Apple-Script-Spotify-Interface* and my unbeatable commitment to procrastination.

My actual [home is inside this gitweb](http://unimplemented.org/gitweb/), but please feel free to send any pull requests here. They're very welcome and will be noticed.
