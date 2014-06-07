# dependencies
require "yaml"
require "httparty"
require 'json'

# your github username
group_name = "your_org_name_here"
token = "your_group_name_here"

#where your files are being copied (make this directory before you run the script)
backupDirectory = "~/Desktop/backups/github/POCKET-GOPHERS"

response = HTTParty.get("https://api.github.com/orgs/#{group_name}/repos?page=2&per_page=100",
                         :headers => {"User-Agent" => "#{group_name}", "Authorization" => "token #{token}"})

parsed_response = JSON.parse(response.body)

repo_names = parsed_response.map { |repository| p repository["name"]
    puts "discovered repository: #{repository['name']} ... backing up ..."
    system "git clone git@github.com:#{group_name}/#{repository['name']}.git #{backupDirectory}/#{repository['name']}"
}