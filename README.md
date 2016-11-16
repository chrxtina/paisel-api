# Project 2: Full-Stack Application

Live application: https://chrxtina.github.io/paisel-client/

Front-end repository: https://github.com/chrxtina/paisel-client

## About

Paisel is an anonymous thought sharing app that gives users an outlet for their thoughts as well as provides a community whereby users may read each others thoughts and, in a sense, not feel alone (fr. *pas seul*).

## API end-points

| Verb   | URI Pattern            | Controller#Action     |
| ----   | -----------            | -----------------     |
| POST   | `/sign-up`             | `users#signup`        |
| POST   | `/sign-in`             | `users#signin`        |
| DELETE | `/sign-out/:id`        | `users#signout`       |
| PATCH  | `/change-password/:id` | `users#changepw`      |
| GET    | `/thoughts`            | `thoughts#index`      |
| POST   | `/thoughts`            | `thoughts#create`     |
| PATCH  | `/thoughts/:id`        | `thoughts#update`     |
| DELETE | `/thoughts/:id`        | `thoughts#destroy`    |
| GET    | `/mythoughts`          | `thoughts#mythoughts` |
| POST   | `/votes`               | `votes#create`        |
| POST   | `/vote-results/:id`    | `votes#vote_results`  |


All data returned from API actions is formatted as JSON.
