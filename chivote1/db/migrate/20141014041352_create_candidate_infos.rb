class CreateCandidateInfos < ActiveRecord::Migration
  def change
    create_table :candidate_infos do |t|
      t.belongs_to :candidate, index: true
      t.string :type
      t.string :title
      t.string :link
      t.string :image
      t.string :summary

      t.timestamps
    end
  end
end
