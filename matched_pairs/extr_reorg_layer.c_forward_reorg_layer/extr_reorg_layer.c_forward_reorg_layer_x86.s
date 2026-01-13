	.text
	.globl	forward_reorg_layer             # -- Begin function forward_reorg_layer
	.p2align	4, 0x90
forward_reorg_layer:                    # @forward_reorg_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	cmpq	$0, 56(%rax)
	je	.LBB0_5
# %bb.1:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	24(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movl	(%rcx), %eax
	imull	4(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rdi
	movl	8(%rax), %esi
	imull	12(%rax), %esi
	movl	36(%rax), %edx
	movl	4(%rax), %ecx
	xorl	%r8d, %r8d
	callq	flatten@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rdi
	movl	8(%rax), %esi
	imull	12(%rax), %esi
	movl	36(%rax), %edx
	movl	4(%rax), %ecx
	movl	$1, %r8d
	callq	flatten@PLT
.LBB0_4:
	jmp	.LBB0_16
.LBB0_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 48(%rax)
	je	.LBB0_11
# %bb.6:
	movl	$0, -12(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	16(%rdx), %edi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %eax
	imull	16(%rdx), %eax
	cltq
	addq	%rax, %rsi
	movq	24(%rdx), %rcx
	movl	-12(%rbp), %eax
	imull	(%rdx), %eax
	cltq
	addq	%rax, %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	jmp	.LBB0_15
.LBB0_11:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB0_13
# %bb.12:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rdi
	movl	8(%rax), %esi
	movl	12(%rax), %edx
	movl	36(%rax), %ecx
	movl	4(%rax), %r8d
	movl	32(%rax), %r9d
	movq	24(%rax), %rax
	movl	$1, (%rsp)
	movq	%rax, 8(%rsp)
	callq	reorg_cpu@PLT
	jmp	.LBB0_14
.LBB0_13:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rdi
	movl	8(%rax), %esi
	movl	12(%rax), %edx
	movl	36(%rax), %ecx
	movl	4(%rax), %r8d
	movl	32(%rax), %r9d
	movq	24(%rax), %rax
	xorl	%r10d, %r10d
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	reorg_cpu@PLT
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy
	.addrsig_sym flatten
	.addrsig_sym copy_cpu
	.addrsig_sym reorg_cpu