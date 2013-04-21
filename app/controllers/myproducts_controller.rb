class MyproductsController < ApplicationController
  # GET /myproducts
  # GET /myproducts.json
  def index
    @myproducts = Myproduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myproducts }
    end
  end

  # GET /myproducts/1
  # GET /myproducts/1.json
  def show
    @myproduct = Myproduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myproduct }
    end
  end

  # GET /myproducts/new
  # GET /myproducts/new.json
  def new
    @myproduct = Myproduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myproduct }
    end
  end

  # GET /myproducts/1/edit
  def edit
    @myproduct = Myproduct.find(params[:id])
  end

  # POST /myproducts
  # POST /myproducts.json
  def create
    @myproduct = Myproduct.new(params[:myproduct])

    respond_to do |format|
      if @myproduct.save
        format.html { redirect_to @myproduct, notice: 'Myproduct was successfully created.' }
        format.json { render json: @myproduct, status: :created, location: @myproduct }
      else
        format.html { render action: "new" }
        format.json { render json: @myproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myproducts/1
  # PUT /myproducts/1.json
  def update
    @myproduct = Myproduct.find(params[:id])

    respond_to do |format|
      if @myproduct.update_attributes(params[:myproduct])
        format.html { redirect_to @myproduct, notice: 'Myproduct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myproducts/1
  # DELETE /myproducts/1.json
  def destroy
    @myproduct = Myproduct.find(params[:id])
    @myproduct.destroy

    respond_to do |format|
      format.html { redirect_to myproducts_url }
      format.json { head :no_content }
    end
  end
end
