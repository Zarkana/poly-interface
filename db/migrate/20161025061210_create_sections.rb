class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :plot_count
      t.references :interface, foreign_key: true

      t.timestamps
    end
  end
end
