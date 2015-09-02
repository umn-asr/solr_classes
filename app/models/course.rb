class Course
  attr_reader :course_id, :catalog_number, :campus, :term

  def self.build(attrs, campus, term)
    new(attrs, campus, term)
  end

  def initialize(attrs, campus, term)
    self.course_id      = attrs["course_id"]
    self.catalog_number = attrs["catalog_number"]
    self.campus         = campus
    self.term           = term
  end

  private

  attr_writer :course_id, :catalog_number, :campus, :term
end
