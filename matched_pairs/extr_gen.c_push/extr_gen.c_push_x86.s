	.text
	.p2align	4, 0x90                         # -- Begin function push
push:                                   # @push
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	movl	stackpos(%rip), %eax
	addl	$8, %eax
	movl	%eax, stackpos(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"push #%s"
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos