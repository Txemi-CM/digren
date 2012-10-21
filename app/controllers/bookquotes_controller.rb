class BookquotesController < ApplicationController
  # GET /bookquotes
  # GET /bookquotes.json
  def index
    @bookquotes = Bookquote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookquotes }
    end
  end

  # GET /bookquotes/1
  # GET /bookquotes/1.json
  def show
    @bookquote = Bookquote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookquote }
    end
  end

  # GET /bookquotes/new
  # GET /bookquotes/new.json
  def new
    @bookquote = Bookquote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookquote }
    end
  end

  # GET /bookquotes/1/edit
  def edit
    @bookquote = Bookquote.find(params[:id])
  end

  # POST /bookquotes
  # POST /bookquotes.json
  def create
    @bookquote = Bookquote.new(params[:bookquote])

    respond_to do |format|
      if @bookquote.save
        format.html { redirect_to @bookquote, notice: 'Bookquote was successfully created.' }
        format.json { render json: @bookquote, status: :created, location: @bookquote }
      else
        format.html { render action: "new" }
        format.json { render json: @bookquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookquotes/1
  # PUT /bookquotes/1.json
  def update
    @bookquote = Bookquote.find(params[:id])

    respond_to do |format|
      if @bookquote.update_attributes(params[:bookquote])
        format.html { redirect_to @bookquote, notice: 'Bookquote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookquotes/1
  # DELETE /bookquotes/1.json
  def destroy
    @bookquote = Bookquote.find(params[:id])
    @bookquote.destroy

    respond_to do |format|
      format.html { redirect_to bookquotes_url }
      format.json { head :no_content }
    end
  end
end
