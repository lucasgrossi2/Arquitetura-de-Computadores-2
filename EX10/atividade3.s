.data
entrada: .space 100


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
beq a0, t1, fim        #fim a leitura
j loop                 #ainda não tem caractere

leitura:

mv t0, a1
beq t0, 10, fim   # 10 é o código ASCII do '\n', para acabar caso o usuário aperte ENTER
sb t0, 0(s1)
addi s1, s1, 1
j loop

fim:

#imprime a string só para saber se deu certo
sb zero, 0(s1)
li a0, 4
mv a1, s2
ecall

li a0, 10
ecall
