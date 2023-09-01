class CreateEpUspEsi2023s < ActiveRecord::Migration[7.0]
  def change
    create_table :ep_usp_esi_2023s do |t|
      t.string :Post
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
