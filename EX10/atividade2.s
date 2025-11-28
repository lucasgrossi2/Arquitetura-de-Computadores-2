.data

str1: .string "Hello World!\n"
str2: .string "Ola Mundo!\n"
str3: .string "Strings antes da copia:\n"
str4: .string "Strings depois da copia:\n"

.text
main:

#colocando as strings em registradores:
la s1, str1
la s2, str2
la s3, str3

#configurando o ecall
li a0, 4

#imprimindo as duas strings antes da cópia:
mv a1, s3
ecall
mv a1, s1
ecall
mv a1, s2
ecall

#copiando str2 para str1
copia:
lb t0, 0(s2)
sb t0, 0(s1)
beq t0, x0, impressao_final
addi s1, s1, 1
addi s2, s2, 1
j copia

#imprimir depois da cópia
impressao_final:

#configurando ecal
li a0, 4

la a1, str4
ecall

#passando ponteiro de str1 e str2 para o primeiro caractere novamente
la a1, str1
ecall
la a1, str2
ecall

li a0, 10
ecall





