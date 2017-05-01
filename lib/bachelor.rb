require "pry"

def get_first_name_of_season_winner(data, season)
  answer = ""
  data.each do |selected_season, contestants|
    if season == selected_season
      contestants.each do |contestant_hash|
        if contestant_hash["status"] == "Winner"
          answer = contestant_hash["name"]
        end
      end
    end
  end
  answer_array = answer.split
  answer_array[0]
end

def get_contestant_name(data, occupation)
  answer = ""
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        answer = contestant_hash["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  answer = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        answer += 1
      end
    end
  end
  answer
end

def get_occupation(data, hometown)
  answer = ""
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        answer = contestant_hash["occupation"]
        break
      end
    end
  end
  answer
end

def get_average_age_for_season(data, season)
  answer = 0
  divisor = 0
  data.each do |selected_season, contestants|
    if selected_season == season
      contestants.each do |contestant_hash|
        divisor += 1
        answer += contestant_hash["age"].to_f
      end
    end
  end
  answer = (answer/divisor).round(0)
  answer
end
