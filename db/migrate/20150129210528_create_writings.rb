class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.integer :author_id
      t.integer :article_id
      t.integer :order
      t.datetime :created

      t.timestamps
    end
  end
end
