	.text
	.p2align	4, 0x90                         # -- Begin function sort_inits
sort_inits:                             # @sort_inits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_body@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	comp_init(%rip), %ecx
	movl	$8, %edx
	callq	qsort@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	comp_init
	.p2align	2
comp_init:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_inits
	.addrsig_sym qsort
	.addrsig_sym vec_body
	.addrsig_sym vec_len
	.addrsig_sym comp_init