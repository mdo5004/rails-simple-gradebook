class CreateKlasses < ActiveRecord::Migration[5.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end
  end
end
