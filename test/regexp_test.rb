lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib)

require './lib/regexp'
require 'minitest/autorun'

class RegexpTest < Minitest::Test

	def test_building_expression_with_two_integers
		pattern = Regexp.build(3, 7)
		result = (["3","7"].sample =~ pattern)
		assert_equal(0,result)
	end

	def test_building_expression_with_range
		pattern = Regexp.build(1..12)
		assert_equal(nil, "0" =~ pattern)
		assert_equal(0, "1" =~ pattern)
	end
end
