	.text
	.p2align	4, 0x90                         # -- Begin function yy_try_NUL_trans
yy_try_NUL_trans:                       # @yy_try_NUL_trans
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	yy_accept(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	yy_chk(%rip), %rax
	movq	yy_base(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	addq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	yy_def(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$157, -8(%rbp)
	jb	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	yy_meta(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -48(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_7:
	movq	yy_nxt(%rip), %rax
	movq	yy_base(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	addq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	cmpq	$156, -8(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_9
# %bb.8:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.LBB0_10:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yy_accept
	.p2align	3
yy_accept:
	.quad	0
	.globl	yy_chk
	.p2align	3
yy_chk:
	.quad	0
	.globl	yy_base
	.p2align	3
yy_base:
	.quad	0
	.globl	yy_def
	.p2align	3
yy_def:
	.quad	0
	.globl	yy_meta
	.p2align	3
yy_meta:
	.quad	0
	.globl	yy_nxt
	.p2align	3
yy_nxt:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_try_NUL_trans
	.addrsig_sym yy_accept
	.addrsig_sym yy_chk
	.addrsig_sym yy_base
	.addrsig_sym yy_def
	.addrsig_sym yy_meta
	.addrsig_sym yy_nxt