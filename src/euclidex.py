# Calcula el maximo comun divisor de dos numeros enteros

def euclidex(a,b):
  # Calcula de forma recursiva
  if a%b==0:
    return 0,1,b
  else:
    A,B,r=euclidex(b,a%b)
    return B,A-(a//b)*B,r

a=10505
b=147
print(f"El maximo comun divisor entre {a} y {b}", euclidex(a,b))

c=7289
d=8029
print(f"El maximo comun divisor entre {c} y {d}", euclidex(c,d))