class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :album_id
      t.string :integer
      t.string :image
      t.string :tagline

      t.timestamps
    end
  end
end
