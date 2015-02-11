namespace :travis do

  desc "run the test suite on travis"
  task :build => 'db:test:prepare' do

    build_components = {
      'Rubocop (Ruby Style Guide)' => 'rubocop -R',
      'Rails Best Practices (Rails Style Guide)' => 'rails_best_practices',
      'Rspec (Ruby Unit Tests)' => 'rspec'
    }

    build_components.each do |description, command|
      puts "Running #{description}"
      puts "=" * 50
      system("bundle exec #{command}")

      raise "#{command} failed!" unless $?.exitstatus == 0
    end
  end
end
