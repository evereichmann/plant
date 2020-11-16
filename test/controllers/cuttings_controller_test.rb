require 'test_helper'

class CuttingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cutting = cuttings(:one)
  end

  test "should get index" do
    get cuttings_url
    assert_response :success
  end

  test "should get new" do
    get new_cutting_url
    assert_response :success
  end

  test "should create cutting" do
    assert_difference('Cutting.count') do
      post cuttings_url, params: { cutting: { cutting_date: @cutting.cutting_date, generation: @cutting.generation, mother: @cutting.mother, name: @cutting.name, parent_id: @cutting.parent_id, parent_type: @cutting.parent_type, price: @cutting.price, sold: @cutting.sold, tag: @cutting.tag } }
    end

    assert_redirected_to cutting_url(Cutting.last)
  end

  test "should show cutting" do
    get cutting_url(@cutting)
    assert_response :success
  end

  test "should get edit" do
    get edit_cutting_url(@cutting)
    assert_response :success
  end

  test "should update cutting" do
    patch cutting_url(@cutting), params: { cutting: { cutting_date: @cutting.cutting_date, generation: @cutting.generation, mother: @cutting.mother, name: @cutting.name, parent_id: @cutting.parent_id, parent_type: @cutting.parent_type, price: @cutting.price, sold: @cutting.sold, tag: @cutting.tag } }
    assert_redirected_to cutting_url(@cutting)
  end

  test "should destroy cutting" do
    assert_difference('Cutting.count', -1) do
      delete cutting_url(@cutting)
    end

    assert_redirected_to cuttings_url
  end
end
