watch('(.*)') do |file|
  file = file.to_s
  puts "#{file} modificado..."
  nome = file.gsub('.rb', '').gsub('_test', '')
  nome_teste = nome + "_test.rb"
  if File.exists?(nome_teste)
    puts "Executando #{nome_teste}..."
	system "ruby #{nome_teste}"
  end
  puts ("\n" * 2) + ("-" * 30)
end