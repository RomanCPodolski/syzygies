#
# Copyright (C) 2015 romancpodolski <roman.podolski@tum.de>
#
# Distributed under terms of the MIT license.
#
#
module Syzygies
	class Word
    include Comparable

		attr_reader :first_two_letters
		attr_reader :last_two_letters
		attr_reader :word
		attr_accessor :parents

		def initialize(word)
			@parents = [word.upcase]
			@word = word.upcase
			@first_two_letters = word[0..1].upcase
			@last_two_letters = word[-2..-1].upcase
		end

		def <=>(other)
			@word <=> other
		end
		
		def addParent(parent)
			@parents = parent.parents + [@word] 
			return self
		end

	end
	
end
