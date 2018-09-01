# Some constants to customize
bf_directory = ".homebrew-backup"
bf_basename = "Brewfile.conf"


if File.directory?(Dir.home() + "/" + bf_directory)
    ohai "Backup using path ~/#{bf_directory}"
else
    #TODO : Interactively create the directory
    odie "Directory does not exist!"
end

ohai "Listing all installed Homebrew packages"
bf_fullpath = Dir.home() + "/" + bf_directory + "/" + bf_basename
if File.file?(bf_fullpath)
    File.delete(bf_fullpath)
end
system "brew", "bundle", "dump", "--file=#{bf_fullpath}"

Dir.chdir(Dir.home() + "/" + bf_directory) do
    system "git", "diff", "--quiet" # stupid hack to make the next line work
    if system "git", "diff-files", "--quiet"
        ohai "No changes detected"
    else
        ohai "Committing changes..."
        system "git", "add", "#{bf_basename}"
        system "git", "commit", "--quiet", "--allow-empty-message", "-m", ""
        system "git", "push", "--porcelain", "origin", "master"
    end
end
