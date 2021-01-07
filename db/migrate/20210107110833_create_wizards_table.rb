class CreateWizardsTable < ActiveRecord::Migration[6.1]
  def change
   create_table :wizards do |t|
      t.string :name
      t.integer :age
      t.string :pet
      t.string :school
      t.references :school
      t.timestamps
   end
  end
end
