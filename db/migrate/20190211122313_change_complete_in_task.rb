class ChangeCompleteInTask < ActiveRecord::Migration[5.2]
  def change
  	change_column :tasks, :completed, :boolean, boolean: false 
  	 end
end
