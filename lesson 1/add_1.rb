str = "dniMyMdegnahCybuR"
str = str.reverse.gsub(/(?<=\w)\w+/) {|s| s.downcase}
puts str