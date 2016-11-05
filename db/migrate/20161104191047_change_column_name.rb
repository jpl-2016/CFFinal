class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :report_types, :type, :rtype
  end
end
