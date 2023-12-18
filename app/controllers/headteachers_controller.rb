class HeadteachersController < ApplicationController
  before_action :set_headteacher, only: %i[ show update destroy ]

  # GET /headteachers
  def index
    @headteachers = Headteacher.all

    render json: @headteachers
  end

  # GET /headteachers/1
  def show
    render json: @headteacher
  end

  # POST /headteachers
  def create
    @headteacher = Headteacher.new(headteacher_params)

    if @headteacher.save
      render json: @headteacher, status: :created, location: @headteacher
    else
      render json: @headteacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /headteachers/1
  def update
    if @headteacher.update(headteacher_params)
      render json: @headteacher
    else
      render json: @headteacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /headteachers/1
  def destroy
    @headteacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headteacher
      @headteacher = Headteacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def headteacher_params
      params.require(:headteacher).permit(:user_id, :school_id)
    end
end
