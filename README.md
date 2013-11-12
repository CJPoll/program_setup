Program Setup

A small collection of scripts for setting up applications with unit tests in
various languages. Currently supported:

- C
- Ruby
- Erlang

TODO:
- Java
- Python

Erlang Structure:

The script sets up a skeleton for an app with the following directory
structure:

-root
 |
 +-apps
 | |
 | +-appname
 |  |
 |  +-src
 |  +-ebin
 |  +-doc
 |  +-test
 |
 +-deps
 |
 +-rel
   |
   +-files
   +-reltool.config

Think of it as an "application template".

It requires exactly one argument: the application name. Don't forget to quote it
if it contains spaces for some ungodly reason.

Nor does it create a rebar.config file, though I intend to add one soon as well.

