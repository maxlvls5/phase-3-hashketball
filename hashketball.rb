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

# Write code here
def num_points_scored(player_name)


  game_hash.each do |location, team_data|
    team_data[:players].each do |player_data|
      if player_data[:player_name] == player_name
        return player_data[:points]
      end
    end
  end
end


#shoe size
def shoe_size(player_name)
  game_hash.each do | location, team_data | 
    team_data.each do |player, data|
      if player == :players
        data.each do |player|
          if player [:player_name]==player_name
            return player[:shoe]
    
  end
end
end
end
end
end

#team colors
def team_colors(team_name)
 
    if game_hash[:home][:team_name]==team_name
      game_hash[:home][:colors]
      elsif game_hash[:away][:team_name]==team_name
        game_hash[:away][:colors]
      end
    end
    
#team name
def team_names
  [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end



#player numbers
def player_numbers(team_name)
  jersey_numbers = []
  if game_hash[:home][:team_name]==team_name
    game_hash[:home][:players].each do |player|
      jersey_numbers.push(player[:number])
    end
    elsif game_hash[:away][:team_name]==team_name
    game_hash[:away][:players].each do |player|
     jersey_numbers.push(player[:number])
    end 

  end
  jersey_numbers
  end

#player stats

def player_stats(player_name)
  player_list = game_hash[:home][:players] + game_hash[:away][:players]
  player_list.find { |player_data| player_data[:player_name] == player_name}
  
end

#big shoe size with rebounds for

def big_shoe_rebounds
  player_list = game_hash[:home][:players] + game_hash[:away][:players]
  big_shoe_player = player_list[0]

  player_list.each do |player_data| 
    if player_data[:shoe] > big_shoe_player[:shoe]
      big_shoe_player = player_data

  end
end

  return big_shoe_player[:rebounds]
end