# agileplanning.io | Metrics

[![Build Status](https://travis-ci.org/jbrunton/agileplanning-io-metrics.png)](https://travis-ci.org/jbrunton/agileplanning-io-metrics)
[![Code Climate](https://codeclimate.com/github/jbrunton/agileplanning-io-metrics/badges/gpa.svg)](https://codeclimate.com/github/jbrunton/agileplanning-io-metrics)
[![Test Coverage](https://codeclimate.com/github/jbrunton/agileplanning-io-metrics/badges/coverage.svg)](https://codeclimate.com/github/jbrunton/agileplanning-io-metrics/coverage)
[![Dependency Status](https://gemnasium.com/jbrunton/agileplanning-io-metrics.svg)](https://gemnasium.com/jbrunton/agileplanning-io-metrics)

This will be an app for automating Spotify style [squad health checks](https://labs.spotify.com/2014/09/16/squad-health-check-model/).

Work in progress. Suggestions and contributions welcome.

## setup

    # required ruby version
    rvm install ruby-2.2.1
    gem install bundler
    # install dependencies
    bundle install
    # rails migrate
    rake db:migrate && RAILS_ENV=test rake db:migrate
    # load up some sample data
    rake db:seed

## testing

    rspec
