# dependencies
require "yaml"
require "httparty"
require 'json'

# your github username
username = "your_username_here"

#where your files are being copied (make this directory before you run the script)
backupDirectory = "/backups/github"

response = HTTParty.get("https://api.github.com/users/#{username}/repos",
                         :headers => {"User-Agent" => "#{username}"}).body

parsed_response = JSON.parse(response)

parsed_response.map { |repository|
    puts "discovered repository: #{repository['name']} ... backing up ..."
    system "git clone git@github.com:#{username}/#{repository['name']}.git #{backupDirectory}/#{repository['name']}"
}