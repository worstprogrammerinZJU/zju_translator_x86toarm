	.text
	.p2align	4, 0x90                         # -- Begin function ensure_not_void
ensure_not_void:                        # @ensure_not_void
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_VOID(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_VOID
	.p2align	3
KIND_VOID:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"void is not allowed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_not_void
	.addrsig_sym error
	.addrsig_sym KIND_VOID