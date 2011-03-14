class CreateInvites < ActiveRecord::Migration
  def self.up
    create_table :invites do |t|
      t.string :name
      t.integer :question_id

      t.timestamps
    end
  end

  def self.down
    drop_table :invites
  end
end
