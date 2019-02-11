class ChangeComleatedInTask < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tasks, :comleted, :completed
  end
end
