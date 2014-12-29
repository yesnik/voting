class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :cadidate, index: true
      t.references :nonination, index: true
      t.string :ip

      t.timestamps
    end
  end
end
