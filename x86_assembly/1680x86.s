	.text
	.globl	make_map                        # -- Begin function make_map
	.p2align	4, 0x90
make_map:                               # @make_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	INIT_SIZE(%rip), %esi
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	do_make_map@PLT
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