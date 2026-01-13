	.text
	.globl	write_int                       # -- Begin function write_int
	.p2align	4, 0x90
write_int:                              # @write_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	leaq	-8(%rbp), %rsi
	movl	$4, %edx
	callq	write@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read failed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym error