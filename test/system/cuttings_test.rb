require "application_system_test_case"

class CuttingsTest < ApplicationSystemTestCase
  setup do
    @cutting = cuttings(:one)
  end

  test "visiting the index" do
    visit cuttings_url
    assert_selector "h1", text: "Cuttings"
  end

  test "creating a Cutting" do
    visit cuttings_url
    click_on "New Cutting"

    fill_in "Cutting date", with: @cutting.cutting_date
    fill_in "Generation", with: @cutting.generation
    check "Mother" if @cutting.mother
    fill_in "Name", with: @cutting.name
    fill_in "Parent", with: @cutting.parent_id
    fill_in "Parent type", with: @cutting.parent_type
    fill_in "Price", with: @cutting.price
    check "Sold" if @cutting.sold
    fill_in "Tag", with: @cutting.tag
    click_on "Create Cutting"

    assert_text "Cutting was successfully created"
    click_on "Back"
  end

  test "updating a Cutting" do
    visit cuttings_url
    click_on "Edit", match: :first

    fill_in "Cutting date", with: @cutting.cutting_date
    fill_in "Generation", with: @cutting.generation
    check "Mother" if @cutting.mother
    fill_in "Name", with: @cutting.name
    fill_in "Parent", with: @cutting.parent_id
    fill_in "Parent type", with: @cutting.parent_type
    fill_in "Price", with: @cutting.price
    check "Sold" if @cutting.sold
    fill_in "Tag", with: @cutting.tag
    click_on "Update Cutting"

    assert_text "Cutting was successfully updated"
    click_on "Back"
  end

  test "destroying a Cutting" do
    visit cuttings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cutting was successfully destroyed"
  end
end
