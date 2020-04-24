class Companies::ProfileController < ActionController::Base
  before_action :authenticate_company!

 def show
   @profile = current_company.profile
 end

 def new
   @profile = Profile.new
 end

 def create
   @profile = Profile.new(profile_param)
   @profile.profileable = current_company
   if @profile.save
     flash[:notice] = "Profile Successfully Created"
     redirect_to companies_profile_path
   else
     flash[:alert] = @profile.errors.full_messages
      render 'new'
   end
 end

 private

 def profile_param
   params.require(:profile).permit(:bio, :image)
 end
end
