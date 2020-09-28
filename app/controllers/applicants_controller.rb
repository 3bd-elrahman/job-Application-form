class ApplicantsController < ApplicationController
http_basic_authenticate_with name:'admin',password:'admin123',only:[:admin]
	def admin
		@applicants=Applicant.all
	end
  def new
  	@applicant= Applicant.new
  end

  def create
  	@applicant=Applicant.create(applicant_param)

  	if @applicant.save
  		redirect_to action: :new, notice:'your application submitted successifully'
  	end
  end

  def applicant_param
  	params.require(:applicant).permit(:name,:age,:mobile,:email,:faculty,:file,:city)
  end
end
