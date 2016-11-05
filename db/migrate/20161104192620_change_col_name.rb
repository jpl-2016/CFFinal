class ChangeColName < ActiveRecord::Migration
  def change
    rename_column :election_types, :type, :ectype
    rename_column :contribution_types, :type, :contype
    rename_column :expend_types, :type, :extype
    rename_column :filer_types, :type, :ftype
  end
end
