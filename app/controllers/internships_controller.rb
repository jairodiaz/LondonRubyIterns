class InternshipsController < ApplicationController
  # GET /internships
  # GET /internships.json
  def index
    @search = Internship.search(params[:search]) 
    @internships = @search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @internships }
    end
  end

  # GET /internships/1
  # GET /internships/1.json
  def show
    @internship = Internship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @internship }
    end
  end

  # GET /internships/new
  # GET /internships/new.json
  def new
    @internship = Internship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @internship }
    end
  end

  # GET /internships/1/edit
  def edit
    @internship = Internship.find(params[:id])
  end

  # POST /internships
  # POST /internships.json
  def create
    @internship = Internship.new(params[:internship])

    respond_to do |format|
      if @internship.save
        format.html { redirect_to @internship, notice: 'Internship was successfully created.' }
        format.json { render json: @internship, status: :created, location: @internship }
      else
        format.html { render action: "new" }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /internships/1
  # PUT /internships/1.json
  def update
    @internship = Internship.find(params[:id])

    respond_to do |format|
      if @internship.update_attributes(params[:internship])
        format.html { redirect_to @internship, notice: 'Internship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internships/1
  # DELETE /internships/1.json
  def destroy
    @internship = Internship.find(params[:id])
    @internship.destroy

    respond_to do |format|
      format.html { redirect_to internships_url }
      format.json { head :no_content }
    end
  end
end
