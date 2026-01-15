	.text
	.p2align	4, 0x90                         # -- Begin function mark_location
mark_location:                          # @mark_location
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -8(%rbp)
	movl	$4, %edi
	callq	malloc@PLT
	movq	%rax, source_loc(%rip)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	source_loc(%rip), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	source_loc(%rip), %rax
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	source_loc
	.p2align	3
source_loc:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mark_location
	.addrsig_sym peek
	.addrsig_sym malloc
	.addrsig_sym source_loc