class CreateLifepointes < ActiveRecord::Migration[5.0]
  def change
    create_table :lifepointes do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
