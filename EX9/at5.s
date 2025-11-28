.text
main:

###########################################################
# Pintar a tela de branco
###########################################################
li a0, 0x101
li a1, 0x00FFFFFF
ecall

###########################################################
# COR 1 — AZUL
###########################################################

li a0, 0x100
li a2, 0x000000FF   # azul

# y = 2
li a1, 0x00020002
ecall
li a1, 0x00030002
ecall
li a1, 0x00040002
ecall
li a1, 0x00050002
ecall
li a1, 0x00060002
ecall
li a1, 0x00070002
ecall

# y = 3
li a1, 0x00020003
ecall
li a1, 0x00030003
ecall
li a1, 0x00040003
ecall
li a1, 0x00050003
ecall
li a1, 0x00060003
ecall
li a1, 0x00070003
ecall

# y = 4
li a1, 0x00020004
ecall
li a1, 0x00030004
ecall
li a1, 0x00040004
ecall
li a1, 0x00050004
ecall
li a1, 0x00060004
ecall
li a1, 0x00070004
ecall

# y = 5
li a1, 0x00020005
ecall
li a1, 0x00030005
ecall
li a1, 0x00040005
ecall
li a1, 0x00050005
ecall
li a1, 0x00060005
ecall
li a1, 0x00070005
ecall

# y = 6
li a1, 0x00020006
ecall
li a1, 0x00030006
ecall
li a1, 0x00040006
ecall
li a1, 0x00050006
ecall
li a1, 0x00060006
ecall
li a1, 0x00070006
ecall

# y = 7
li a1, 0x00020007
ecall
li a1, 0x00030007
ecall
li a1, 0x00040007
ecall
li a1, 0x00050007
ecall
li a1, 0x00060007
ecall
li a1, 0x00070007
ecall


###########################################################
# COR 2 — VERDE
###########################################################

li a0, 0x100
li a2, 0x0000FF00   # verde

# y = 2
li a1, 0x00020002
ecall
li a1, 0x00030002
ecall
li a1, 0x00040002
ecall
li a1, 0x00050002
ecall
li a1, 0x00060002
ecall
li a1, 0x00070002
ecall

# y = 3
li a1, 0x00020003
ecall
li a1, 0x00030003
ecall
li a1, 0x00040003
ecall
li a1, 0x00050003
ecall
li a1, 0x00060003
ecall
li a1, 0x00070003
ecall

# y = 4
li a1, 0x00020004
ecall
li a1, 0x00030004
ecall
li a1, 0x00040004
ecall
li a1, 0x00050004
ecall
li a1, 0x00060004
ecall
li a1, 0x00070004
ecall

# y = 5
li a1, 0x00020005
ecall
li a1, 0x00030005
ecall
li a1, 0x00040005
ecall
li a1, 0x00050005
ecall
li a1, 0x00060005
ecall
li a1, 0x00070005
ecall

# y = 6
li a1, 0x00020006
ecall
li a1, 0x00030006
ecall
li a1, 0x00040006
ecall
li a1, 0x00050006
ecall
li a1, 0x00060006
ecall
li a1, 0x00070006
ecall

# y = 7
li a1, 0x00020007
ecall
li a1, 0x00030007
ecall
li a1, 0x00040007
ecall
li a1, 0x00050007
ecall
li a1, 0x00060007
ecall
li a1, 0x00070007
ecall


###########################################################
# COR 3 — VERMELHO
###########################################################

li a0, 0x100
li a2, 0x00FF0000   # vermelho

# y = 2
li a1, 0x00020002
ecall
li a1, 0x00030002
ecall
li a1, 0x00040002
ecall
li a1, 0x00050002
ecall
li a1, 0x00060002
ecall
li a1, 0x00070002
ecall

# y = 3
li a1, 0x00020003
ecall
li a1, 0x00030003
ecall
li a1, 0x00040003
ecall
li a1, 0x00050003
ecall
li a1, 0x00060003
ecall
li a1, 0x00070003
ecall

# y = 4
li a1, 0x00020004
ecall
li a1, 0x00030004
ecall
li a1, 0x00040004
ecall
li a1, 0x00050004
ecall
li a1, 0x00060004
ecall
li a1, 0x00070004
ecall

# y = 5
li a1, 0x00020005
ecall
li a1, 0x00030005
ecall
li a1, 0x00040005
ecall
li a1, 0x00050005
ecall
li a1, 0x00060005
ecall
li a1, 0x00070005
ecall

# y = 6
li a1, 0x00020006
ecall
li a1, 0x00030006
ecall
li a1, 0x00040006
ecall
li a1, 0x00050006
ecall
li a1, 0x00060006
ecall
li a1, 0x00070006
ecall

# y = 7
li a1, 0x00020007
ecall
li a1, 0x00030007
ecall
li a1, 0x00040007
ecall
li a1, 0x00050007
ecall
li a1, 0x00060007
ecall
li a1, 0x00070007
ecall


###########################################################
# COR 4 — AMARELO
###########################################################

li a0, 0x100
li a2, 0x00FFFF00   # amarelo

# y = 2
li a1, 0x00020002
ecall
li a1, 0x00030002
ecall
li a1, 0x00040002
ecall
li a1, 0x00050002
ecall
li a1, 0x00060002
ecall
li a1, 0x00070002
ecall

# y = 3
li a1, 0x00020003
ecall
li a1, 0x00030003
ecall
li a1, 0x00040003
ecall
li a1, 0x00050003
ecall
li a1, 0x00060003
ecall
li a1, 0x00070003
ecall

# y = 4
li a1, 0x00020004
ecall
li a1, 0x00030004
ecall
li a1, 0x00040004
ecall
li a1, 0x00050004
ecall
li a1, 0x00060004
ecall
li a1, 0x00070004
ecall

# y = 5
li a1, 0x00020005
ecall
li a1, 0x00030005
ecall
li a1, 0x00040005
ecall
li a1, 0x00050005
ecall
li a1, 0x00060005
ecall
li a1, 0x00070005
ecall

# y = 6
li a1, 0x00020006
ecall
li a1, 0x00030006
ecall
li a1, 0x00040006
ecall
li a1, 0x00050006
ecall
li a1, 0x00060006
ecall
li a1, 0x00070006
ecall

# y = 7
li a1, 0x00020007
ecall
li a1, 0x00030007
ecall
li a1, 0x00040007
ecall
li a1, 0x00050007
ecall
li a1, 0x00060007
ecall
li a1, 0x00070007
ecall


###########################################################
# Fim do programa
###########################################################
li a0, 10
ecall
