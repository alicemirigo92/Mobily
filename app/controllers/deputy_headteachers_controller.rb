class DeputyHeadteachersController < ApplicationController
  before_action :set_deputy_headteacher, only: %i[ show update destroy ]

  # GET /deputy_headteachers
  def index
    @deputy_headteachers = DeputyHeadteacher.all

    render json: @deputy_headteachers
  end

  # GET /deputy_headteachers/1
  def show
    render json: @deputy_headteacher
  end

  # POST /deputy_headteachers
  def create
    @deputy_headteacher = DeputyHeadteacher.new(deputy_headteacher_params)

    if @deputy_headteacher.save
      render json: @deputy_headteacher, status: :created, location: @deputy_headteacher
    else
      render json: @deputy_headteacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deputy_headteachers/1
  def update
    if @deputy_headteacher.update(deputy_headteacher_params)
      render json: @deputy_headteacher
    else
      render json: @deputy_headteacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deputy_headteachers/1
  def destroy
    @deputy_headteacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deputy_headteacher
      @deputy_headteacher = DeputyHeadteacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deputy_headteacher_params
      params.require(:deputy_headteacher).permit(:user_id, :school_id)
    end
end
