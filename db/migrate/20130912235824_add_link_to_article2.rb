class AddLinkToArticle2 < ActiveRecord::Migration
  def change
  	add_column :articles, :link, :text
  end
end
