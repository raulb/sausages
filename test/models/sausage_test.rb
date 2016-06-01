require 'test_helper'

class SausageTest < Minitest::Test
  def test_we_have_sausages
    assert_instance_of Array, Sausage.all
  end

  def test_we_can_find_a_sausage
    chorizo = Sausage.find('chorizo')
    assert_instance_of Sausage, chorizo
    assert_equal chorizo.name, 'Chorizo'
  end

  def test_there_are_a_lot_of_sausages
    sausages = Sausage.all
    assert sausages.count > 2
  end
end
