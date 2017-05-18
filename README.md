# Music Map API

This is the backend for [Music Map](https://github.com/beichenc/MusicMap) written in Ruby on Rails.

## Getting started on your own system

Prerequisites:
- Make sure you have Ruby installed on your computer. It's good to use a Ruby version manager so go install Rvm first and then install Ruby with Rvm. We use version 2.4.1.
- Make sure you have PostgreSQL installed on your computer. You can install it using Homebrew. If you don't have Homebrew, install that first.

1. Clone this repository and go into the folder.
2. Run `createdb dbname` replacing `dbname` with a name for the database.
3. Run `pg_restore --verbose --clean --no-acl --no-owner -h localhost -U myuser -d mydb latest.dump` replacing `myuser` with your PostgreSQL username and `mydb` with the database name you just created.
4. Go into the frontend Music Map folder and into `app/components/Home.js`, find all instances where the code uses the URL `https://bestmusicmapapi.herokuapp.com/` and change this to `http://localhost:3000/` in order to send requests to the localhost server instead of our production API website, keeping the rest of the URL route after the domain as it is. For example, `https://bestmusicmapapi.herokuapp.com/users` should be changed to `http://localhost:3000/users`.
5. Go back to the backend Music Map API folder. Run `bundle install`.
6. Create a new file called `database.yml` in the config folder. Write the following code in:

```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: mydb
```

Replace `mydb` with your database name.

7. Run `rails s`.
8. Now the backend is running on `localhost:3000` and running a parallel frontend server, the frontend will be be connected to the local backend database.
