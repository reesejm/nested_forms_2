require "application_system_test_case"

class ShoppingListsTest < ApplicationSystemTestCase
  setup do
    @shopping_list = shopping_lists(:one)
  end

  test "visiting the index" do
    visit shopping_lists_url
    assert_selector "h1", text: "Shopping Lists"
  end

  test "creating a Shopping list" do
    visit shopping_lists_url
    click_on "New Shopping List"

    fill_in "Food", with: @shopping_list.food_id
    fill_in "Name", with: @shopping_list.name
    click_on "Create Shopping list"

    assert_text "Shopping list was successfully created"
    click_on "Back"
  end

  test "updating a Shopping list" do
    visit shopping_lists_url
    click_on "Edit", match: :first

    fill_in "Food", with: @shopping_list.food_id
    fill_in "Name", with: @shopping_list.name
    click_on "Update Shopping list"

    assert_text "Shopping list was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping list" do
    visit shopping_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping list was successfully destroyed"
  end
end
