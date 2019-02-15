def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_number, array_of_contestant_hashes|
  if(season_number==season)
    array_of_contestant_hashes.each do |contestant_hash|
      if(contestant_hash["status"]=="Winner")
        winner = contestant_hash["name"].split[0]
      end
    end
  end
end
return winner
end

def get_contestant_name(data, occupation_in_question)
  contestant_name = ""
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.each do |contestant_hash|
      if(contestant_hash["occupation"]==occupation_in_question)
        contestant_name = contestant_hash["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.each do |contestant_hash|
      if(contestant_hash["hometown"]==hometown)
        count = count+1
      end
    end
  end
count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.find do |contestant_hash|
      if(contestant_hash["hometown"]==hometown)
        occupation = contestant_hash["occupation"]
      end
    end
  end
occupation
end

def get_average_age_for_season(data, season)
  total_age = 0
  avg_age = 0
  no_of_contestants = 0
  data.fetch(season).each do |contestant_hash|
      total_age = total_age + contestant_hash["age"].to_f
      no_of_contestants+=1
    end

avg_age = (total_age/no_of_contestants).round
end
