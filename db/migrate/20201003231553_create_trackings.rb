class CreateTrackings < ActiveRecord::Migration[6.0]
  def change
    create_table :trackings do |t|
      t.string :uuid
      t.string :page

      t.timestamps
    end
  end
end
