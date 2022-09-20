class ChangeTimeToDateTime < ActiveRecord::Migration[7.0]
  def change
    change_column :educations, :start_date, :datetime
    change_column :educations, :end_date, :datetime
  end
end
