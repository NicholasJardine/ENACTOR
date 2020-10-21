class UsersController < Devise::RegistrationsController
    skip_before_action :authenticate_user!
      before_action :configure_permitted_perameters, if: :devise_controller?


  def show
    @user = current_user
    @u = User.find(params[:id])
    @private_brief = PrivateBrief.new
    @posts = Post.where(user_id: @u.id)
  end

  def edit

      super do |resource|
        if resource.age <30 && resource.age > 19
          resource.age_range = "20-29"
        end

                if resource.age <20 && resource.age > 9
          resource.age_range = "10-19"
        end

        if resource.age <40 && resource.age > 29
          resource.age_range = "30-39"
        end
        if resource.age <50 && resource.age > 39
          resource.age_range = "40-49"
        end

        if resource.age <60 && resource.age > 49
          resource.age_range = "50-59"
        end

        if resource.age <70 && resource.age > 59
          resource.age_range = "60-69"
        end

        if resource.age <80 && resource.age > 69
          resource.age_range = "70-79"
        end

        resource.save
      end

  end

  def create

        super do |resource|
        if resource.age <30 && resource.age > 19
          resource.age_range = "20-29"
        end

                if resource.age <20 && resource.age > 9
          resource.age_range = "10-19"
        end

        if resource.age <40 && resource.age > 29
          resource.age_range = "30-39"
        end
        if resource.age <50 && resource.age > 39
          resource.age_range = "40-49"
        end

        if resource.age <60 && resource.age > 49
          resource.age_range = "50-59"
        end

        if resource.age <70 && resource.age > 59
          resource.age_range = "60-69"
        end

        if resource.age <80 && resource.age > 69
          resource.age_range = "70-79"
        end

        resource.save
      end


  end



  protected

  def configure_permitted_perameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:occupation, :email, :password, :photo, :accepted_terms, :age, :age_range)}
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:occupation, :email, :password, :photo)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:occupation, :email, :password, :password_confirmation, :current_password, :name, :age, :gender, :ethnicty, :photo, :bio, :address,:contact_details, :age_range, :agent_details, :talents, :socialmedia, :website, :cv, :ciricv)}
  end

end

