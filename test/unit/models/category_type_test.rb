require_relative '../../test_helper'

class CategoryTypeTest < ActiveSupport::TestCase
  def test_create
    category_type = CategoryType.new(:name => "Test")
    assert category_type.save
  end
end