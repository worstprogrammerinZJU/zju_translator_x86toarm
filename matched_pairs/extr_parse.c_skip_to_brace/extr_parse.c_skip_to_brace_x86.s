	.text
	.p2align	4, 0x90                         # -- Begin function skip_to_brace
skip_to_brace:                          # @skip_to_brace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$125, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_8
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$46, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	get@PLT
	movl	$61, %edi
	callq	expect@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_7
# %bb.6:
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	warnt@PLT
	movb	$0, %al
	callq	maybe_skip_comma@PLT
	jmp	.LBB0_1
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"excessive initializer: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_to_brace
	.addrsig_sym next_token
	.addrsig_sym get
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_assignment_expr
	.addrsig_sym warnt
	.addrsig_sym node2s
	.addrsig_sym maybe_skip_comma