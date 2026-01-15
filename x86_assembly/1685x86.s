	.text
	.globl	map_put                         # -- Begin function map_put
	.p2align	4, 0x90
map_put:                                # @map_put
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	maybe_rehash@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	hash@PLT
	andl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	TOMBSTONE(%rip), %rax
	jne	.LBB0_6
.LBB0_3:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB0_5:
	jmp	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	andl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	addq	$48, %rsp
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
	.addrsig_sym maybe_rehash
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE