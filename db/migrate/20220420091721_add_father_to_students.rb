class AddFatherToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :father, :string
  end
end
