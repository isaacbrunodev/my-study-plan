def selection_sort(arr)
    n = arr.length
  
    # Itera sobre todos os elementos do array, exceto o último
    (0...n-1).each do |i|
      min_index = i
  
      # Encontra o índice do menor elemento no restante do array
      (i+1...n).each do |j|
        min_index = j if arr[j] < arr[min_index]
      end
  
      # Troca os elementos para colocar o menor no início
      arr[i], arr[min_index] = arr[min_index], arr[i] if i != min_index
    end
  
    # Retorna o array ordenado
    arr
  end
  
  # Exemplo de uso:
  array = [64, 25, 12, 22, 11]
  sorted_array = selection_sort(array)
  
  puts "Array ordenado: #{sorted_array}"
  