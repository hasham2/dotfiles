desc "installs everything"
task :install => "install:all"

namespace :install do

  def install name, *files
    desc "installs #{name} configuration"
    task(name) do
      Dir[*files].collect do |file|
        full = File.join File.dirname(__FILE__), file
        Dir.chdir ENV["HOME"] do
          mkdir_p File.dirname(file)
          File.delete(file) if (File.exist? file and File.directory? full)
          sh "ln -sf #{full} #{file}"
        end
      end
    end
    task :all => name
  end

  #install :irb, ".irbrc", ".config/irb/*.rb"
  install :dot, *%w(.bash_profile .bashrc .emacs .gitconfig .vimrc)
  install :bin, "bin/*"
  
  desc "Update all submodules"
  task :submodules do
    system "git submodule init && git submodule update"
  end

end
