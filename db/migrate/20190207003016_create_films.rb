class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.string :director
      t.string :producer
      t.integer :release_date
      t.integer :rt_score

      t.timestamps
    end
  end
end
