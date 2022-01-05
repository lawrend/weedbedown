require "application_system_test_case"

class IngestionsTest < ApplicationSystemTestCase
  setup do
    @ingestion = ingestions(:one)
  end

  test "visiting the index" do
    visit ingestions_url
    assert_selector "h1", text: "Ingestions"
  end

  test "should create ingestion" do
    visit ingestions_url
    click_on "New ingestion"

    fill_in "Dateandtime", with: @ingestion.dateAndTime
    fill_in "Method", with: @ingestion.method
    fill_in "Strain", with: @ingestion.strain
    fill_in "User", with: @ingestion.user_id
    click_on "Create Ingestion"

    assert_text "Ingestion was successfully created"
    click_on "Back"
  end

  test "should update Ingestion" do
    visit ingestion_url(@ingestion)
    click_on "Edit this ingestion", match: :first

    fill_in "Dateandtime", with: @ingestion.dateAndTime
    fill_in "Method", with: @ingestion.method
    fill_in "Strain", with: @ingestion.strain
    fill_in "User", with: @ingestion.user_id
    click_on "Update Ingestion"

    assert_text "Ingestion was successfully updated"
    click_on "Back"
  end

  test "should destroy Ingestion" do
    visit ingestion_url(@ingestion)
    click_on "Destroy this ingestion", match: :first

    assert_text "Ingestion was successfully destroyed"
  end
end
