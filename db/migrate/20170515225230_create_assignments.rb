class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :klass_id

      t.timestamps
    end
  end
end
