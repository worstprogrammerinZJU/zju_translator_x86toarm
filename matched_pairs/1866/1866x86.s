	.text
	.p2align	4, 0x90                         # -- Begin function read_compound_stmt
read_compound_stmt:                     # @read_compound_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	localenv(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	localenv(%rip), %rdi
	callq	make_map_parent@PLT
	movq	%rax, localenv(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$125, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	read_decl_or_stmt@PLT
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	%rax, localenv(%rip)
	movq	-16(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_compound_stmt
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym ast_compound_stmt
	.addrsig_sym localenv