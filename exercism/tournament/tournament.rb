module Tournament

  HEADER = "Team".ljust(31) + "| MP |  W |  D |  L |  P"
  WINNER = [1, 1, 0, 0, 3]
  LOOSER = [1, 0, 0, 1, 0]
  TIE = [1, 0, 1, 0, 1]
  def self.tally(input)
    teams = Hash.new { |h, k| h[k] = [0,0,0,0,0] }
    input.lines.each do |line|
      team1, team2, result = line.gsub("\n",'').split(";")
      case result
      when "win"
        teams[team1] = sumArrays(teams[team1], WINNER)
        teams[team2] = sumArrays(teams[team2], LOOSER)
      when "loss"
        teams[team1] = sumArrays(teams[team1], LOOSER)
        teams[team2] = sumArrays(teams[team2], WINNER)
      when "draw"
        teams[team1] = sumArrays(teams[team1], TIE)
        teams[team2] = sumArrays(teams[team2], TIE)
      else
        puts "Invalid result: #{result}"
      end
    end
    table = teams.map {|k,v| v.unshift(k) }
                 .sort { |v1, v2| v1[-1] == v2[-1]? v1[0] <=> v2[0] : v2[-1] <=> v1[-1] }
    classification = table.map do |team|
      team[0].ljust(30) +
        " |" + team[1].to_s.rjust(3) +
        " |" + team[2].to_s.rjust(3) +
        " |" + team[3].to_s.rjust(3) +
        " |" + team[4].to_s.rjust(3) +
        " |" + team[5].to_s.rjust(3)
    end.join("\n")
    HEADER + "\n" + classification + (classification.empty? ? "" : + "\n")
  end

  def self.sumArrays(arr1, arr2)
    [arr1, arr2].transpose.map {|x| x.reduce(:+)}
  end
end