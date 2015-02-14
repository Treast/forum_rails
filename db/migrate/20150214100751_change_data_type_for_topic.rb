class ChangeDataTypeForTopic < ActiveRecord::Migration
  def change
    change_column :topics, :body, :text
  end
end
