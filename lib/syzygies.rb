require "syzygies/version"
require "syzygies/wordlist"

module Syzygies

	def Syzygies.iterativeDeepeningSearch(start, goal)
		( 1..Wordlist.instance.list.length ).each do |i|
			result = depthLimitedSearch(start, goal, i)
			return result unless result == 'cutoff'
		end
	end

	def Syzygies.depthLimitedSearch(start, goal, depth)
		start = Word.new(start)
		goal = Word.new(goal)
		raise "#{start.word} is not in Wordlist" unless Syzygies::Wordlist.instance.list.include? start
		raise "#{goal.word} is not in Wordlist" unless Syzygies::Wordlist.instance.list.include? goal

		return self.recursiveDLS(start, start, goal, depth)
	end

	def Syzygies.recursiveDLS(node, start, goal, limit)
		cutoff_occured = nil
		if node == goal
			return node
		elsif limit == 0
			return 'cutoff'
		else
			Wordlist.instance.get(node).shuffle.each do |w|
				child = w.addParent(node)
				result = recursiveDLS(child, start, goal, limit - 1)
				cutoff_occured = ( result == 'cutoff' )
				return result unless result == 'failure' || result == 'cutoff'
			end
			if cutoff_occured then return 'cutoff' else return "failure" end
		end
	end
end

