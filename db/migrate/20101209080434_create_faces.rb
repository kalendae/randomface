class CreateFaces < ActiveRecord::Migration
  def self.up
    create_table :faces do |t|
      t.column :fb_id, 'BIGINT UNSIGNED'
    end
  end

  def self.down
    drop_table :faces
  end
end
