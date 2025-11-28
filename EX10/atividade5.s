.data
entrada: .space 100
str2: .string "ola mundo"

.text
main:

la s1, entrada        #iniciando string onde os caracteres vão ser guardados
mv s2, s1             #guardando posição inicial da string

li a0, 0x130          #iniciando a leitura de teclado  
li t1, 0              #numero para o beq
li t2, 2              #numero para o beq

loop:

li a0, 0x131
ecall
beq a0, t2, leitura    #caractere disponivel
beq a0, t1, fim_leitura        #fim da leitura
j loop                 #ainda não tem caractere

leitura:

mv t0, a1
beq t0, 10, fim_leitura   # 10 é o código ASCII do '\n', para acabar caso o usuário aperte ENTER
sb t0, 0(s1)
addi s1, s1, 1
j loop

fim_leitura:

mv s1, s2
li t3, 0               #contador strlen
j strlen               #sei que botar isso é redundante mas é para ficar mais legível de que as funções só começam depois da leitura da string

strlen:

lb t4, 0(s1)
beq t4, zero, resultado_strlen
addi s1, s1, 1
addi t3, t3, 1
j strlen

resultado_strlen:

li a0, 1        #instrução do ecall para printar inteiro
addi a1, t3, 0
ecall

strcmp:

mv s1, s2
la s3, str2

loop2:

lb t5, 0(s1)
lb t6, 0(s3)

beq t5, zero, fim_s1
beq t6, zero, fim_s3
blt t5, t6, menor
bgt t5, t6, maior

addi s1, s1, 1
addi s3, s3, 1
j loop2

fim_s1:
    beq t6, zero, igual      # as duas strings terminaram juntas
    j menor                  # s1 acaba primeiro → é menor

fim_s3:
    j maior                  # s3 acabou primeiro → s1 é maior

igual:
    li a0, 1
    li a1, 0
    ecall

maior:
    li a0, 1
    li a1, 1

menor:
    li a0, 1
    li a1, -1

strcat:
    mv s1, s2
    strcat:

    mv t0, s1        # t0 vai andar em s1 (copiando)
                      
    mv t1, s3        # t1 vai andar em s3 (lendo)


acha_fim_s1:
    lb t2, 0(t0)
    beq t2, zero, copia_s3
    addi t0, t0, 1
    j acha_fim_s1

#Copia caracteres de s3 até achar '\0'
copia_s3:
    lb t3, 0(t1)
    sb t3, 0(t0)
    beq t3, zero, fim_strcat
    addi t0, t0, 1
    addi t1, t1, 1
    j copia_s3

fim_strcat:
    li a0, 4        
    mv a1, s2       # s2 contém o início da string concatenada
    ecall

fim_completo:

li a0, 10
ecall
