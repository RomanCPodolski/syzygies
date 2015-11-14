# Syzygies
This is a simplification of a word puzzle created by the English polymath Lewis Caroll where the player is given a start word (e.g. WHITE) and a goal word (e.g. GREEN).
One must conduct a chain of words, where, for adjacent words in the chain either the first two letters of one word are the last two letters of the next word, or the last two letters last two letters of one word are the first two letters of the next word.
An example:
```
         WHI TE
             TE AMWORK
    EN UMERA TE
GRE EN 
```
This little ruby gem is an implementation of an iterative deepening search.
It was created as an assignment for the post-graduate lecture 'artificial intelligence' at the technical university munich (germany).

## Installation

This program is implemented in ruby.
To execute it you'll need a ruby runtime.
I recommend the ruby version manager for an installation for all linux/unix based systems.
See https:/rvm.io.

To install this program using rubygems run
```
    $ gem install syzygies
```
To build it locally, cd to the sources and run

```
    $ gem build syzygies.gemspec 
    $ gem install syzygies-1.0.0.gem 
```
You could also use bundler and rake to build the sources:
```
   $ bundle exec rake install:local
```

## Usage

Set an enviroment variable that points to a wordlist.txt.
If you don't have a wordlist you can download it [HERE](https://raw.githubusercontent.com/RomanCPodolski/syzygies/master/wordsEn.txt).
```
    $ export WORD_LIST=/path/to/your/wordlist.txt
```

To execute the search for a syzygie run 

```
    $ syzygies WORD1 WORD2
```
where WORD1 and WORD2 are the words you want to connect i.e.

```
    $ syzygies earthquake tsunami
```

NOTE: For certain word combinations like 'pen' and 'paper' syzygies could run quite long (30 min or so).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RomanCPodolski/syzygies.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

