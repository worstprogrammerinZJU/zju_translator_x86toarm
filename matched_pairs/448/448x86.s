	.text
	.p2align	4, 0x90                         # -- Begin function read_intexpr_line
read_intexpr_line:                      # @read_intexpr_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	read_defined_op@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	jmp	.LBB0_9
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	cpp_token_zero(%rip), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"defined"
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.globl	cpp_token_zero
	.p2align	3
cpp_token_zero:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_intexpr_line
	.addrsig_sym make_vector
	.addrsig_sym read_expand_newline
	.addrsig_sym is_ident
	.addrsig_sym vec_push
	.addrsig_sym read_defined_op
	.addrsig_sym TNEWLINE
	.addrsig_sym TIDENT
	.addrsig_sym cpp_token_zero