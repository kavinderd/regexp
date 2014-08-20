$:.unshift("..")
$:.unshift("../lib")

require 'regexp'
require 'minitest/autorun'

class RegexpTest < Minitest::Test

	def test_building_expression_with_two_integers
		pattern = Regexp.build(3, 7)
		result = ((3..7).sample =~ pattern)
		assert_equal(result, true)
	end
end
