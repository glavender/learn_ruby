class Changer

def self.make_change(money)
  change = []
  quarters = money / 25
  quarters.times {change << 25}
  dimes = (money % 25) / 10
  dimes.times {change << 10}
  nickels = ((money % 25) % 10) / 5
  nickels.times {change << 5}
  pennies = (((money % 25) % 10) % 5)
  pennies.times {change << 1}
  change
end

end