class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :id
      t.string :fact

      t.timestamps
    end
  end
end
