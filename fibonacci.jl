using Plots


function fibonacci_dinamica(n)
    if n <= 0
        return 0
    elseif n == 1
        return 1
    else
        return fibonacci_dinamica(n-1) + fibonacci_dinamica(n-2)
    end
end


serie_fibonacci = []
for i in 0:10
    pushfirst!(serie_fibonacci, fibonacci_dinamica(10-i))
end

println("Serie de Fibonacci hasta el 10")

p = plot(serie_fibonacci, seriestype=:scatter, legend=false, xlabel="Índice", ylabel="Valor", title="Serie Fibonacci hasta 10")

for (i, valor) in enumerate(serie_fibonacci)
    annotate!(i, valor, text("$valor", :left))
end

display(p)
println(serie_fibonacci)