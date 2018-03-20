class AmendStartDate < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tasks, :datetime)
    remove_column(:tasks, :start_date)
    add_column(:tasks, :start_date, :datetime)
  end
end
