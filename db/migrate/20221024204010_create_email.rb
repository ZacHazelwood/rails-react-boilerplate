class CreateEmail < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :body
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end