
class Regexp
	def self.build(*args)
		items = args.map{|a| Array(a)}.flatten.uniq
		Regexp.new(items.join("|"))
	end
end

