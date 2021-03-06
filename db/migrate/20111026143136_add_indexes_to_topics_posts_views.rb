class AddIndexesToTopicsPostsViews < ActiveRecord::Migration
  def change
    add_index :forem_topics, :forum_id
    add_index :forem_topics, [:topicable_id, :topicable_type]
    add_index :forem_posts, :topic_id
    add_index :forem_posts, [:postable_id, :postable_type]
    add_index :forem_posts, :reply_to_id
    add_index :forem_views, :user_id
    add_index :forem_views, :topic_id
    add_index :forem_views, :updated_at
  end
end
