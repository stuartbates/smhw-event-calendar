class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
    end
    add_index :events, :start_date
    add_index :events, :end_date
  end
end
