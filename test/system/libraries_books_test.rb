require "application_system_test_case"

class LibrariesBooksTest < ApplicationSystemTestCase
  setup do
    @libraries_book = libraries_books(:one)
  end

  test "visiting the index" do
    visit libraries_books_url
    assert_selector "h1", text: "Libraries Books"
  end

  test "creating a Libraries book" do
    visit libraries_books_url
    click_on "New Libraries Book"

    fill_in "Book", with: @libraries_book.book_id
    fill_in "Library", with: @libraries_book.library_id
    click_on "Create Libraries book"

    assert_text "Libraries book was successfully created"
    click_on "Back"
  end

  test "updating a Libraries book" do
    visit libraries_books_url
    click_on "Edit", match: :first

    fill_in "Book", with: @libraries_book.book_id
    fill_in "Library", with: @libraries_book.library_id
    click_on "Update Libraries book"

    assert_text "Libraries book was successfully updated"
    click_on "Back"
  end

  test "destroying a Libraries book" do
    visit libraries_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Libraries book was successfully destroyed"
  end
end
