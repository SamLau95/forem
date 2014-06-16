class CreateForemTopics < ActiveRecord::Migration
  def change
    create_table :forem_topics do |t|
      t.integer :forum_id
      t.references :topicable, polymorphic: true
      t.string :subject

      t.timestamps
    end
  end
end
