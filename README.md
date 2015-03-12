# Mock Slam API

This is a mock version of [SlamAPI](https://github.com/ericmeyer/SlamAPI) implemented in Sinatra.

## Purpose

Fast development!

More specifically, it is useful for:

 * Mocking out an endpoint before it exists.
 * Quickly changing an endpoint's response while your are actively developing a new feature against the endpoint.
 * Eventually, high level testing that hits a real server, albeit a mock one.

## Setup/Use

1. `bundle install`
2. `ruby server.rb`
3. `open http://localhost:4567/current_queue`

## Endpoints

HTTP Method | Endpoint | Description
----------- | -------- | -----------
GET | /current_queue | Fetch the list of matches in the queue
