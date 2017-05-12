[testx](http://testx.io/testx) quickstart
====================

This project is meant to serve as a starting point for keyword driven tests with [testx](http://testx.io/testx).

## Prerequisites

Make sure you have [Node.js](https://nodejs.org) installed on your machine. To run selenium server locally (not really necessary for dev/testing) you'll need java as well.

Install [protractor](http://www.protractortest.org/) (may need to run as root/administrator):

	npm install -g protractor

Update the local chrome and firefox selenium drivers using webdriver-manager (comes with protractor):

	webdriver-manager update

## Installation

Clone this project.

Install all dependencies. In the project directory do:

	npm install

## Run

From within the project directory:

	protractor conf.coffee

or

	npm run test-local

### Run with [Docker](https://www.docker.com/)

This method is recommended when executing your tests as part of a continuous integration pipeline. When using Docker you do not need protractor installed on your machine (or the CI server), but of course you need Docker.

  	npm test

## Next steps

Check the [testx documentation](http://testx.io/testx) documentation to find out where to go from here.
