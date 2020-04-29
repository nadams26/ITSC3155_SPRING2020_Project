class Rating < ActiveRecord::Base
  belongs_to :article, optional: true
  belongs_to :user, optional: true
  
  # validates_presence_of :article
  # validates_inclusion_of :rating, :in => 1..5
end