require 'test_helper'

class LibrariesBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libraries_book = libraries_books(:one)
  end

  test "should get index" do
    get libraries_books_url
    assert_response :success
  end

  test "should get new" do
    get new_libraries_book_url
    assert_response :success
  end

  test "should create libraries_book" do
    assert_difference('LibrariesBook.count') do
      post libraries_books_url, params: { libraries_book: { book_id: @libraries_book.book_id, library_id: @libraries_book.library_id } }
    end

    assert_redirected_to libraries_book_url(LibrariesBook.last)
  end

  test "should show libraries_book" do
    get libraries_book_url(@libraries_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_libraries_book_url(@libraries_book)
    assert_response :success
  end

  test "should update libraries_book" do
    patch libraries_book_url(@libraries_book), params: { libraries_book: { book_id: @libraries_book.book_id, library_id: @libraries_book.library_id } }
    assert_redirected_to libraries_book_url(@libraries_book)
  end

  test "should destroy libraries_book" do
    assert_difference('LibrariesBook.count', -1) do
      delete libraries_book_url(@libraries_book)
    end

    assert_redirected_to libraries_books_url
  end
end
