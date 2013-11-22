class CreateCcjobs < ActiveRecord::Migration
  def change
    create_table :ccjobs do |t|
      t.string :name
      t.string :job_file_url
      t.string :input_bucket_url
      t.string :output_bucket_url
      t.string :status

      t.timestamps
    end
  end
end
