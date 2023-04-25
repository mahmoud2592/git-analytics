class RepositoriesTagsController < ApplicationController
  before_action :set_repositories_tag, only: %i[ show edit update destroy ]

  # GET /repositories_tags or /repositories_tags.json
  def index
    @repositories_tags = RepositoriesTag.all
  end

  # GET /repositories_tags/1 or /repositories_tags/1.json
  def show
  end

  # GET /repositories_tags/new
  def new
    @repositories_tag = RepositoriesTag.new
  end

  # GET /repositories_tags/1/edit
  def edit
  end

  # POST /repositories_tags or /repositories_tags.json
  def create
    @repositories_tag = RepositoriesTag.new(repositories_tag_params)

    respond_to do |format|
      if @repositories_tag.save
        format.html { redirect_to repositories_tag_url(@repositories_tag), notice: "Repositories tag was successfully created." }
        format.json { render :show, status: :created, location: @repositories_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repositories_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repositories_tags/1 or /repositories_tags/1.json
  def update
    respond_to do |format|
      if @repositories_tag.update(repositories_tag_params)
        format.html { redirect_to repositories_tag_url(@repositories_tag), notice: "Repositories tag was successfully updated." }
        format.json { render :show, status: :ok, location: @repositories_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repositories_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repositories_tags/1 or /repositories_tags/1.json
  def destroy
    @repositories_tag.destroy

    respond_to do |format|
      format.html { redirect_to repositories_tags_url, notice: "Repositories tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repositories_tag
      @repositories_tag = RepositoriesTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repositories_tag_params
      params.require(:repositories_tag).permit(:repository_id, :tag_id)
    end
end
