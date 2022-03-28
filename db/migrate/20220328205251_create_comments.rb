class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comments
      t.integer :animal_id
      t.integer :adopter_id
    end
  end
end
