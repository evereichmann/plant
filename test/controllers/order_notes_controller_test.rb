require 'test_helper'

class OrderNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_note = order_notes(:one)
  end

  test "should get index" do
    get order_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_order_note_url
    assert_response :success
  end

  test "should create order_note" do
    assert_difference('OrderNote.count') do
      post order_notes_url, params: { order_note: { information: @order_note.information, order_id: @order_note.order_id } }
    end

    assert_redirected_to order_note_url(OrderNote.last)
  end

  test "should show order_note" do
    get order_note_url(@order_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_note_url(@order_note)
    assert_response :success
  end

  test "should update order_note" do
    patch order_note_url(@order_note), params: { order_note: { information: @order_note.information, order_id: @order_note.order_id } }
    assert_redirected_to order_note_url(@order_note)
  end

  test "should destroy order_note" do
    assert_difference('OrderNote.count', -1) do
      delete order_note_url(@order_note)
    end

    assert_redirected_to order_notes_url
  end
end
