class RemoveFileColumnFromTracks < ActiveRecord::Migration
  def self.up
    remove_column :tracks, :file
  end

  def self.down
    # fuck off
  end
end
