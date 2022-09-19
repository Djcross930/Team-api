class FixTheRestOfTheDates < ActiveRecord::Migration[7.0]
  def change
    remove_column :educations, :end_date, :time
    add_column :educations, :end_date, :date
    remove_column :experiences, :start_date, :time
    add_column :experiences, :start_date, :date
    remove_column :experiences, :end_date, :time
    add_column :experiences, :end_date, :date
    
  end
end
