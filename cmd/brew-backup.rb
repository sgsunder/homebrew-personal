backup_path = Dir.home() + "/.homebrew-backup"
brewfile = backup_path + "/Brewfile.conf"

if File.directory?(backup_path)
    ohai "Backup using path #{backup_path}"
else
    #TODO : Interactively create the directory
    odie "Directory does not exist!"
end

ohai "Listing all installed Homebrew packages"
if File.file?(brewfile)
    File.delete(brewfile)
end
system "brew", "bundle", "dump", "--file=#{brewfile}"

Dir.chdir(backup_path) do
    if !system "git", "diff", "--quiet"
        ohai "Committing changes..."
        system "git", "add", "."
        system "git", "commit", "--all", "--allow-empty-message", "-m", ""
        system "git", "push", "origin", "master"
    else
        ohai "No changes detected"
    end
end
