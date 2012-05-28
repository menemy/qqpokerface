class AlbumItemsController < ApplicationController
  # GET /album_items
  # GET /album_items.json
  def index
    @album_items = AlbumItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album_items }
    end
  end

  # GET /album_items/1
  # GET /album_items/1.json
  def show
    @album_item = AlbumItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album_item }
    end
  end

  # GET /album_items/new
  # GET /album_items/new.json
  def new
    @album_item = AlbumItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album_item }
    end
  end

  # GET /album_items/1/edit
  def edit
    @album_item = AlbumItem.find(params[:id])
  end

  # POST /album_items
  # POST /album_items.json
  def create
    @album = Album.find(params[:album_id])
    @album_item = AlbumItem.new(params[:album_item])

    respond_to do |format|
      if @album_item.save
        format.html { redirect_to @album, notice: 'Album item was successfully created.' }
        format.json { render json: @album_item, status: :created, location: @album_item }
      else
        format.html { render action: "new" }
        format.json { render json: @album_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album_items/1
  # PUT /album_items/1.json
  def update
    @album_item = AlbumItem.find(params[:id])

    respond_to do |format|
      if @album_item.update_attributes(params[:album_item])
        format.html { redirect_to @album_item, notice: 'Album item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_items/1
  # DELETE /album_items/1.json
  def destroy
    @album_item = AlbumItem.find(params[:id])
    @album_item.destroy

    respond_to do |format|
      format.html { redirect_to album_items_url }
      format.json { head :no_content }
    end
  end
end
