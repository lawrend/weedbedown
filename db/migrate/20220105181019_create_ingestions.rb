class CreateIngestions < ActiveRecord::Migration[7.0]
  def change
    create_table :ingestions do |t|
      t.datetime :dateAndTime
      t.references :user, null: false, foreign_key: true
      t.string :method
      t.string :strain

      t.timestamps
    end
  end
end
