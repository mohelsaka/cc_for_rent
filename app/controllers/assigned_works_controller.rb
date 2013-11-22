class AssignedWorksController < ApplicationController
  # GET /assigned_works
  # GET /assigned_works.json
  def index
    @assigned_works = AssignedWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assigned_works }
    end
  end

  # GET /assigned_works/1
  # GET /assigned_works/1.json
  def show
    @assigned_work = AssignedWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assigned_work }
    end
  end

  # GET /assigned_works/new
  # GET /assigned_works/new.json
  def new
    @assigned_work = AssignedWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assigned_work }
    end
  end

  # GET /assigned_works/1/edit
  def edit
    @assigned_work = AssignedWork.find(params[:id])
  end

  # POST /assigned_works
  # POST /assigned_works.json
  def create
    @assigned_work = AssignedWork.new(params[:assigned_work])

    respond_to do |format|
      if @assigned_work.save
        format.html { redirect_to @assigned_work, notice: 'Assigned work was successfully created.' }
        format.json { render json: @assigned_work, status: :created, location: @assigned_work }
      else
        format.html { render action: "new" }
        format.json { render json: @assigned_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assigned_works/1
  # PUT /assigned_works/1.json
  def update
    @assigned_work = AssignedWork.find(params[:id])

    respond_to do |format|
      if @assigned_work.update_attributes(params[:assigned_work])
        format.html { redirect_to @assigned_work, notice: 'Assigned work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assigned_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_works/1
  # DELETE /assigned_works/1.json
  def destroy
    @assigned_work = AssignedWork.find(params[:id])
    @assigned_work.destroy

    respond_to do |format|
      format.html { redirect_to assigned_works_url }
      format.json { head :no_content }
    end
  end
end
