# Odin: Expense Tracking
Odin expense tracking is an online application designed to support business owners of various industries to track their expenses.

[www.odin.com](https://odin.com)

## Install

### Clone the repository

```shell
git clone git@github.com:odin-expense-tracking/odin.git
cd odin
```

### Check your Ruby version

```shell
ruby -v
```

The output should start with something like `ruby 2.6.1p33`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.6.1-p33
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

Ensure the following:
- Keep PostgreSQL server running
- Make sure to keep redis server running in the background as well

### Initialize the database
The source code comes with sample database configuration files. 
You will need to copy the config:
- PostgreSQL: `cp config/database.yml.example config/database.yml`
- Change `USERNAME` and `PASSWORD` to your local PostgreSQL credentials.

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
foreman start
```

## Contributing
Please follow the following rules for contributing to the project. 
We appreciate your contribution but would really appreciate if you respect these guidelines.

### Create an Issue

- Create an issue to get our attention.
- Add all the necessary details and images to the issue answering:
  - What did you do?
  - What did you expect to happen?
  - What happened instead?
- Label the issue accordingly.
- Wait for one of the core contributors to respond with comments

### Create a Branch and Open Pull-Request

- Create a branch off of development branch.
- Make your changes and commit.
  - Make sure to include to issue number prefixed by # sign in the commit message.
- Open a pull request.
- Assign one of the core contributors as reviewers.

### Merge Pull-Request

- Upon review, if it all looks good, one of the core contributors will merge the commit.

## Contributor Code of Conduct

As contributors and maintainers of this project, we pledge to respect all
people who contribute through reporting issues, posting feature requests,
updating documentation, submitting pull requests or patches, and other
activities.

We are committed to making participation in this project a harassment-free
experience for everyone, regardless of level of experience, gender, gender
identity and expression, sexual orientation, disability, personal appearance,
body size, race, age, or religion.

Examples of unacceptable behavior by participants include the use of sexual
language or imagery, derogatory comments or personal attacks, trolling, public
or private harassment, insults, or other unprofessional conduct.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct. Project maintainers who do not
follow the Code of Conduct may be removed from the project team.

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by opening an issue or contacting one or more of the project
maintainers.

This Code of Conduct is adapted from the [Contributor
Covenant](http:contributor-covenant.org), version 1.0.0, available at
[http://contributor-covenant.org/version/1/0/0/](http://contributor-covenant.org/version/1/0/0/)

## Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### Unreleased

#### 0.0.1 - 2019-07-04

#### Added

- Initial set up, build using [kickstart](https://github.com/dhairyagabha/Kickstart) template script
- Added gems pundit, annotate, and rspec for authorization, file annotations and testing respectively.