	.text
	.globl	map_remove                      # -- Begin function map_remove
	.p2align	4, 0x90
map_remove:                             # @map_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_9
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	hash@PLT
	andl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	TOMBSTONE(%rip), %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_7:
	movq	TOMBSTONE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	andl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_9:
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
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE