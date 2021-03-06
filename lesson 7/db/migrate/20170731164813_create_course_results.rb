class CreateCourseResults < ActiveRecord::Migration[5.0]
  def change
    create_table :course_results do |t|
      t.timestamp :created_at
      t.decimal :usd, precision: 8, scale: 2
      t.decimal :eur, precision: 8, scale: 2
      t.decimal :rur, precision: 8, scale: 2
    end
  end
end
