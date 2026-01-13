	.text
	.p2align	4, 0x90                         # -- Begin function read_funclike_macro_body
read_funclike_macro_body:               # @read_funclike_macro_body
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	12(%rax), %esi
	callq	map_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	copy_token@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funclike_macro_body
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym map_get
	.addrsig_sym copy_token
	.addrsig_sym vec_push
	.addrsig_sym TNEWLINE
	.addrsig_sym TIDENT