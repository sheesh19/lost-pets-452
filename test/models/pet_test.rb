require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "#found_days_ago returns an Integer" do
    sheila = pets(:sheila)
    assert_instance_of Integer, sheila.found_days_ago
  end
end
