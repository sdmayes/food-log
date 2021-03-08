require "application_system_test_case"

class EnrtiesTest < ApplicationSystemTestCase
  setup do
    @enrty = enrties(:one)
  end

  test "visiting the index" do
    visit enrties_url
    assert_selector "h1", text: "Enrties"
  end

  test "creating a Enrty" do
    visit enrties_url
    click_on "New Enrty"

    fill_in "Calories", with: @enrty.calories
    fill_in "Carbs", with: @enrty.carbs
    fill_in "Fats", with: @enrty.fats
    fill_in "Meal type", with: @enrty.meal_type
    click_on "Create Enrty"

    assert_text "Enrty was successfully created"
    click_on "Back"
  end

  test "updating a Enrty" do
    visit enrties_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @enrty.calories
    fill_in "Carbs", with: @enrty.carbs
    fill_in "Fats", with: @enrty.fats
    fill_in "Meal type", with: @enrty.meal_type
    click_on "Update Enrty"

    assert_text "Enrty was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrty" do
    visit enrties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrty was successfully destroyed"
  end
end
