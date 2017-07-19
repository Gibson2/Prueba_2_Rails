class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :code
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
