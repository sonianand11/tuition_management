require "application_system_test_case"

class TuitionsTest < ApplicationSystemTestCase
  setup do
    @tuition = tuitions(:one)
  end

  test "visiting the index" do
    visit tuitions_url
    assert_selector "h1", text: "Tuitions"
  end

  test "creating a Tuition" do
    visit tuitions_url
    click_on "New Tuition"

    fill_in "Description", with: @tuition.description
    fill_in "End at", with: @tuition.end_at
    fill_in "Meeting link", with: @tuition.meeting_link
    fill_in "Start at", with: @tuition.start_at
    fill_in "Teacher", with: @tuition.teacher_id
    fill_in "Title", with: @tuition.title
    click_on "Create Tuition"

    assert_text "Tuition was successfully created"
    click_on "Back"
  end

  test "updating a Tuition" do
    visit tuitions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tuition.description
    fill_in "End at", with: @tuition.end_at
    fill_in "Meeting link", with: @tuition.meeting_link
    fill_in "Start at", with: @tuition.start_at
    fill_in "Teacher", with: @tuition.teacher_id
    fill_in "Title", with: @tuition.title
    click_on "Update Tuition"

    assert_text "Tuition was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuition" do
    visit tuitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuition was successfully destroyed"
  end
end
