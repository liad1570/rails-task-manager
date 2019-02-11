class ChangeDeailsInTask < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tasks, :deails, :details
  end
end
