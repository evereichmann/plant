require 'test_helper'

class CuttingNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cutting_note = cutting_notes(:one)
  end

  test "should get index" do
    get cutting_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_cutting_note_url
    assert_response :success
  end

  test "should create cutting_note" do
    assert_difference('CuttingNote.count') do
      post cutting_notes_url, params: { cutting_note: { cutting_id: @cutting_note.cutting_id, note_date: @cutting_note.note_date, text_field: @cutting_note.text_field, title: @cutting_note.title } }
    end

    assert_redirected_to cutting_note_url(CuttingNote.last)
  end

  test "should show cutting_note" do
    get cutting_note_url(@cutting_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_cutting_note_url(@cutting_note)
    assert_response :success
  end

  test "should update cutting_note" do
    patch cutting_note_url(@cutting_note), params: { cutting_note: { cutting_id: @cutting_note.cutting_id, note_date: @cutting_note.note_date, text_field: @cutting_note.text_field, title: @cutting_note.title } }
    assert_redirected_to cutting_note_url(@cutting_note)
  end

  test "should destroy cutting_note" do
    assert_difference('CuttingNote.count', -1) do
      delete cutting_note_url(@cutting_note)
    end

    assert_redirected_to cutting_notes_url
  end
end
