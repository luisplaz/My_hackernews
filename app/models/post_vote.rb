class PostVote < ActiveRecord::Base

  # validate :alreadyvoted?

  belongs_to :user
  belongs_to :post



  # def alreadyvoted?

  #   binding.pry

  #   PostVote.find_by



  # end


end
