Gem::Specification.new do |s|
  s.name    = 'runnel'
  s.version = '0.0.4'
  s.summary = 'An autossh tunnel manager, written in Ruby'

  s.author   = 'Mark Percival'
  s.email    = 'mark@mpercival.com'
  s.homepage = 'https://github.com/mdp/runnel'

  s.files = Dir['lib/**/*']
  s.bindir = 'bin'
  s.executables = ["runnel"]
  s.default_executable = 'runnel'
end
