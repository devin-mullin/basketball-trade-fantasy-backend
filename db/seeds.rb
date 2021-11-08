    require "csv"
    
    
    data_file = 'lib/csvs/nba2021_per_game.csv'
    data = CSV.foreach(data_file, headers: true).map{ |row| row.to_h }
    data.each {|hash| hash.compact!.deep_symbolize_keys!} 
    data.each do |hash| 
      name = hash[:name]
      pos = hash[:pos]
      age = hash[:age]
      tm = hash[:tm]
      g = hash[:g]
      gs = hash[:gs]
      mp = hash[:mp]
      fg = hash[:fg]
      fga = hash[:fga]
      fgp = hash[:fgp]
      thp = hash[:thp]
      thpa = hash[:thpa]
      twp = hash[:twp]
      twpa = hash[:twpa]
      twpp = hash[:twpp]
      efg = hash{:efg}
      ft = hash[:ft]
      fta = hash[:fta]
      ftp = hash[:ftp]
      orb = hash[:orb]
      drb = hash[:drb]
      trb = hash[:trb]
      ast = hash[:ast]
      stl = hash[:stl]
      blk = hash[:blk]
      tov = hash[:tov]
      pf = hash[:pf]
      pts = hash[:pts]

      byebug

      data.map {|hash| Player.create(hash)}
    
      end
  

  