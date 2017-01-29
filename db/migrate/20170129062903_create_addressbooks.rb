class CreateAddressbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :addressbooks do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
