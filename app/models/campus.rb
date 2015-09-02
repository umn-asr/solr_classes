class Campus
  attr_reader :campus_id, :abbreviation

  def self.build(data_source)
    new(data_source.fetch("campus"))
  end

  def initialize(attrs)
    self.campus_id    = attrs["campus_id"]
    self.abbreviation = attrs["abbreviation"]
  end

  private

  attr_writer :campus_id, :abbreviation
end
