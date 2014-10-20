class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.belongs_to :candidate, index: true
      t.string :type
      t.string :organization
      t.string :response

      t.timestamps
    end
  end
end
