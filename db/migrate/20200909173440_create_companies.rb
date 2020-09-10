class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.date :found_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
