class CreateForemMemberships < ActiveRecord::Migration
  def change
    create_table :forem_memberships do |t|
      t.integer :group_id
      t.references :membershipable, polymorphic: true
    end

    add_index :forem_memberships, :group_id
  end
end
