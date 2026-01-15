	.text
	.globl	stream_stash                    # -- Begin function stream_stash
	.p2align	4, 0x90
stream_stash:                           # @stream_stash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	stashed(%rip), %edi
	movl	files(%rip), %esi
	callq	vec_push@PLT
	movq	-8(%rbp), %rdi
	callq	make_vector1@PLT
	movl	%eax, files(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stashed
	.p2align	2
stashed:
	.long	0                               # 0x0
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym make_vector1
	.addrsig_sym stashed
	.addrsig_sym files