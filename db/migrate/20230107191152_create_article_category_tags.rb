class CreateArticleCategoryTags < ActiveRecord::Migration[7.0]
  def change
    create_table :article_category_tags do |t|
      t.references :article, null: false, foreign_key: true
      t.references :article_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
