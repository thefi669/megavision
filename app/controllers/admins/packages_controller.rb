class Admins::PackagesController < Admins::BaseController
  before_action :set_package, only: [:edit, :update, :destroy]

  # GET /packages
  def index
    @packages = Package.all
  end

  # GET /packages/new
  def new
    @package = Package.new
  end

  # GET /packages/1/edit
  def edit
  end

  # POST /packages
  def create
    @package = Package.new(package_params)

    if @package.save
      redirect_to admins_packages_path, notice: 'Package was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /packages/1
  def update
    if @package.update(package_params)
      redirect_to admins_packages_path, notice: 'Package was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /packages/1
  def destroy
    @package.destroy
    redirect_to admins_packages_path, notice: 'Package was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def package_params
      params.require(:package).permit(:name, :payment_title)
    end
end
