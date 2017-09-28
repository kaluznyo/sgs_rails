# README

This is a webapp to search and navigate into Swiss Games Showcase
Original work https://github.com/Zarkonnen/SwissGamesShowcase.

# Installation

We use ruby 2.4.2 and Rails 5.1.4. And sqlite

It's only a cron, that sync with google spreadsheet, and basic CRUD for search.

To sync and create database, you must copy spreadsheet into your google drive (https://docs.google.com/spreadsheets/d/1pWOGpADxvNEWcYnpTFpCyhS9rtIjCYgIdZmBppDkC2Q/edit?usp=sharing)
Then follow this step https://docs.google.com/spreadsheets/d/1pWOGpADxvNEWcYnpTFpCyhS9rtIjCYgIdZmBppDkC2Q/edit?usp=sharing
Put the JSON file into /config and change name of file into environement.rb and key of spreadsheet doc (in url of your spreadsheet)

And run in console Game.sync_with_spreadsheet

That's all

Demo : http://138.68.91.93/