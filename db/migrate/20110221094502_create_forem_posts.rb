class CreateForemPosts < ActiveRecord::Migration
  def change
    create_table :forem_posts do |t|
      t.integer :topic_id
      t.text :text
      t.references :postable, polymorphic: true

      t.timestamps
    end
  end
end
