	.text
	.p2align	4, 0x90                         # -- Begin function tmpfd
tmpfd:                                  # @tmpfd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	tmpfile@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	errno(%rip), %esi
	movl	$1, %edi
	leaq	.L.str(%rip), %rdx
	callq	die@PLT
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	fileno@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tmpfile"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tmpfd
	.addrsig_sym tmpfile
	.addrsig_sym die
	.addrsig_sym fileno
	.addrsig_sym errno