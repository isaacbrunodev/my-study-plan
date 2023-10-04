def encontrar_numero_ausente(arr, n)
    # Crie uma matriz temporária com todos os valores iniciais como 0
    temp = Array.new(n + 1, 0)
    
    # Percorra a matriz de entrada e marque os elementos presentes em temp
    arr.each do |elemento|
      temp[elemento] = 1
    end
  
    # Percorra temp e encontre o elemento com valor 0 (o número ausente)
    numero_ausente = -1
    temp.each_with_index do |valor, indice|
      if valor == 0
        numero_ausente = indice
        break
      end
    end
  
    return numero_ausente
  end
  
  # Exemplo 1
  arr1 = [1, 2, 4, 6, 3, 7, 8]
  n1 = 8
  resultado1 = encontrar_numero_ausente(arr1, n1)
  puts "O número ausente é #{resultado1}"
  
  # Exemplo 2
  arr2 = [1, 2, 3, 5]
  n2 = 5
  resultado2 = encontrar_numero_ausente(arr2, n2)
  puts "O número ausente é #{resultado2}"
  