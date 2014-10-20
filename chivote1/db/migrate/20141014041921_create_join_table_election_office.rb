class CreateJoinTableElectionOffice < ActiveRecord::Migration
  def change
    create_join_table :elections, :offices do |t|
      # t.index [:election_id, :office_id]
      # t.index [:office_id, :election_id]
    end
  end
end
