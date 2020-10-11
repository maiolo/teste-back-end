class Api::V1::ContactsController < Api::V1::BaseController
  before_action :set_contact, only: [ :destroy ]

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
        render :index
    else
      render_error
    end
  end

  def destroy
    @contact.destroy
    head :no_content
  end
  
  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email)
  end

  def render_error
    render json: { errors: @contact.errors.full_messages },
      status: :unprocessable_entity
  end

end
