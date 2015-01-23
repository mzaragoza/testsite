class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string  :name, default: ''
      t.text    :content
      t.integer :position
      t.timestamps
    end
  end
end
