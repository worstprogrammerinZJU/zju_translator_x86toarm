	.text
	.globl	heapinsert                      # -- Begin function heapinsert
	.p2align	4, 0x90
heapinsert:                             # @heapinsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set@PLT
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	siftdown@PLT
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym free
	.addrsig_sym set
	.addrsig_sym siftdown