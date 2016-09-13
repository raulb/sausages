SAUSAGE_DATA = [
  { name: "Andouille", rating: 8 },
  { name: "Bratwurst", rating: 9 },
  { name: "Chorizo",   rating: 10 },
  { name: "Hot Dog",   rating: 2 },
  { name: "Smoked",    rating: 5 }
]

Sausage = Struct.new(:name, :rating) do
  def self.all
    @all ||= SAUSAGE_DATA.map { |d| Sausage.new(d[:name], d[:rating]) }
  end

  def self.find(name)
    all.find { |sausage| sausage.name.downcase == name.downcase  }
  end

  def to_json(args = {})
    puts args.inspect
    to_h.to_json
  end
end
