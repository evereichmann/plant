require "application_system_test_case"

class CuttingNotesTest < ApplicationSystemTestCase
  setup do
    @cutting_note = cutting_notes(:one)
  end

  test "visiting the index" do
    visit cutting_notes_url
    assert_selector "h1", text: "Cutting Notes"
  end

  test "creating a Cutting note" do
    visit cutting_notes_url
    click_on "New Cutting Note"

    fill_in "Cutting", with: @cutting_note.cutting_id
    fill_in "Note date", with: @cutting_note.note_date
    fill_in "Text field", with: @cutting_note.text_field
    fill_in "Title", with: @cutting_note.title
    click_on "Create Cutting note"

    assert_text "Cutting note was successfully created"
    click_on "Back"
  end

  test "updating a Cutting note" do
    visit cutting_notes_url
    click_on "Edit", match: :first

    fill_in "Cutting", with: @cutting_note.cutting_id
    fill_in "Note date", with: @cutting_note.note_date
    fill_in "Text field", with: @cutting_note.text_field
    fill_in "Title", with: @cutting_note.title
    click_on "Update Cutting note"

    assert_text "Cutting note was successfully updated"
    click_on "Back"
  end

  test "destroying a Cutting note" do
    visit cutting_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cutting note was successfully destroyed"
  end
end
