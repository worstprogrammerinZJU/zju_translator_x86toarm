	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator_params_oldstyle
read_declarator_params_oldstyle:        # @read_declarator_params_oldstyle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	ast_lvar@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movl	$41, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$44, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	get@PLT
	movq	%rax, %rdi
	callq	tok2s@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"identifier expected, but got %s"
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"comma expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_params_oldstyle
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym vec_push
	.addrsig_sym ast_lvar
	.addrsig_sym next_token
	.addrsig_sym TIDENT
	.addrsig_sym type_int