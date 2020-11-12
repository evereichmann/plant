require 'test_helper'

class PlantNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_note = plant_notes(:one)
  end

  test "should get index" do
    get plant_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_note_url
    assert_response :success
  end

  test "should create plant_note" do
    assert_difference('PlantNote.count') do
      post plant_notes_url, params: { plant_note: { note_date: @plant_note.note_date, plant_id: @plant_note.plant_id, text_field: @plant_note.text_field, title: @plant_note.title } }
    end

    assert_redirected_to plant_note_url(PlantNote.last)
  end

  test "should show plant_note" do
    get plant_note_url(@plant_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_note_url(@plant_note)
    assert_response :success
  end

  test "should update plant_note" do
    patch plant_note_url(@plant_note), params: { plant_note: { note_date: @plant_note.note_date, plant_id: @plant_note.plant_id, text_field: @plant_note.text_field, title: @plant_note.title } }
    assert_redirected_to plant_note_url(@plant_note)
  end

  test "should destroy plant_note" do
    assert_difference('PlantNote.count', -1) do
      delete plant_note_url(@plant_note)
    end

    assert_redirected_to plant_notes_url
  end
end
