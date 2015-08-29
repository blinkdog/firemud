# firemud.litcoffee
FireMUD is a Multi-User Dungeon (MUD) client for Node.js and Mozilla Firefox.

## Source File Constants
This section describes some constants that you can modify. For example,
the default port (if the user does not provide one on the command line)
will be the number specified here.

    DEFAULT_PORT = 8080

## Command-Line Arguments
Really, there isn't a whole lot to configure about FireMUD.
The only thing that comes to mind is the (most likely local) port
on which you will connect from Mozilla Firefox.

We'll use the library `yargs` to process the command line arguments.
It's got a nice fluent API, so this code is almost legible without
comments at all.

    {argv} = require("yargs")
      .usage("Usage: $0 -port [num]")
      .describe("port", "Port number for web server")
      .help("h")
      .alias("h", "help")

The object `argv` now contains the command line parameters, which may
include an optional `port`. If the user didn't specify a port, we will
substitute a default port.

    argv.port ?= DEFAULT_PORT

## FireMUD Service
The FireMUD client can be thought of as two pieces that work together
to provide a MUD client experience. The Node.js back end handles connecting
to MUDs, speaking the venerable TELNET protocol, and passing the messages
along to the browser. The HTML5 front end formats the incoming messages
and displays them in a modern interface.

    server = require "./server"

It is not strictly required (but certainly recommended) that you use
a standards-compliant browser that supports HTML 5. The author of FireMUD
recommends Mozilla Firefox.

## Main Entry Point
This is where index.js starts FireMUD. Having configured the command-line
arguments earlier, we can now create our `express` based server, and tell
it to begin listening on the port we find in `argv.port`

    exports.run = ->
      firemud = server.create()
      firemud.listen argv.port
      process.stdout.write "FireMUD listening on port #{argv.port}.\n"
      process.stdout.write "Try: http://localhost:8080/\n"

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
