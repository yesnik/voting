class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
