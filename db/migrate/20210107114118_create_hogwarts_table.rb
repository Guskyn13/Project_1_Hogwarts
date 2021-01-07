class CreateHogwartsTable < ActiveRecord::Migration[6.1]
  def change
   create_table :hogwarts do |t|
      t.references :wizard
      t.references :school
   end
  end
end
