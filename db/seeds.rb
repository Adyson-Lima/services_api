puts 'gerando services...'
5.times do |i|
  Service.create(name: ['formatação','backup','limpeza'].sample, value: 'valor adequado')
end

puts 'services gerados'