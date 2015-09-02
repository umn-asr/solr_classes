task :import, [:source] => :environment do |_, args|
  if File.exist?(args[:source])
    source_file = File.open(args[:source])
    data        = JSON.parse(source_file.read)
    campus      = Campus.build(data)
    term        = Term.build(data)
    courses     = Courses.build(data, campus, term)
    courses.each { |c| puts c.inspect }
  else
    fail
  end
end
