require 'faker'

puts 'Gerando airplanes...'

10.times do |i|
  Airplane.create(
    name: ["a320", "boing 737-800","a321"].sample, 
    description: 
    ["um bom avião", "bom custo beneficio"].sample, 
    manufacturer: ["boeing", "airbus"].sample, 
    )
end

puts 'Airplanes gerados com sucesso!'
