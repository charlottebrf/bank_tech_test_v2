# Bank Tech Test v2

The second run through of the Bank Tech Test. Please see the Requirements file for further information on the task that was set.


## Getting started

`$ git clone https://github.com/charlottebrf/bank_tech_test_v2`
`$ bundle install`

## Usage

Run the files locally:
`$ ruby file_name.rb`

Run the program in a REPL to interact with classes and their methods, e.g. pry:
`$ pry`
`require 'file_name.rb'`
`new ClassName`

## Running tests

`$ rspec`


## Test suite

`Rspec`
`Simplecov`

## Test coverage

`x%`

## My Approach
I took a domain driven approach, or an inside/out approach whereby I defined classes according to my Users stories that I would need.

## User Stories
`As a Client
So that I can add money to my account
I would like to make a deposit`

`As a Client
So that I can remove money from my account
I would like to make a withdrawal`

`As a Client
So that I can see my account history
I would like to print my bank statement`

## Class

**Transactions:** understands withdrawals and deposits

**Account:** understands the interpretation of Client commands

**Statement:** understands the printing of bank statements
