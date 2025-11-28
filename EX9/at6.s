.text
main:

#pintar tela de amarelo
li a0, 0x101
li a1, 0x00FFFF00
ecall

#selecionar cor preta
li a0, 0x100
li a2, 0x00000000

#pintar pixels de preto
li a1 0x00030002
ecall
li a1 0x00030003
ecall
li a1 0x00060002
ecall
li a1 0x00060003
ecall
li a1 0x00020005
ecall
li a1 0x00070005
ecall
li a1 0x00030006
ecall
li a1 0x00040006
ecall
li a1 0x00050006
ecall
li a1 0x00060006
ecall
