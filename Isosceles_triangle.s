.data
length: .word 8  #legs size
star:  .string "*"
spa:  .string " "
newline:  .string "\n"
.text 
#s2 = i
#s3 = j
#s4 = legs size
#t0,t1,t2 = temp size

main:
		
			add s2, x0, x0        # i =0
			add s3, x0, x0        # j = 0
			lw  s4, length        # size = 8
loop1:
			la a0, newline        #print newline
			li a7, 4
			ecall

			addi	s2, s2, 1		   #i = i+1
			addi	t0, s4, 1		   #t0 = size+1
			blt   s2, t0, cond    #for(i < size+1)
			j exit		
			 
loop2:
			addi s3, s3, 1	      #j = j+1
			add t2, s4, s2	      #t0=size+i

	      		bge   s3, t2, loop1   #for(j < size+i )
			sub  t1, s4, s2	      #t1=size-i
			addi t1, t1, 1        #t1=size-i+1
			blt  s3, t1, printSpace	   #if (j < size - i+1)				
			j printStar	

cond:
			add s3, x0, x0        # init j
			j loop2

printStar:
			la a0, star
			li a7, 4
			ecall
			j loop2	

printSpace:		
			la a0, spa
			li a7, 4
			ecall
			j loop2

exit:
    			li a7, 10
    			ecall 
