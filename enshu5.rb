def buy_tickets(*params)
  if params.size <= 3
    params.each do |param|
      puts "Buying a ticket for #{param}."
    end
  else
    puts "Buying a group ticket for #{params.join(', ')}."
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")


# 出力
# Buying a ticket for Sam.
# Buying a ticket for Dave.
# Buying a ticket for David.
# Buying a group ticket for John, Paul, Ringo, George.
