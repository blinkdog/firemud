# server.litcoffee
server creates and configures the FireMUD service.

## FireMUD Service
The FireMUD service is an Express web service that provides a HTML 5
client for playing Multi-User Dungeons (MUDs).

    express = require "express"

This method actually creates and configures the FireMUD service.
Express provides all the boilerplate stuff for responding to HTTP
requests. The rest is everything that we provide.

    exports.create = (port) ->
      app = express()

Here we're just providing a `Hello, world!` example. This is more
for proof of concept than anything.

      app.get "/", (req, res, next) ->
        res.status(200).send("Hello, FireMUD!")
        next()
        
We return the service to the caller, so they can spin up an HTTP
(or HTTPS) server to listen for requests.

      return app

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
