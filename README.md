# Color-Fu

![Build Status](https://codeship.com/projects/111f7120-2948-0136-930a-0efe8925988d/status?branch=master)
[![Code Climate](https://codeclimate.com/github/KWongEE/Color-Fu/badges/gpa.svg)](https://codeclimate.com/github/KWongEE/Color-Fu)
[![Coverage Status](https://coveralls.io/repos/github/KWongEE/Color-Fu/badge.svg?branch=master)](https://coveralls.io/github/KWongEE/Color-Fu?branch=master)


### Set up

Since the project has not been run in a while, do the following:
1. run `gem uninstall bundler`
1. run `gem install bundler`

The follow up with these:
1. run `rvm install 2.3.6`
1. run `rvm use 2.3.6`
1. run `bundle`
1. run `rake db:create db:migrate db:seed`

On a different terminal window to set up your frontend, do the following:
1. run `yarn install`
    1. If this gives you issues, run `nvm use stable` (you can add the nvm version to .nvmrc to save the version to this project and so you can run `nvm use` for next time)
1. run `yarn run start`
