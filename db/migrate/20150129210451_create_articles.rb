class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :release_year
      t.string :topic

      t.timestamps
    end
  end
end
