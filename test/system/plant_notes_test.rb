require "application_system_test_case"

class PlantNotesTest < ApplicationSystemTestCase
  setup do
    @plant_note = plant_notes(:one)
  end

  test "visiting the index" do
    visit plant_notes_url
    assert_selector "h1", text: "Plant Notes"
  end

  test "creating a Plant note" do
    visit plant_notes_url
    click_on "New Plant Note"

    fill_in "Note date", with: @plant_note.note_date
    fill_in "Plant", with: @plant_note.plant_id
    fill_in "Text field", with: @plant_note.text_field
    fill_in "Title", with: @plant_note.title
    click_on "Create Plant note"

    assert_text "Plant note was successfully created"
    click_on "Back"
  end

  test "updating a Plant note" do
    visit plant_notes_url
    click_on "Edit", match: :first

    fill_in "Note date", with: @plant_note.note_date
    fill_in "Plant", with: @plant_note.plant_id
    fill_in "Text field", with: @plant_note.text_field
    fill_in "Title", with: @plant_note.title
    click_on "Update Plant note"

    assert_text "Plant note was successfully updated"
    click_on "Back"
  end

  test "destroying a Plant note" do
    visit plant_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plant note was successfully destroyed"
  end
end
