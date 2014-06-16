class CreateForemMemberships < ActiveRecord::Migration
  def change
    create_table :forem_memberships do |t|
      t.integer :group_id
      t.references :membershipable, polymorphic: true
    end

    add_index :forem_memberships, :group_id
    add_index :forem_memberships, [:membershipable_id, :membershipable_type], name: 'membershipable_index'
  end
end
