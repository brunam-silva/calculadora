#!/bin/bash

echo "Calculadora"
echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2
echo "Escolha a operação (+,-,*,/)"
read operacao

#operacao
if [[ "$operacao" == "+" ]]; then
    resultado=$(echo "$num1 + $num2" | bc)
elif [[ "$operacao" == "-" ]]; then
    resultado=$(echo "$num1 - $num2" | bc)
elif [[ "$operacao" == "*" ]]; then
    resultado=$(echo "$num1 * $num2" | bc)
elif [[ "$operacao" == "/" ]]; then
if [[ "$num2" == "0" ]]; then
    resultado="Erro: Divisão por zero não é permitida."
else
    resultado=$(echo "scale=2; $num1 / $num2" | bc)
    fi
else
    resultado="Operação inválida"
fi
echo "O resultado é: $resultado"
