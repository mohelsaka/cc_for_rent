class PcOwnersController < ApplicationController
  # GET /pc_owners
  # GET /pc_owners.json
  def index
    @pc_owners = PcOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pc_owners }
    end
  end

  # GET /pc_owners/1
  # GET /pc_owners/1.json
  def show
    @pc_owner = PcOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pc_owner }
    end
  end

  # GET /pc_owners/new
  # GET /pc_owners/new.json
  def new
    @pc_owner = PcOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pc_owner }
    end
  end

  # GET /pc_owners/1/edit
  def edit
    @pc_owner = PcOwner.find(params[:id])
  end

  # POST /pc_owners
  # POST /pc_owners.json
  def create
    @pc_owner = PcOwner.new(params[:pc_owner])

    respond_to do |format|
      if @pc_owner.save
        format.html { redirect_to @pc_owner, notice: 'Pc owner was successfully created.' }
        format.json { render json: @pc_owner, status: :created, location: @pc_owner }
      else
        format.html { render action: "new" }
        format.json { render json: @pc_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pc_owners/1
  # PUT /pc_owners/1.json
  def update
    @pc_owner = PcOwner.find(params[:id])

    respond_to do |format|
      if @pc_owner.update_attributes(params[:pc_owner])
        format.html { redirect_to @pc_owner, notice: 'Pc owner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pc_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_owners/1
  # DELETE /pc_owners/1.json
  def destroy
    @pc_owner = PcOwner.find(params[:id])
    @pc_owner.destroy

    respond_to do |format|
      format.html { redirect_to pc_owners_url }
      format.json { head :no_content }
    end
  end
end
