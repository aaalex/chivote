class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :external_id
      t.string :type
      t.datetime :date
      t.belongs_to :jurisdiction, index: true

      t.timestamps
    end
  end
end
