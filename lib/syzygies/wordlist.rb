#
# Copyright (C) 2015 romancpodolski <roman.podolski@tum.de>
#
# Distributed under terms of the MIT license.
#
#
require 'syzygies/word'
require 'singleton'

module Syzygies

	WORD_LIST = ENV['WORD_LIST']
	
	class Wordlist

		include Singleton

		attr_accessor :list

		def initialize
			if WORD_LIST.nil?
				$stderr.puts """
				Please set an enviroment variable with the path to the wordlist:
				
				  export WORD_LIST=/path/to/your/wordlist.txt
				"""
				exit(-1)
			end
			@list = File.read(WORD_LIST).split("\r\n").select { |word| word.length > 2 } .collect { |word| Word.new word }
		end
		
		def get(word)
			list = @list.select { |w| !(word.parents.include? w.word ) && ( w.first_two_letters == word.last_two_letters || w.last_two_letters == word.first_two_letters )  }
			return list
		end

	end
end
