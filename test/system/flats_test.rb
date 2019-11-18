require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    visit "/"

    assert_selector "h1", text: "Flats"
    assert_selector "li", count: 6
    assert_selector "a", count: 12
  end


  test "visiting the show page for flat 145" do
    visit "/flats/145"

    assert_selector "h2", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
    assert_selector "p", text: 164
  end

  test "visiting the show page for flat 148" do
    visit "/flats/148"

    assert_selector "h2", text: "Trendy Apt in Buttes Montmartre"
    assert_selector "p", text: 200
  end
end
