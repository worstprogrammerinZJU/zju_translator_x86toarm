	.text
	.p2align	4, 0x90                         # -- Begin function define_special_macro
define_special_macro:                   # @define_special_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	macros(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	make_special_macro@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	map_put@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym define_special_macro
	.addrsig_sym map_put
	.addrsig_sym make_special_macro
	.addrsig_sym macros