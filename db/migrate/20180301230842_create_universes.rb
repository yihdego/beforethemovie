class CreateUniverses < ActiveRecord::Migration[5.1]
  def change
    create_table :universes do |t|
      t.string :name
      t.string :blurb

      t.timestamps
    end
  end
end
