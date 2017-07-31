class CreateSourceProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :source_providers do |t|
      t.string :name, unique: true, null: false, blank: false
      t.string :url, unique: true, null: false, blank: false
      t.string :address, null: false, blank: false
      t.datetime :last_sync_at

      t.timestamps
    end
  end
end
