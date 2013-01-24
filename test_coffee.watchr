watch('(.*)') do |file|
  file = file.to_s
  puts "Arquivo modificado: #{file}"
  puts `jasmine-node --coffee .`
  puts ("\n" * 2) + ("-" * 30)
end
