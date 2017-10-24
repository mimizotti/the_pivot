Dir['./db/seeds/*.rb'].each {|file| require file }

namespace :reset do

  task :fish => :environment do
    SeedGoldfish.reset
  end

  task :instruments => :environment do
    SeedInstruments.reset
  end

  task :towels => :environment do
    SeedTowels.reset
  end

  task :peppers => :environment do
    SeedPeppers.reset
  end

  task :electronics => :environment do
    SeedElectronics.reset
  end

end
