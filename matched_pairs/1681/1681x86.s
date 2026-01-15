	.text
	.globl	make_map_parent                 # -- Begin function make_map_parent
	.p2align	4, 0x90
make_map_parent:                        # @make_map_parent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	INIT_SIZE(%rip), %esi
	callq	do_make_map@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INIT_SIZE
	.p2align	2
INIT_SIZE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_map
	.addrsig_sym INIT_SIZE