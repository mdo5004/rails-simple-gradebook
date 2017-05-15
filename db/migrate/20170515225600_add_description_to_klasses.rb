class AddDescriptionToKlasses < ActiveRecord::Migration[5.0]
  def change
      add_column :klasses, :description, :text
  end
end
