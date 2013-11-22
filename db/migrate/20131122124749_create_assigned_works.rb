class CreateAssignedWorks < ActiveRecord::Migration
  def change
    create_table :assigned_works do |t|
      t.integer :ccjob_id
      t.integer :pc_owner_id
      t.string :input_portion
      t.string :status
      t.integer :progress

      t.timestamps
    end
  end
end
