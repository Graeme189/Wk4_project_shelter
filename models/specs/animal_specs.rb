require("minitest/autorun")
require_relative("../animal")

class TestAnimal < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Susie","type" => "cat", "breed" => "moggie", "admission_date" => "12th June 2018", "owner_id" => "1", "adoption_ready" => true}

    @animal1 = Animal.new(options)
  end

  def test_id()
    result = @animal1.id.to_s
    assert_equal("1", result)
  end

end
