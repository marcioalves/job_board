class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nome
      t.text :body
      t.integer :job_id

      t.timestamps
    end
  end
end
