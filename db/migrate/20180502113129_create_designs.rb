class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.text     :comment
      t.integer  :user_id
    end
  end
end
