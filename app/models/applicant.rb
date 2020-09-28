class Applicant < ApplicationRecord

	has_one_attached :file

	validates :name,:age,:mobile,:email,:faculty,:file,:city ,presence:true
end
