class VotingRecord < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :current_official
end
