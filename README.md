# Stats Service

Service which listens to events from FTRRL game via RabbitMQ, and stores them in a psql data warehouse.

A Grape API is available to expose said data for analysis.

### Set env vars

`cp .env.dev .env`

### Run migrations

`bundle exec rake db:migrate`

### Start application

`rackup`