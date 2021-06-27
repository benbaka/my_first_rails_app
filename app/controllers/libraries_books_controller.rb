class LibrariesBooksController < ApplicationController
  before_action :set_libraries_book, only: %i[ show edit update destroy ]

  # GET /libraries_books or /libraries_books.json
  def index
    @libraries_books = LibrariesBook.all
  end

  # GET /libraries_books/1 or /libraries_books/1.json
  def show
  end

  # GET /libraries_books/new
  def new
    @libraries_book = LibrariesBook.new
  end

  # GET /libraries_books/1/edit
  def edit
  end

  # POST /libraries_books or /libraries_books.json
  def create
    @libraries_book = LibrariesBook.new(libraries_book_params)

    respond_to do |format|
      if @libraries_book.save
        format.html { redirect_to @libraries_book, notice: "Libraries book was successfully created." }
        format.json { render :show, status: :created, location: @libraries_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @libraries_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libraries_books/1 or /libraries_books/1.json
  def update
    respond_to do |format|
      if @libraries_book.update(libraries_book_params)
        format.html { redirect_to @libraries_book, notice: "Libraries book was successfully updated." }
        format.json { render :show, status: :ok, location: @libraries_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @libraries_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraries_books/1 or /libraries_books/1.json
  def destroy
    @libraries_book.destroy
    respond_to do |format|
      format.html { redirect_to libraries_books_url, notice: "Libraries book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libraries_book
      @libraries_book = LibrariesBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def libraries_book_params
      params.require(:libraries_book).permit(:library_id, :book_id)
    end
end
