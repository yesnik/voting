class ChangeFieldDefault < ActiveRecord::Migration
  def change
    change_column :votes, :nomination_id, :int, :null => false
    change_column :votes, :candidate_id, :int, :null => false
    change_column :votes, :ip, :string, :null => false
  end
end
