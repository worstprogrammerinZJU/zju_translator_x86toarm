	.text
	.p2align	4, 0x90                         # -- Begin function _rmtAllocate
_rmtAllocate:                           # @_rmtAllocate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	g_rmt_objects(%rip), %rax
	movslq	-8(%rbp), %rcx
	movl	%edx, (%rax,%rcx,8)
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	g_rmt_objects(%rip), %rax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movl	$1, 4(%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	g_rmt_objects(%rip), %rax
	movslq	-8(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	g_rmt_objects
	.p2align	3
g_rmt_objects:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _rmtAllocate
	.addrsig_sym g_rmt_objects