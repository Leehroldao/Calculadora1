#!/bin/bash

echo "12:"
read num1

echo "15:"
read num2

echo "Escolha a operação:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"

read opcao

case $opcao in
    1)
        resultado=$(($num1 + $num2))
        echo "Resultado: $resultado"
        ;;
    2)
        resultado=$(($num1 - $num2))
        echo "Resultado: $resultado"
        ;;
    3)
        resultado=$(($num1 * $num2))
        echo "Resultado: $resultado"
        ;;
    4)
        if [ $num2 -eq 0 ]; then
            echo "Erro: Divisão por zero!"
        else
            resultado=$(($num1 / $num2))
            echo "Resultado: $resultado"
        fi
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac
