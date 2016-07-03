require 'colorize'

desc 'Get the next clue'
task :clue => 'adventures:clue'

namespace :adventures do
  task :clue => :header do
    passing = system('rspec > /dev/null')

    if passing
      Rake::Task['adventures:continue'].invoke
    else
      Rake::Task['adventures:intro'].invoke
    end
  end

  task :intro do
    puts " The evil  Lord Waterfall,  bent on  destroying  all XP  practices has"
    puts " deleted  all your  code. Luckily  for you  he didn't  see the  'spec'"
    puts " folder, so not all is lost! "
    puts
    puts " Your  mission is to  recover your  code using only  the tests  as your"
    puts " guide.  Once  you  fix  the  first  test  you will  be  given  further"
    puts " instructions."
    puts
    puts " Good luck!"
    puts
    puts " To continue, run:"
    puts "   rspec"
    puts
  end

  task :continue do
    puts " Well done, have made the tests pass, but it wont be so easy next time!"
    puts " To continue type:"
    puts "   git merge feature/counting_sheep".yellow
    puts
    puts " followed by:"
    puts "   rake clue"
    puts
  end

  task :header do
    puts
    puts '    __________  ____ '
    puts '   /_  __/ __ \/ __ \ '
    puts '    / / / / / / / / / '
    puts '   / / / /_/ / /_/ / '
    puts '  /_/ /_____/_____/ '
    puts '              ___       __                 __ '
    puts '             /   | ____/ /   _____  ____  / /___  __________  _____ '
    puts '            / /| |/ __  / | / / _ \/ __ \/ __/ / / / ___/ _ \/ ___/ '
    puts '           / ___ / /_/ /| |/ /  __/ / / / /_/ /_/ / /  /  __(__  ) '
    puts '          /_/  |_\__,_/ |___/\___/_/ /_/\__/\__,_/_/   \___/____/ '
    puts
    puts ' ---------------------------------------------------------------------'
  end
end


