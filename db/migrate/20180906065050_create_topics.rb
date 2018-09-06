class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :topic_name
      t.string :description
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
