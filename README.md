Web ART base project
====================

This project is meant to serve as a starting point for MS Excel based, keyword driven tests with Protractor.
It is possible to use it without MS Excel as well, but Excel provides a very powerful computational platform, that makes everything a lot easier.
Of course if you don't want to shell out for MS Excel you can use any of the numerous copies like LibreOffice (OpenOffice) Calc, etc.

## Prerequisites

Make sure you have Node.js, npm (it comes with node) and coffee-script installed on your machine. To run selenium server locally you'll need java as well.

Install protractor (may need to run as root/administrator):

	npm install -g protractor

Update and start local selenium server using webdriver-manager (comes with protractor):

	webdriver-manager update
	webdriver-manager start

## Installation

Clone this project.

Install all dependencies. In the project directory do:

	npm install

## Run

From within the project directory:

	protractor conf.coffee --baseUrl=http://google.com
