class Degree < ActiveRecord::Base
  attr_accessible :degree_type, :graduated_day, :graduated_month, :graduated_year, :institution, :people_importer_id, :subject
end
