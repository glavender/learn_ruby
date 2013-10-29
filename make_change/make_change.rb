class Changer

def self.make_change(money)
  change = []
  (money / 25).times {change << 25}
  ((money % 25) / 10).times {change << 10}
  (((money % 25) % 10) / 5).times {change << 5}
  ((((money % 25) % 10) % 5)).times {change << 1}
  change
end

end