class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|
      t.references :user, index: true
      t.references :connect, index: true

      t.timestamps
    end
  end
end
