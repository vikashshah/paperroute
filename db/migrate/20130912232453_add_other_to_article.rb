class AddOtherToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :source, :text
  	add_column :articles, :location, :text
  end
end
