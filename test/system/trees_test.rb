require "application_system_test_case"

class TreesTest < ApplicationSystemTestCase
  setup do
    @tree = trees(:one)
  end

  test "visiting the index" do
    visit trees_url
    assert_selector "h1", text: "Trees"
  end

  test "creating a Tree" do
    visit trees_url
    click_on "New Tree"

    fill_in "Caracteristica", with: @tree.caracteristica
    fill_in "Dueño", with: @tree.dueño
    fill_in "Latitud", with: @tree.latitud
    fill_in "Longitud", with: @tree.longitud
    click_on "Create Tree"

    assert_text "Tree was successfully created"
    click_on "Back"
  end

  test "updating a Tree" do
    visit trees_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @tree.caracteristica
    fill_in "Dueño", with: @tree.dueño
    fill_in "Latitud", with: @tree.latitud
    fill_in "Longitud", with: @tree.longitud
    click_on "Update Tree"

    assert_text "Tree was successfully updated"
    click_on "Back"
  end

  test "destroying a Tree" do
    visit trees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tree was successfully destroyed"
  end
end
