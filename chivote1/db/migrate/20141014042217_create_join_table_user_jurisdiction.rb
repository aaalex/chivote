class CreateJoinTableUserJurisdiction < ActiveRecord::Migration
  def change
    create_join_table :users, :jurisdictions do |t|
      # t.index [:user_id, :jurisdiction_id]
      # t.index [:jurisdiction_id, :user_id]
    end
  end
end
