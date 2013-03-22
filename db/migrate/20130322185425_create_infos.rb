class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :tag_list
      t.string :twitter_username
      t.string :birthplace
      t.integer :born_year
      t.string :born_month
      t.string :born_day

      t.timestamps
    end
  end
end
