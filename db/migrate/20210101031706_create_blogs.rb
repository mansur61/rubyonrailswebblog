class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :baslik
      t.string :icerik

      t.timestamps
    end
  end
end
