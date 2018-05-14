class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.text        :comment
      t.references  :user, foreign_key: true
      t.integer     :likes_count
    end
  end
end
