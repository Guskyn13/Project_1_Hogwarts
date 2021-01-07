class CreateWizardsTable < ActiveRecord::Migration[6.1]
  def change
   create_table :wizards do |t|
      t.string :name
      t.integer :age
      t.string :DOB
      t.string :pet
   end
  end
end
