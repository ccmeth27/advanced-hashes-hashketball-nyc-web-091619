def game_hash
   {
    :home => {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1 },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7 },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15 },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5 },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1 }
    }
  },
    :away => {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 },
        "Bismack Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10 },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5 },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
        "Kemba Walker" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12 }
      }
    }
  }
end  

def all_players
  game_hash[:home][:players].merge(game_hash[:away][:players])
end
# This is used to help with other methods

def player_stats(name)
  new_hash = game_hash
  new_hash.each do |teams, data|
    data[:players].each do |player_name, player_data|
      if player_name == name
        return new_hash[teams][:players][name]
      end 
    end 
  end 
end

def num_points_scored(name)
  player_stats(name)[:points]
end

def shoe_size(name)
  player_stats(name)[:shoe]
end

def all_teams
  game_hash.values
end
# This is used to help with other methods

def find_team(team_name)
  all_teams.find { |team| team[:team_name] == team_name }
end
# This is used to help with other methods

def team_names
  all_teams.map { |team| team[:team_name] }
end

def team_colors(team_name)
  find_team(team_name)[:colors]
end

def player_numbers(team_name)
  find_team(team_name)[:players].map { |name, stats| stats[:number] }
end

def biggest_feet
  all_players.max_by { |name, stats| stats[:shoe] }
end

def big_shoe_rebounds
 biggest_feet[1][:rebounds]
end









