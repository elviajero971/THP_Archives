require 'time'

# Un événement est défini par une date de début, une durée, un titre, un ou plusieurs utilisateurs.
# Il faut être capable de décaler un événement au lendemain, même heure.
# Il faut qu'il soit possible de récupérer des informations comme :
# La date de fin ;
# Savoir si un événement est passé ou non ;
# Savoir si un événement est dans moins de 30 minutes (au cas où nous voudrions envoyer un rappel).
# Il faut que l'on soit capables d'afficher de manière présentable un événement

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date = @start_date + 24 * 60 * 60
  end

  def end_date
    @start_date + (duration * 60 * 60)
  end

  def is_past?
    @start_date < Time.now ? true : false
  end

  def is_futur?
    @start_date > Time.now ? true : false
  end

  def is_soon?
    if Time.now < @start_date
      @start_date - Time.now < 60 * 30 ? true : false
    else
      false
    end
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée :#{@duration} minutes"
    puts "> Invités : #{@attendees}"
  end

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / ( @attendees.length ) #on divise la somme des âges pour avoir la moyenne

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
end

class WorkEvent < Event
  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end