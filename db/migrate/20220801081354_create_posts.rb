class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.datetime :match_date_time
      t.string :category
      t.string :home_team
      t.string :away_team
      t.text :boby

      t.timestamps
    end
  end
end
