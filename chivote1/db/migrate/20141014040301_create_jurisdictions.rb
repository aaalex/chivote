class CreateJurisdictions < ActiveRecord::Migration
  def change
    create_table :jurisdictions do |t|
      t.string :type
      t.string :name
      t.string :external_id

      t.timestamps
    end
  end
end
