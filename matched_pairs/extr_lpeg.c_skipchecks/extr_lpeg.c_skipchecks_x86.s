	.text
	.p2align	4, 0x90                         # -- Begin function skipchecks
skipchecks:                             # @skipchecks
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	callq	ischeck@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	callq	op_step@PLT
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	MAXOFF(%rip), %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_4
# %bb.3:
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	callq	sizei@PLT
	movq	%rax, %rcx
	movslq	-28(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAXOFF
	.p2align	2
MAXOFF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skipchecks
	.addrsig_sym ischeck
	.addrsig_sym op_step
	.addrsig_sym sizei
	.addrsig_sym MAXOFF