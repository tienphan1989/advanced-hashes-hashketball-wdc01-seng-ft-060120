# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def players_data
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  total_players = home_players + away_players
  total_players
end

def find_player(player_name)
find_player = players_data.find {|player| player.fetch(:player_name) == test_name}
end

def num_points_scored(test_name)
  player = find_player(test_name)
  player[:points]
end 

def shoe_size(test_name)
find_player[:shoe]
end

def team_colors(team_name)
  if team_name == game_hash[:home][:team_name].to_s
    return game_hash[:home][:colors]
  end

  if team_name == game_hash[:away][:team_name].to_s
    return game_hash[:away][:colors]
  end
end

def team_stats 
 home_team = game_hash.values_at(:home)
  away_team = game_hash.values_at(:away)
  total_team_stats = home_team + away_team
  total_team_stats
end 

def team_names
game_hash.map {|team, attributes| attributes[:team_name]}
end

def player_numbers(team_name)
  find_team = team_stats.find {|team| team.fetch(:team_name) == team_name}
  find_team[:players].collect {|player| player[:number]}
end

def player_stats(test_name)
find_player = players_data.find {|player| player.fetch(:player_name) == test_name}
find_player
end

def big_shoe_rebounds
    biggest_shoe = players_data.max_by {|player_shoe| player_shoe.fetch(:shoe)}
    biggest_shoe[:rebounds]
end