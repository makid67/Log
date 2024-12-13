###Questao 2 lista 3

n = 100
soma = 0
termo = 0
x = int (input("\n Digite um valor para x: "))

for i in range(0, n):
    soma = (1 / (2*i + 1)) * ((x - 1/ x + 1)**(2*i + 1))
    termo += soma
    termo *= 2

print(f"Soma = %d" % termo)

