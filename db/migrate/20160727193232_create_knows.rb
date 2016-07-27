class CreateKnows < ActiveRecord::Migration
  def change
    create_table :knows do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
