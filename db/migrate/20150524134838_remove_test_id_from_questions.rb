class RemoveTestIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :test_id
  end
end
