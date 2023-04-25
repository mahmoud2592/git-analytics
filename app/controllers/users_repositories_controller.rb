class UsersRepositoriesController < ApplicationController
  before_action :set_users_repository, only: %i[ show edit update destroy ]

  # GET /users_repositories or /users_repositories.json
  def index
    @users_repositories = UsersRepository.all
  end

  # GET /users_repositories/1 or /users_repositories/1.json
  def show
  end

  # GET /users_repositories/new
  def new
    @users_repository = UsersRepository.new
  end

  # GET /users_repositories/1/edit
  def edit
  end

  # POST /users_repositories or /users_repositories.json
  def create
    @users_repository = UsersRepository.new(users_repository_params)

    respond_to do |format|
      if @users_repository.save
        format.html { redirect_to users_repository_url(@users_repository), notice: "Users repository was successfully created." }
        format.json { render :show, status: :created, location: @users_repository }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_repositories/1 or /users_repositories/1.json
  def update
    respond_to do |format|
      if @users_repository.update(users_repository_params)
        format.html { redirect_to users_repository_url(@users_repository), notice: "Users repository was successfully updated." }
        format.json { render :show, status: :ok, location: @users_repository }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_repositories/1 or /users_repositories/1.json
  def destroy
    @users_repository.destroy

    respond_to do |format|
      format.html { redirect_to users_repositories_url, notice: "Users repository was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_repository
      @users_repository = UsersRepository.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_repository_params
      params.require(:users_repository).permit(:user_id, :repository_id, :date_added, :last_viewed)
    end
end
