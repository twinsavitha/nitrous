require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
end
