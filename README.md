# README

## Lots and Cards

This is a basic CRUD web app that one could use to document information about limited release lots of Pokemon trading cards/information about the specific cards in this lot that they have. All current information in the database seed file details real information about cards that I have.

## Schema

[Database Schema](https://dbdesigner.page.link/VD4EpBfDAFAFxciL7)

## Database Info

* Ruby Version 2.7.4
* Rails Version 5.2.8.1
* Database: PostgreSQL

## Getting Started

1. Create a directory on your computer for the program and navigate into it
2. Clone the repository and copy your cloned repository information using SSH
3. In the directory you created, clone the repository information copied in the above step
4. Open the cloned repository with your preferred IDE
5. Run bundle install
6. Run rails db:create
7. Run rails db:migrate
8. Optional: run rails db:seed to use my card information
9. Run rails s to connect the Puma server

## Testing

* Testing is done with Rspec
* Simplecov is used for test coverage
* To run the full test suite, type in terminal: bundle exec rspec


