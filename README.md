# Regexp

This is my attempt at [Ruby Quiz #4](http://rubyquiz.com/quiz4.html). This library adds a `.build` method to `Regexp` that takes a variable numebr of arguments. See usage for more information.

## Usage

With two `int` arguments

	pattern = Regexp.build(3, 7)
	"7"  =~ pattern # => 0
	"13" =~ pattern # => nil
	"3"  =~ pattern # => 0

With a `range` argument
	
	pattern = Regexp.build(1..12)
	"0" =~ pattern # => nil
	"1" =~ pattern # => 0
	"12"=~ pattern # => 0

With both `int` and `range` arguments

	pattern = Regexp.build(98, 99, 2000.2005)
	"04"   =~ pattern # => nil
	"2004" =~ pattern # => 0
	"98"   =~ pattern # => 0	

## Contributing

1. Fork it ( http://github.com/<my-github-username>/regexp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
