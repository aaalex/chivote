class Candidate < ActiveRecord::Base
  belongs_to :office
  belongs_to :race
end
