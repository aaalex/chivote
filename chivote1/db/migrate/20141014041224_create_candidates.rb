class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :external_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.belongs_to :office, index: true
      t.belongs_to :race, index: true
      t.string :image

      t.timestamps
    end
  end
end
