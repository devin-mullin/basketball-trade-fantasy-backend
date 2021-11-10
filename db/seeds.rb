    require "smarter_csv"

    puts "seeding teams..."

    Team.create(full_name: "Atlanta Hawks", abrv: "ATL", simple_name: "Hawks", location: "Atlanta")
    Team.create(full_name: "Boston Celtics", abrv: "BOS", simple_name: "Celtics", location: "Boston")
    Team.create(full_name: "Brooklyn Nets", abrv: "BKN", simple_name: "Nets", location: "Brooklyn")
    Team.create(full_name: "Charlotte Hornets", abrv: "CHA", simple_name: "Hornets", location: "Charlotte")
    Team.create(full_name: "Chicago Bulls", abrv: "CHI", simple_name: "Bulls", location: "Chicago")
    Team.create(full_name: "Cleveland Cavaliers", abrv: "CLE", simple_name: "Cavs", location: "Cleveland")
    Team.create(full_name: "Dallas Mavericks", abrv: "DAL", simple_name: "Mavs", location: "Dallas")
    Team.create(full_name: "Denver Nuggets", abrv: "DEN", simple_name: "Nuggets", location: "Denver")
    Team.create(full_name: "Detroit Pistons", abrv: "DET", simple_name: "Pistons", location: "Detroit")
    Team.create(full_name: "Golden State Warriors", abrv: "GSW", simple_name: "Warriors", location: "Golden State")
    Team.create(full_name: "Houston Rockets", abrv: "HOU", simple_name: "Rockets", location: "Houston")
    Team.create(full_name: "Indiana Pacers", abrv: "IND", simple_name: "Pacers", location: "Indiana")
    Team.create(full_name: "Los Angeles Clippers", abrv: "LAC", simple_name: "Clippers", location: "Los Angeles")
    Team.create(full_name: "Los Angeles Lakers", abrv: "LAL", simple_name: "Lakers", location: "Los Angeles")
    Team.create(full_name: "Memphis Grizzlies", abrv: "MEM", simple_name: "Grizzlies", location: "Memphis")
    Team.create(full_name: "Miami Heat", abrv: "MIA", simple_name: "Heat", location: "Miami")
    Team.create(full_name: "Milwaukee Bucks", abrv: "MIL", simple_name: "Bucks", location: "Milwaukee")
    Team.create(full_name: "Minnesota Timberwolves", abrv: "MIN", simple_name: "Timberwolves", location: "Minnesota")
    Team.create(full_name: "New Orleans Pelicans", abrv: "NOP", simple_name: "Pels", location: "New Orleans")
    Team.create(full_name: "New York Knicks", abrv: "NYK", simple_name: "Knicks", location: "New York City")
    Team.create(full_name: "Oklahoma City Thunder", abrv: "OKC", simple_name: "Thunder", location: "Oklahoma City")
    Team.create(full_name: "Orlando Magic", abrv: "ORL", simple_name: "Magic", location: "Orlando")
    Team.create(full_name: "Philadelphia 76ers", abrv: "PHI", simple_name: "Sixers", location: "Philadelphia")
    Team.create(full_name: "Phoenix Suns", abrv: "PHX", simple_name: "Suns", location: "Phoenix")
    Team.create(full_name: "Portland Trail Blazers", abrv: "POR", simple_name: "Blazers", location: "Portland")
    Team.create(full_name: "Sacramento Kings", abrv: "SAC", simple_name: "Kings", location: "Sacramento")
    Team.create(full_name: "San Antonio Spurs", abrv: "SAS", simple_name: "Spurs", location: "San Antonio")
    Team.create(full_name: "Toronto Raptors", abrv: "TOR", simple_name: "Raptors", location: "Toronto")
    Team.create(full_name: "Utah Jazz", abrv: "UTA", simple_name: "Jazz", location: "Utah")
    Team.create(full_name: "Washington Wizards", abrv: "WAS", simple_name: "Wizards", location: "Washington")

    puts "seeding all the players"
    
    filename = 'lib/csvs/nba2021_per_game.csv'
    options = {:chunk_size => 100}
    n = SmarterCSV.process(filename, options) do |chunk|
     Player.create!(chunk)
    end
     
    
      puts "adding players to teams"


  player = Player.where(tm: "ATL")
  player.each {|player| player.update_attribute(:team_id, 1)}
  player = Player.where(tm: "BOS")
  player.each {|player| player.update_attribute(:team_id, 2)}
  player = Player.where(tm: "BRK")
  player.each {|player| player.update_attribute(:team_id, 3)}
  player = Player.where(tm: "CHO")
  player.each {|player| player.update_attribute(:team_id, 4)}
  player = Player.where(tm: "CHI")
  player.each {|player| player.update_attribute(:team_id, 5)}
  player = Player.where(tm: "CLE")
  player.each {|player| player.update_attribute(:team_id, 6)}
  player = Player.where(tm: "DAL")
  player.each {|player| player.update_attribute(:team_id, 7)}
  player = Player.where(tm: "DEN")
  player.each {|player| player.update_attribute(:team_id, 8)}
  player = Player.where(tm: "DET")
  player.each {|player| player.update_attribute(:team_id, 9)}
  player = Player.where(tm: "GSW")
  player.each {|player| player.update_attribute(:team_id, 10)}
  player = Player.where(tm: "HOU")
  player.each {|player| player.update_attribute(:team_id, 11)}
  player = Player.where(tm: "IND")
  player.each {|player| player.update_attribute(:team_id, 12)}
  player = Player.where(tm: "LAC")
  player.each {|player| player.update_attribute(:team_id, 13)}
  player = Player.where(tm: "LAL")
  player.each {|player| player.update_attribute(:team_id, 14)}
  player = Player.where(tm: "MEM")
  player.each {|player| player.update_attribute(:team_id, 15)}
  player = Player.where(tm: "MIA")
  player.each {|player| player.update_attribute(:team_id, 16)}
  player = Player.where(tm: "MIL")
  player.each {|player| player.update_attribute(:team_id, 17)}
  player = Player.where(tm: "MIN")
  player.each {|player| player.update_attribute(:team_id, 18)}
  player = Player.where(tm: "NOP")
  player.each {|player| player.update_attribute(:team_id, 19)}
  player = Player.where(tm: "NYK")
  player.each {|player| player.update_attribute(:team_id, 20)}
  player = Player.where(tm: "OKC")
  player.each {|player| player.update_attribute(:team_id, 21)}
  player = Player.where(tm: "ORL")
  player.each {|player| player.update_attribute(:team_id, 22)}
  player = Player.where(tm: "PHI")
  player.each {|player| player.update_attribute(:team_id, 23)}
  player = Player.where(tm: "PHX")
  player.each {|player| player.update_attribute(:team_id, 24)}
  player = Player.where(tm: "POR")
  player.each {|player| player.update_attribute(:team_id, 25)}
  player = Player.where(tm: "SAC")
  player.each {|player| player.update_attribute(:team_id, 26)}
  player = Player.where(tm: "SAS")
  player.each {|player| player.update_attribute(:team_id, 27)}
  player = Player.where(tm: "TOR")
  player.each {|player| player.update_attribute(:team_id, 28)}
  player = Player.where(tm: "UTA")
  player.each {|player| player.update_attribute(:team_id, 29)}
  player = Player.where(tm: "WAS")
  player.each {|player| player.update_attribute(:team_id, 30)}
  
    puts "basketball is my favorite sport :)"