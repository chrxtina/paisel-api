class ThoughtsController < ProtectedController
  before_action :set_thought, only: [:update, :destroy]

  # GET /thoughts
  # GET /thoughts.json
  def index
    @thoughts = Thought.all.reverse

    render json: @thoughts
  end

  def mythoughts
    @thoughts = Thought.where("user_id=#{current_user.id}")
    render json: @thoughts
  end

  # GET /thoughts/1
  # GET /thoughts/1.json
  def show
    @thought = Thought.find(params[:id])
    render json: @thought
  end

  # POST /thoughts
  # POST /thoughts.json
  def create
    @thought = current_user.thoughts.build(thought_params)

    if @thought.save
      render json: @thought, status: :created, location: @thought
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thoughts/1
  # PATCH/PUT /thoughts/1.json
  def update
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
    @thought = current_user.thoughts.find(params[:id])
  end

  def thought_params
    params.require(:thought).permit(:content, :user_id)
  end
end
