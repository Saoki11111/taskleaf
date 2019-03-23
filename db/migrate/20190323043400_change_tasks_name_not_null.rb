class ChangeTasksNameNotNull < ActiveRecord::Migration[5.2]
  def change
      # カラムの変更nullを不可にする
      change_column_null :tasks, :name, false
  end
end
