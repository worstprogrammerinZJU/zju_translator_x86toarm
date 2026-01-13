	.text
	.p2align	4, 0x90                         # -- Begin function maybe_convert_bool
maybe_convert_bool:                     # @maybe_convert_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_BOOL(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"test #rax, #rax"
.L.str.1:
	.asciz	"setne #al"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_convert_bool
	.addrsig_sym emit
	.addrsig_sym KIND_BOOL