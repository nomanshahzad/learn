class Students < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_num
    end
    
    
  end
end
