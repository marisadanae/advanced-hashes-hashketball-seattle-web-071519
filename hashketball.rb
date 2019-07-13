require "pry"

def game_hash
  hash = {

 :home => {
 :team_name => "Brooklyn Nets",
 :colors => ["Black", "White"],
 :players => [

      { player_name: "Andy Anderson", number:  0, shoe: 16, points: 22,rebounds: 12, assists: 12, steals: 3,
                  blocks: 1, slam_dunks: 1},

      { player_name: "Reggie Evans", number: 30, shoe: 14, points: 12,rebounds: 12, assists: 12, steals: 12,
                  blocks: 12, slam_dunks: 7},

       { player_name: "Brook Lopez", number: 11, shoe: 17, points: 7,rebounds: 19, assists: 10, steals: 3,
                  blocks: 1, slam_dunks: 5},

      { player_name: "Mason Plumlee", number: 1, shoe: 19, points: 26,rebounds: 11, assists: 16, steals: 3,
                  blocks: 8, slam_dunks: 5},

      { player_name: "Jason Terry", number: 31, shoe: 15, points: 19,rebounds: 2, assists: 2, steals: 4,
                  blocks: 11, slam_dunks: 1}

    ]
    },

  :away => {
  :team_name => "Charlotte Hornets",
  :colors => ["Turquoise", "Purple"],

    :players => [
      { player_name: "Jeff Adrien", number: 4, shoe: 18, points: 10,rebounds: 1, assists: 1, steals: 2,
          blocks: 7, slam_dunks: 2},

      { player_name: "Bismack Biyombo", number: 0, shoe: 16, points: 12,rebounds: 4, assists: 7, steals: 22,
          blocks: 15, slam_dunks: 10},

      { player_name: "DeSagna Diop", number: 2, shoe: 14, points: 24,rebounds: 12, assists: 12, steals: 4,
          blocks: 5, slam_dunks: 5},

      { player_name: "Ben Gordan", number: 8, shoe: 15, points: 33,rebounds: 3, assists: 2, steals: 1,
          blocks: 1, slam_dunks: 0},

      { player_name: "Kemba Walker", number: 33, shoe: 15, points: 6,rebounds: 12, assists: 12, steals: 7,
          blocks: 5, slam_dunks: 12},
        ]
      }
    }
end
# .each{ |pair| p pair} #=> [:]

#def good_practices
# game_hash.each do |location, team_data|
#team_data.each do |attribute, data|
#data.each do|data_item|
#end end end end

def num_points_scored(team_name)
  game_hash.each do | hash, team_name|
     team_name.each do | player_name, points|
       if player_name == :points
      player_name.each do |points|
end
puts player[points:] if player[player_name:] == team_name
end

def shoe_size(team_member)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
      data.each do |player|
      end
end
end
end
end



def team_colors(team)
  game_hash.each do |location, team_data|
    return team_data[:colors] if team_data[:team_name] == team
  end
end

def team_names
  game_hash.collect do |location, team_data|
    team_data[:team_name]
end
end

def player_numbers(team_name)
  jerseys = []
      game_hash.each do |location, team_data|
  if team_data[:team_name] == team_name
    team_data.each do |attribute, data|
  if attribute == :players
        data.each do |player|
        jerseys << player[:number]
  end
  end
  end
  end
  end
      jerseys
  end




def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == player_name
            temp = player
            temp.delete(:player_name)

return temp
end
end
end
end
end
end
def big_shoe_rebounds
    biggest_shoe = 0
    num_rebounds = 0
    game_hash.each do |location, team_data|
        team_data[:players].each do |player|
if player[:shoe] > biggest_shoe
                biggest_shoe = player[:shoe]
                num_rebounds = player[:rebounds]
end
end
end
    num_rebounds
end





def most_points_scored
    most_points = 0
    team_member = "#{}"
    game_hash.each do |location, team_data|
        team_data[:players].each do |player|
if player[:points] < most_points
                most_points = player[:points]
                team_member = player[:player_name]
end
end
end
    team_member[:points]
end



def winning_team
    home_points = 0
    away_points = 0
    game_hash[:home][:players].each do |team_data|
        home_points += team_data[:points]
end
    game_hash[:away][:players].each do |team_data|
        away_points += team_data[:points]
end
    home_points > away_points ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
end
def player_with_longest_name
    longest_name = ""
    game_hash.each do |location, team_data|
        team_data[:players].each do |player|
if player[:player_name].length > longest_name.length
                longest_name = player[:player_name]
end
end
end
    longest_name
end
def long_name_steals_a_ton?
    most_steals = 0
    stealy_player = ""
    game_hash.each do |location, team_data|
        team_data[:players].each do |player|
if player[:steals] > most_steals
                most_steals = player[:steals]
                stealy_player = player[:player_name]
end
end
end
    stealy_player == player_with_longest_name
end
