class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.integer :people_importer_id
      t.string :degree_type
      t.string :subject
      t.string :institution
      t.integer :graduated_year
      t.integer :graduated_month
      t.integer :graduated_day

      t.timestamps
    end
  end
end
