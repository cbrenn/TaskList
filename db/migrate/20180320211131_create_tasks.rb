class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :priority
      t.string :start_date
      t.string :datetime
      t.datetime :completion_date

      t.timestamps
    end
  end
end
