class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, uniqueness: true, null: false, default: ''
      t.string :password_digest

      t.timestamps
    end
  end
end
