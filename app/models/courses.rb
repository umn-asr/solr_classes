require 'forwardable'
class Courses
  extend Forwardable

  def_delegators :@collection, :each

  def self.build(data_source, campus, term)
    new(data_source.fetch("courses"), campus, term)
  end

  def initialize(courses, campus, term)
    @collection = courses.map { |course| Course.build(course, campus, term) }
  end
end
