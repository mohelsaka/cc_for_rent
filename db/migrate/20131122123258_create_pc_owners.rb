class CreatePcOwners < ActiveRecord::Migration
  def change
    create_table :pc_owners do |t|
      t.string :name
      t.string :ip
      t.integer :revenu

      t.timestamps
    end
  end
end
