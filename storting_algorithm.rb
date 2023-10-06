def selection_sort(arr)
    n = arr.length
  
    for i in 0..n-1
      min_idx = i
      for j in (i+1)..n-1
        if arr[j] < arr[min_idx]
          min_idx = j
        end
      end
  
      # Troca o elemento mínimo com o primeiro elemento não classificado
      arr[i], arr[min_idx] = arr[min_idx], arr[i]
    end
  end
  
  # Array de exemplo
  arr = [64, 25, 12, 22, 11]
  
  # Chamando a função de classificação
  selection_sort(arr)
  
  # Exibindo o array classificado
  puts "Array Ordenado:"
  