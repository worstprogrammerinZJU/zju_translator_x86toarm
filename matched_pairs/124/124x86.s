	.text
	.globl	make_buffer                     # -- Begin function make_buffer
	.p2align	4, 0x90
make_buffer:                            # @make_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	INIT_SIZE(%rip), %edi
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	INIT_SIZE(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
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
	.addrsig_sym malloc
	.addrsig_sym INIT_SIZE