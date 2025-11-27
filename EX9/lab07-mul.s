.data
vetor: .word 5, 10, 20, 40, 80

.text
main:
    li   a0, 5          # quantidade de elementos
    la   a1, vetor       # endereço do vetor
    li   a2, 10          # multiplicador
    call MultiplicaVetor

    # Impressão do vetor multiplicado
    la   s0, vetor
    li   s1, 5
imprime:
    beq  s1, zero, fimMain
    lw   a1, 0(s0)
    addi s0, s0, 4
    addi s1, s1, -1
    li   a0, 1
    ecall                # imprime o número
    li   a0, 11
    li   a1, 13
    ecall                # imprime quebra de linha
    j    imprime

fimMain:
    li   a0, 10
    ecall                # encerra execução


# -------------------------------------------------------
# Função MultiplicaVetor
# Entrada:
#   a0 = quantidade de elementos
#   a1 = endereço do vetor
#   a2 = multiplicador
# -------------------------------------------------------

MultiplicaVetor:
    # Prólogo: salva registradores
    addi sp, sp, -16
    sw   s0, 12(sp)
    sw   s1, 8(sp)
    sw   s2, 4(sp)
    sw   ra, 0(sp)

    mv   s0, a0     # quantidade
    mv   s1, a1     # endereço do vetor
    mv   s2, a2     # multiplicador

for:
    beq  s0, zero, fim     # se acabou, sai

    lw   t0, 0(s1)         # carrega vetor[i]
    mul  t0, t0, s2        # multiplica pelo escalar
    sw   t0, 0(s1)         # escreve de volta

    addi s1, s1, 4         # avança para o próximo elemento
    addi s0, s0, -1        # decrementa contador
    j    for

fim:
    # Epílogo: restaura registradores
    lw   ra, 0(sp)
    lw   s2, 4(sp)
    lw   s1, 8(sp)
    lw   s0, 12(sp)
    addi sp, sp, 16
    ret
