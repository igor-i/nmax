[![Build Status](https://travis-ci.org/igor-i/nmax.svg?branch=master)](https://travis-ci.org/igor-i/nmax)

# Nmax

This script does the following:
  * from the incoming stream of text data;
  * at the end of the input displays n largest integers encountered in the received text data.

## Installation

    $ make build
    $ make install

## Usage

    $ cat test/fixtures/sample_data.txt | exe/nmax 2
    890
    1234124

