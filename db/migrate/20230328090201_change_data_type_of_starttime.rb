class ChangeDataTypeOfStarttime < ActiveRecord::Migration[7.0]
  def change
    change_column :tracks, :starttime, 'timestamp with time zone USING starttime::timestamp with time zone'
  end
end
