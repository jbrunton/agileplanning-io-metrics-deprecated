class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.integer :frequency
      t.string :title
      t.text :recipients
      t.datetime :last_sent

      t.timestamps null: false
    end
  end
end
