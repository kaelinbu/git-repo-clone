git-clone
=========

A Ruby script to clone down your GitHub repos locally

This was adapated from Addy Osmani's script to be compatible with the GitHub API v3 changes.

INDIVIDUAL- HOW TO:

1. Create a backups/github directory locally.
2. Update your username in the file.
3. Run it from the command line and watch the cloning magic happen.

GROUP- HOW TO:

1. Create your backups directory locally.
2. Update your organization name in the file.
3. Generate a token on GitHub (Settings < Applications < Generate New Token < Select "read:org").
4. Update your token in the file.
5. Run it from command line and watch the cloning magic happen.
NOTE: This only pulls results from the first page (up to 100 entries), so if your org has more than 100 repos, you can update the page number and run it agian if needed.