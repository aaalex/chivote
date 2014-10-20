class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :external_id
      t.string :name
      t.string :description
      t.belongs_to :jurisdiction, index: true
      t.string :term_length
      t.string :term_limit

      t.timestamps
    end
  end
end
