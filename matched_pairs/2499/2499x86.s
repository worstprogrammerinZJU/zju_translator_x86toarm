	.text
	.globl	nanoseconds                     # -- Begin function nanoseconds
	.p2align	4, 0x90
nanoseconds:                            # @nanoseconds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	warnx@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	imull	$1000000000, %eax, %eax         # imm = 0x3B9ACA00
	movq	-24(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	$1000, %ecx, %ecx               # imm = 0x3E8
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gettimeofday"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday
	.addrsig_sym warnx