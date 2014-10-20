class CreateCurrentOfficials < ActiveRecord::Migration
  def change
    create_table :current_officials do |t|
      t.string :external_id
      t.string :first_name
      t.string :last_name
      t.belongs_to :office, index: true
      t.string :phone
      t.string :email
      t.datetime :term_start_date
      t.datetime :term_end_date

      t.timestamps
    end
  end
end
