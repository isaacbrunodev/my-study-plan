# Programa Ruby para pesquisa de Fibonacci.

# Retorna o índice de x se presente, caso contrário, retorna -1
def pesquisa_fibonacci(arr, x, n)
    # Inicializa números de Fibonacci
    fib_menos_2 = 0 # (m-2)-ésimo número de Fibonacci
    fib_menos_1 = 1 # (m-1)-ésimo número de Fibonacci
    fib_m = fib_menos_2 + fib_menos_1 # m-ésimo número de Fibonacci

    # fib_m vai armazenar o menor número de Fibonacci maior ou igual a n
    while fib_m < n
        fib_menos_2 = fib_menos_1
        fib_menos_1 = fib_m
        fib_m = fib_menos_2 + fib_menos_1
    end

    # Marca a faixa eliminada a partir da frente
    offset = -1

    # Enquanto houver elementos a serem inspecionados.
    # Observe que comparamos arr[fib_menos_2] com x.
    # Quando fib_m se torna 1, fib_menos_2 se torna 0
    while fib_m > 1
        # Verifique se fib_menos_2 é uma localização válida
        i = [offset + fib_menos_2, n - 1].min

        # Se x for maior que o valor no índice fib_menos_2, corte a submatriz de offset até i
        if arr[i] < x
            fib_m = fib_menos_1
            fib_menos_1 = fib_menos_2
            fib_menos_2 = fib_m - fib_menos_1
            offset = i
        # Se x for menor que o valor no índice fib_menos_2, corte a submatriz após i+1
        elsif arr[i] > x
            fib_m = fib_menos_2
            fib_menos_1 = fib_menos_1 - fib_menos_2
            fib_menos_2 = fib_m - fib_menos_1
        # Elemento encontrado, retorne o índice
        else
            return i
        end
    end

    # Comparando o último elemento com x
    if fib_menos_1.nonzero? && arr[n - 1] == x
        return n - 1
    end

    # Elemento não encontrado, retorne -1
    return -1
end

# Código do Driver
arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
n = arr.length
x = 235
ind = pesquisa_fibonacci(arr, x, n)

if ind >= 0
    puts "Encontrado no índice: #{ind}"
else
    puts "#{x} não está presente no array"
end
