class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :deails
      t.boolean :comleted , default: 0

      t.timestamps
    end
  end
end
