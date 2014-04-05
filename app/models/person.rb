class Person < ActiveRecord::Base

def self.search(search)
  if search
    where('nome LIKE ? OR cognome LIKE ? OR mail LIKE ? OR tel1 LIKE ? OR tel2 LIKE ? OR tel3 LIKE ? OR indirizzo LIKE ? OR comune LIKE ? OR provincia LIKE ? OR regione LIKE ? OR incarico LIKE ? OR seggio LIKE ?',
    	 "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  else
    scoped
  end
end



end
