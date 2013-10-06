class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :middle
      t.string :last
      t.string :email
      t.string :phone
      t.string :textbox

      t.timestamps
    end
  end
end
