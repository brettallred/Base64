class CreateCharsets < ActiveRecord::Migration
  def change
    create_table :charsets do |t|
      t.integer :id
      t.string :caption

      t.timestamps
    end
  end
end
