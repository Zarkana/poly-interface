class CreateInterfaces < ActiveRecord::Migration[5.0]
  def change
    create_table :interfaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
