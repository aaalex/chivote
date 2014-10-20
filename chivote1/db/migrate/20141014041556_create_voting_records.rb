class CreateVotingRecords < ActiveRecord::Migration
  def change
    create_table :voting_records do |t|
      t.belongs_to :candidate, index: true
      t.belongs_to :current_official, index: true
      t.string :location
      t.string :legislation
      t.string :response

      t.timestamps
    end
  end
end
