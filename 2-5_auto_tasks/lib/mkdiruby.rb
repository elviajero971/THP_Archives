require 'pry'
require 'rspec'
require 'rubocop'

# Create a folder named by user's ARGV
def make_project_folder
  # Check user input
  check_if_user_gave_input
  # Grab user input
  project_name = ARGV.first
  # Create dir
  Dir.mkdir(project_name)
  # Return the full path
  File.expand_path(project_name)
end

# If user don't input ARGV, explain how the command works then exit
def check_if_user_gave_input
  abort("mkdir: missing input. Retry using name_of_the_project") if ARGV.empty?
end

#create the ruby file of the project
def make_project_file
  return File.open "#{ARGV.join("_")}.rb", "w"
end

#create the spec file of the project
def make_spec_project_file
  return File.open "#{ARGV.join("_")}_spec.rb", "w"
end

#create the README file
def make_readme_file(project_name)
  file = File.open("#{project_name}/README.md", "w")
  file.close
end

# Create Gemfile
def make_gemfile(project_name)
  file = File.open("#{project_name}/Gemfile", 'w')
  file.puts "source 'https://rubygems.org'"
  file.puts "ruby '2.5.1'"
  file.puts "gem 'rspec'"
  file.puts "gem 'pry'"
  file.puts "gem 'rubocop', '~> 0.57.2'"
  file.close
  path = system("pwd")
end

# Install Gems
# def install_gems(project_name)
#   system("cd #{project_name} && bundle install")
# end

# Make .env file
def make_env_file(project_name)
  file = File.open("#{project_name}/.env", 'w').close
end

# Make .gitignore file
def make_gitignore_file(project_name)
  file = File.open("#{project_name}/.gitignore", 'w')
  file.puts ".idea"
  file.puts ".env"
  file.close
end

# Make lib folder and project_name.rb file inside with requires
def make_lib_folder(project_name)
  Dir.mkdir("#{project_name}/lib")
  # file = File.open("lib/#{project_name}.rb", "w")
  # file.puts("require 'rubocop'","require 'pry'","require 'rspec'")
  # file.close
end

# Run rspec --init
# def rspec_init(project_name)
#   system("cd #{project_name} && rspec --init")
# end

# Run Git init and make first commit
# def git_init(project_name)
#   system("cd #{project_name} && git init && git add . && git commit -m 'Init commit'")
# end

# Perform the program
def perform
  # Create a folder named by user's ARGV
  project_name = make_project_folder

  # Make Gemfile with THP's usual gems
  make_gemfile(project_name)

  # Make .env file
  make_env_file(project_name)

  # Make .gitignore file
  make_gitignore_file(project_name)

  # Make lib folder and project_name.rb file inside with requires
  make_lib_folder(project_name)

  # Make README.md file
  make_readme_file(project_name)

  # # Run rspec --init
  # rspec_init(project_name)

  # # Run Git init and make first commit
  # git_init(project_name)
end

perform
