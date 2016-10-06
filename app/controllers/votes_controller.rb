class VotesController < ProtectedController
  before_action :set_vote, only: [:update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    @vote = Vote.find(params[:id])
    render json: @vote
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = current_user.votes.build(vote_params)

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    if @vote.update(vote_params)
      head :no_content
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy

    head :no_content
  end

  private

  def set_vote
    @vote = current_user.vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:user_id, :thought_id, :choice)
  end
end
