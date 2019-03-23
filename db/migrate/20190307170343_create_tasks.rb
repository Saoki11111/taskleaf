class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      # null:falseで空文字の保存を防ぐ
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
