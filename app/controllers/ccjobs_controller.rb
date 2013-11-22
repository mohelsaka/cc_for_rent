class CcjobsController < ApplicationController
  # GET /ccjobs
  # GET /ccjobs.json
  def index
    @ccjobs = Ccjob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ccjobs }
    end
  end

  # GET /ccjobs/1
  # GET /ccjobs/1.json
  def show
    @ccjob = Ccjob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ccjob }
    end
  end

  # GET /ccjobs/new
  # GET /ccjobs/new.json
  def new
    @ccjob = Ccjob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ccjob }
    end
  end

  # GET /ccjobs/1/edit
  def edit
    @ccjob = Ccjob.find(params[:id])
  end

  # POST /ccjobs
  # POST /ccjobs.json
  def create
    @ccjob = Ccjob.new(params[:ccjob])

    respond_to do |format|
      if @ccjob.save
        format.html { redirect_to @ccjob, notice: 'Ccjob was successfully created.' }
        format.json { render json: @ccjob, status: :created, location: @ccjob }
      else
        format.html { render action: "new" }
        format.json { render json: @ccjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ccjobs/1
  # PUT /ccjobs/1.json
  def update
    @ccjob = Ccjob.find(params[:id])

    respond_to do |format|
      if @ccjob.update_attributes(params[:ccjob])
        format.html { redirect_to @ccjob, notice: 'Ccjob was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ccjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccjobs/1
  # DELETE /ccjobs/1.json
  def destroy
    @ccjob = Ccjob.find(params[:id])
    @ccjob.destroy

    respond_to do |format|
      format.html { redirect_to ccjobs_url }
      format.json { head :no_content }
    end
  end
end
