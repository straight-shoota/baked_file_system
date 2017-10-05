require "./loader/*"

path = ARGV[0]

unless path == File.expand_path(path)
  path = File.join(ARGV[1], path)
end

path = File.expand_path(path)

puts BakedFileSystem::Loader.load(path)
