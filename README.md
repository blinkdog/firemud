# firemud
MUD client for Node.js and Mozilla Firefox

## Install
FireMUD depends on [Node](https://nodejs.org/download/), so install
that first. After doing that, installing FireMUD is easy:

    npm install firemud

## Usage
FireMUD is a Multi-User Dungeon (MUD) client for your web-browser.
First you start FireMUD up:

    firemud

Then you point your web browser at the URI given by FireMUD:

    firefox --new-tab http://localhost:8080/

Then use your web browser to play to MUDs.

## Development
These are the steps you need to set up a development environment.

    git clone https://github.com/blinkdog/firemud
    cd firemud
    ./configure
    npm install

The Literate CoffeeScript source files are located in `src/main/coffee`.
When you are ready to rebuild the project, simply type:

    cake rebuild

## License
Copyright 2015 Patrick Meade.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/)
