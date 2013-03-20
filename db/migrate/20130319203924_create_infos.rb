class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :tag_list
      t.string :twitter_username

      t.timestamps
    end
  end
end
