class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.text :num
      t.text :name
      t.text :img
      t.text :height
      t.text :weight
      t.text :candy
      t.integer :candy_count
      t.text :egg
      t.integer :avg_spawns
      t.text :spawn_time

      t.timestamps
    end
  end
end
