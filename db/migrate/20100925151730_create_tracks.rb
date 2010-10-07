class CreateTracks < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.string :name
      t.string :file
      t.integer :user_id
      t.date :date
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :tracks
  end
end
