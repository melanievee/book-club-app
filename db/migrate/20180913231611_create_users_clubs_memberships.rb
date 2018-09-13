class CreateUsersClubsMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.timestamps
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end

    create_table :memberships do |t|
      t.belongs_to :club, index: true
      t.belongs_to :user, index: true
      t.boolean :is_admin
      t.timestamps
    end
  end
end
