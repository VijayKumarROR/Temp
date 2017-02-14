class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :project
      t.string :hour
      t.text :description
      t.binary :image

      t.timestamps
    end
  end
end
