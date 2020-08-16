class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :creator_id
      t.string :ph_id
      t.string :ph_url
      t.string :ph_topic
      t.integer :topic_id
      t.integer :ph_likes
      t.integer :ph_comments
      t.date :ph_launchdate

      t.timestamps
    end
  end
end
