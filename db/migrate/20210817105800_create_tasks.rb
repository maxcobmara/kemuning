class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string  :code
      t.string  :title
      t.string  :security
      t.integer :position_id
      t.string  :owner
      t.string  :description

      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
