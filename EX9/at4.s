.data
msgMultiplicado: .asciz "O vetor foi multiplicado!\n"
msgFim:          .asciz "Programa encerrado.\n"

vetor: .word 5, 10, 20, 40, 80

.text
main:
    li   a0, 5
    la   a1, vetor
    li   a2, 10
    call MultiplicaVetor

    # Mensagem antes da impressão
    li   a0, 4
    la   a1, msgMultiplicado
    ecall

    la   s0, vetor
    li   s1, 5
imprime:
    beq  s1, zero, fimMain
    lw   a1, 0(s0)
    addi s0, s0, 4
    addi s1, s1, -1
    li   a0, 1
    ecall
    li   a0, 11
    li   a1, 13
    ecall
    j    imprime

fimMain:
    # Mensagem final
    li   a0, 4
    la   a1, msgFim
    ecall

    li   a0, 10
    ecall


###############################################################
# Função MultiplicaVetor — modificada apenas para usar "mul"  #
###############################################################

MultiplicaVetor:
    addi sp, sp, -16
    sw   s0, 12(sp)
    sw   s1, 8(sp)
    sw   s2, 4(sp)
    sw   ra, 0(sp)

    mv   s0, a0   # quantidade
    mv   s1, a1   # endereço do vetor
    mv   s2, a2   # multiplicador

for:
    beq  s0, zero, fim

    lw   t0, 0(s1)
    mul  t0, t0, s2
    sw   t0, 0(s1)

    addi s1, s1, 4
    addi s0, s0, -1
    j    for

fim:
    lw   ra, 0(sp)
    lw   s2, 4(sp)
    lw   s1, 8(sp)
    lw   s0, 12(sp)
    addi sp, sp, 16
    ret
