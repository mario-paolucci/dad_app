class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nome
      t.string :cognome
      t.string :mail
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.string :indirizzo
      t.string :comune
      t.string :provincia
      t.string :regione
      t.string :incarico
      t.string :seggio
      t.string :riferimento

      t.timestamps
    end
  end
end
