class Term
  attr_reader :term_id, :strm

  def self.build(data_source)
    new(data_source.fetch("term"))
  end

  def initialize(attrs)
    self.term_id = attrs["term_id"]
    self.strm    = attrs["strm"]
  end

  private

  attr_writer :term_id, :strm
end
