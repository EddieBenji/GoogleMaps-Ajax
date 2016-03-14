class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy, :bio,
                                    :custom_email]

  # GET /zombies
  # GET /zombies.json
  def index
    @zombies = Zombie.includes(:brain).all #eduardo
  end

  # GET /zombies/1
  # GET /zombies/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zombie }
    end
  end

  # GET /zombies/new
  def new
    @zombie = Zombie.new
  end

  # GET /zombies/1/edit
  def edit
  end

  def bio
    if @zombie.bio != 'Software Engineer'
      render json: @zombie.to_json(only: :name), status: :unprocessable_entity
    else
      render json: @zombie.to_json(only: :name)
    end
  end

  def search

  end

  def custom_email
    @zombie.update_attribute(:email, params[:zombie][:email])
    respond_to do |format|
      # format.json { render json: @zombie.to_json(only: :email) }
      format.js
    end
  end

  # POST /zombies
  # POST /zombies.json
  def create
    @zombie = Zombie.new(zombie_params)

    respond_to do |format|
      if @zombie.save
        # format.html { redirect_to @zombie, notice: 'Zombie was successfully created.' }
        format.html { redirect_to zombies_path }

        format.json { render :show, status: :created, location: @zombie }
      else
        format.html { render :new }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /zombies/1
  # PATCH/PUT /zombies/1.json
  def update
    respond_to do |format|
      if @zombie.update(zombie_params)
        format.html { redirect_to @zombie, notice: 'Zombie was successfully updated.' }
        format.json { render :show, status: :ok, location: @zombie }
      else
        format.html { render :edit }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zombies/1
  # DELETE /zombies/1.json
  def destroy
    @zombie_destroyed = @zombie
    @zombie.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to zombies_url, notice: 'Zombie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zombie
    @zombie = Zombie.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zombie_params
    params.require(:zombie).permit(:name, :bio, :age)
  end
end
