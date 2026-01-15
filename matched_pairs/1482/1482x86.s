	.text
	.p2align	4, 0x90                         # -- Begin function yy_get_previous_state
yy_get_previous_state:                  # @yy_get_previous_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	YY_MORE_ADJ(%rip), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jae	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	yy_ec(%rip), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	YY_SC_TO_UI@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cltq
	movq	%rax, -40(%rbp)
	movq	yy_accept(%rip), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 32(%rax)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	yy_chk(%rip), %rax
	movq	yy_base(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	addq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movq	yy_def(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$157, -16(%rbp)
	jb	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	movq	yy_meta(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	jmp	.LBB0_8
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	yy_nxt(%rip), %rax
	movq	yy_base(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	addq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -16(%rbp)
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_MORE_ADJ
	.p2align	2
YY_MORE_ADJ:
	.long	0                               # 0x0
	.globl	yy_ec
	.p2align	3
yy_ec:
	.quad	0
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
	.addrsig_sym yy_get_previous_state
	.addrsig_sym YY_SC_TO_UI
	.addrsig_sym YY_MORE_ADJ
	.addrsig_sym yy_ec
	.addrsig_sym yy_accept
	.addrsig_sym yy_chk
	.addrsig_sym yy_base
	.addrsig_sym yy_def
	.addrsig_sym yy_meta
	.addrsig_sym yy_nxt