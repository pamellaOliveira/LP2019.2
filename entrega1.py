#ESTRUTURADO
'''automovel = input().upper()
rodas = 0
if automovel == "MOTO":
    rodas = 2
elif automovel == "CARRO":
    rodas = 4
if rodas == 2 or rodas == 4:
    print(rodas)
else:
    print("Digite carro ou moto")'''

#Orientado a objeto
def entrada():
    return comparando(input().upper())

def comparando(ent):
    saida = ''
    if ent == "MOTO":
        saida = 2
    elif ent == "CARRO":
        saida = 4
    else:
        saida = "Digite carro ou moto"
    
    return saida
v = entrada()
print(v)


