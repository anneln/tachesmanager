class CreateTaches < ActiveRecord::Migration
  def change
    create_table :taches do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
