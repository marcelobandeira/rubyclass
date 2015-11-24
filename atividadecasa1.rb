puts "hello world"

funcionarios = {
  francisco: {matricula: 1000, nascimento: "1992/09/01", cpf: 12213422212, admissao: "2014/05/21"},
  jose: {matricula: 2000, nascimento: "1990/10/10", cpf: 24356345345, admissao: "2014/05/21"},
  pedro: {matricula: 3000, nascimento: "1991/12/31", cpf: 25252323524, admissao: "2014/08/23"},
  maria: {matricula: 4000, nascimento: "1993/01/23", cpf: 21342412342, admissao: "2014/08/23"},
  joaquim: {matricula: 5000, nascimento: "1990/09/12", cpf: 23423435353, admissao: "2014/12/21"},
  eliza: {matricula: 6000, nascimento: "1985/10/25",  cpf: 44583923423, admissao: "2014/12/21"},
  isabel: {matricula: 7000, nascimento: "1991/02/03", cpf: 56767895434, admissao: "2014/12/21"},
  rosa: {matricula: 8000, nascimento: "1992/03/09", cpf: 31452454356, admissao: "2015/10/25"},
  luzia: {matricula: 9000, nascimento: "1989/12/30", cpf: 23412424245, admissao: "2015/10/25"},
  joao: {matricula: 1001, nascimento: "1993/12/03", cpf: 21313442560, admissao: "2015/10/24"},
}

p "------------------ordenado por admissao"
funcionarios.sort_by {|key, value| value[:admissao]}.each do |key|
  h = Hash[key[1]]
  p "nome: #{key[0]}     cpf: #{h[:cpf]}      data de admissao: #{h[:admissao]}"
end

p "------------------ordenado por nome"
funcionarios.sort.each do |key|
  p key[0]
end

p "-----------------ordenado por idade"
require 'date'
funcionarios.sort_by {|key, value| value[:nascimento]}.each do |key|
  h = Hash[key[1]]
  d = Date.parse(h[:nascimento])
  p "nome: #{key[0]}     data de nascimento: #{h[:nascimento]}      idade: #{Time.now.year - d.year}"
end


