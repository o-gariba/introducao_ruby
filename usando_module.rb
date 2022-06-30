require_relative 'modules.rb' # Posso usar require_relative pq estou no mesmo diretório do module a ser importado, caso contrario preciso passar o caminho relativo sem o _relative

include Comunicacao 

Comunicacao.diz_oi('cachorro')