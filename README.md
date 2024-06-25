
# Airbnb Clone

## Description

A clone of Airbnb, built to the minimum viable state. Certain features are partially built or have yet to be styled.


## Current features

Search by location:

![alt text](./app/assets/images/readme/search_by_location3.gif?raw=true)

Search by date:

![alt text](./app/assets/images/readme/search_by_date.gif?raw=true)

Search by number of guests:

![alt text](./app/assets/images/readme/search_by_guests.gif?raw=true)


## Features to implement

- Improve the UI for hosting and account management.


### Tech Stack:

![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=plastic&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=plastic&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=plastic&logo=javascript&logoColor=%23F7DF1E) ![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=plastic&logo=ruby&logoColor=white) ![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=plastic&logo=bootstrap&logoColor=white) ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=plastic&logo=ruby-on-rails&logoColor=white) ![NPM](https://img.shields.io/badge/NPM-%23000000.svg?style=plastic&logo=npm&logoColor=white) ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=plastic&logo=postgresql&logoColor=white)

<!-- ### Deployed on:

![Heroku](https://img.shields.io/badge/heroku-%23430098.svg?style=plastic&logo=heroku&logoColor=white)

### Live link:

[Heroku Link](https://aiurbnb.herokuapp.com/) -->

# Instructions to run this Rails App locally
I have include all possible steps, should you already have certain parts installed, skip ahead to configurin the installations.

# 1. Install Ruby
Install the full version of Ruby.
```bash
sudo apt-get install ruby-full -y
```
# 2. Install rbenv
rbenv helps manage Ruby versions. Install rbenv and use it to install Ruby 3.1.2.
```bash
sudo apt install rbenv
rbenv install 3.1.2
rbenv global 3.1.2
```
# 3. Restart Terminal and verify Ruby installation
Restart your terminal to apply the changes.
```bash
exec bash
```
Check the installed Ruby version.
```bash
ruby -v
```
### Expected 
```
ruby 3.1.2p20
```
# 4. Install PostgreSQL
Install PostgreSQL and related packages.
```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```

# 5. Clone this repository and go to the project folder
Clone the repository.
Navigate to the project folder.
```bash
git clone git@github.com:bing-me/aiurbnb.git
cd aiurbnb/
```
# 6. Update Bundler and Install Gems
Update bundler and install the necessary gems. 
Bundler is a tool for dependency management. 
A gem is a package that you can download and install, adding extra functionality to your Ruby program.
```bash
gem update bundler
gem install colored faker http pry-byebug rake rails rest-client rspec rubocop-performance sqlite3:1.7.3 activerecord:7.1.3.2
bundle install
```
# 7. Create and Setup the Database
Create the database, run migrations, and seed the database.
```bash
rails db:create
rails db:migrate RAILS_ENV=development
rails db:seed
```
# 8. Configure API Keys
API are being used for the map functions, the free tier of two servies used are [OpenCageData](https://opencagedata.com/) and [MapBox](https://www.mapbox.com/)  

Copy or rename .env.sample to .env and contents input your appropriate API keys
```ruby
OPENCAGEDATA_API_KEY = *your_key*
MAPBOX_API_KEY = *your_key*
```
# 9. Install Node Packages and Build the Project
Install the necessary Node packages.
Run the build process.
```bash
npm i
npm run build 
```
# 0. Start Your Rails Server
Start your Rails server.
```bash
rails s
```
