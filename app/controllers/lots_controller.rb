class LotsController < ApplicationController
  before_action :check_if_logged_in
  before_action :set_project
  before_action :set_lot, except: [:new, :create, :index]

  def new
    @lot = Lot.new
  end

  def index
    @lots = @project.lots
  end

  def create
    @lot = Lot.new(lot_params)
    @lot.project = @project

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      @lot.plan_url = req['public_id']
    end

    respond_to do |format|
      if @lot.save
        format.html { redirect_to project_lots_path, notice: "Lot was successfully created"}
        format.json { render :show, status: :created, location: @lot }
      else
        format.html { render :new }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end 
    end

  end

  def show
  end

  def edit
  end

  def update

    @lot.update(lot_params)

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      @lot.plan_url = req['public_id']
    end

    respond_to do |format|
      if @lot.save
        format.html { redirect_to project_lots_path, notice: 'Lot was successfully updated.' }
        format.json { render :show, status: :ok, location: @lot }
      else
        format.html { render :edit }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lot.destroy
    redirect_to project_lots_path
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_lot
    @lot = Lot.find(params[:id])
  end

  def lot_params
    params.require(:lot).permit(:lot_no, 
                                :beds,
                                :baths,
                                :carpots,
                                :in_sqm,
                                :out_sqm,
                                :total_sqm,
                                :floor_level,
                                :plan_url,
                                :description,
                                :status,
                                :price,
                                :room_type,
                                :room_dir
                              )
  end 


end
