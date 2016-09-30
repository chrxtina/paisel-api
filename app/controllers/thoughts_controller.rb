class ThoughtsController < ApplicationController
  before_action :set_thought, only: [:show, :update, :destroy]

  # GET /thoughts
  # GET /thoughts.json
  def index
    @thoughts = Thought.all

    render json: @thoughts
  end

  # GET /thoughts/1
  # GET /thoughts/1.json
  def show
    render json: @thought
  end

  # POST /thoughts
  # POST /thoughts.json
  def create
    @thought = Thought.new(thought_params)

    if @thought.save
      render json: @thought, status: :created, location: @thought
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thoughts/1
  # PATCH/PUT /thoughts/1.json
  def update
    @thought = Thought.find(params[:id])

    if @thought.update(thought_params)
      head :no_content
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thoughts/1
  # DELETE /thoughts/1.json
  def destroy
    @thought.destroy

    head :no_content
  end

  private

  def set_thought
    @thought = Thought.find(params[:id])
  end

  def thought_params
    params.require(:thought).permit(:content, :user_id)
  end
end
