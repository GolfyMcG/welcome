task all_specs: :environment  do
  ['rubocop -R', 'rails_best_practices', 'rspec'].each do |task|
    sh task
  end
end
