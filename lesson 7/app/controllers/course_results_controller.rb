class CourseResultsController < ApplicationController
  before_action :set_course_result, only: [:show, :update, :destroy]

  # GET /course_results
  def index
    @course_results = CourseResult.all

    render json: @course_results
  end

  # GET /course_results/1
  def show
    render json: @course_result
  end

  # POST /course_results
  def create
    @course_result = CourseResult.new(course_result_params)

    if @course_result.save
      render json: @course_result, status: :created, location: @course_result
    else
      render json: @course_result.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_results/1
  def update
    if @course_result.update(course_result_params)
      render json: @course_result
    else
      render json: @course_result.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_results/1
  def destroy
    @course_result.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_result
      @course_result = CourseResult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_result_params
      params.require(:course_result).permit(:created_at, :usd, :eur, :rur)
    end
end
