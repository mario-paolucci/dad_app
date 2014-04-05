json.array!(@people) do |person|
  json.extract! person, :id, :nome, :cognome, :mail, :tel1, :tel2, :tel3, :indirizzo, :comune, :provincia, :regione, :incarico, :seggio, :riferimento
  json.url person_url(person, format: :json)
end
