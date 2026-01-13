	.text
	.p2align	4, 0x90                         # -- Begin function map_get_nostack
map_get_nostack:                        # @map_get_nostack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	hash@PLT
	andl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	TOMBSTONE(%rip), %rax
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	andl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	movq	$0, -8(%rbp)
.LBB0_10:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TOMBSTONE
	.p2align	3
TOMBSTONE:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym map_get_nostack
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE