	.text
	.p2align	4, 0x90                         # -- Begin function read_label
read_label:                             # @read_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	labels(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	ast_label@PLT
	movq	%rax, -24(%rbp)
	movl	labels(%rip), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	map_put@PLT
	movq	-24(%rbp), %rdi
	callq	read_label_tail@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	labels
	.p2align	2
labels:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate label: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label
	.addrsig_sym map_get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym ast_label
	.addrsig_sym map_put
	.addrsig_sym read_label_tail
	.addrsig_sym labels