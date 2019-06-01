class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :last_name
      t.string :nick
      t.string :fb_link
      t.string :insta_link
      t.string :lnk_link
      t.string :twitt_link
      t.text   :bio
      t.string :rol
      t.date :birthday

      t.timestamps
    end
  end
end
