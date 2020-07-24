require 'faker'

namespace :dev do
  desc "TODO"
  task setup: :environment do
    puts "Criando aparelhos"
    50.times do |i|
      Aparelho.create!(
        operadora: Faker::Name.name,
        numero: Faker::Number.number(digits: 10)
      )
    end
    puts "50 Aparelhos cadastrados!"
  end
end
