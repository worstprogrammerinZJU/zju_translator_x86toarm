	.text
	.p2align	4, 0x90                         # -- Begin function read_enum_def
read_enum_def:                          # @read_enum_def
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$0, -16(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -24(%rbp)
.LBB0_2:
	cmpq	$0, -16(%rbp)
	je	.LBB0_7
# %bb.3:
	movl	tags(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ENUM(%rip), %rax
	je	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movq	-24(%rbp), %rdi
	movl	$123, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.8:
	cmpq	$0, -16(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	tags(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	cmpq	$0, %rax
	jne	.LBB0_11
.LBB0_10:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_11:
	movq	-24(%rbp), %rdi
	callq	unget_token@PLT
	movq	type_int(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_27
.LBB0_12:
	cmpq	$0, -16(%rbp)
	je	.LBB0_14
# %bb.13:
	movl	tags(%rip), %edi
	movq	-16(%rbp), %rsi
	movq	type_enum(%rip), %rdx
	callq	map_put@PLT
.LBB0_14:
	movl	$0, -36(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$125, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_17
# %bb.16:
	jmp	.LBB0_26
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	tok2s@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	errort@PLT
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$61, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=1
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -36(%rbp)
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	movq	type_int(%rip), %rdi
	movl	-36(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	callq	ast_inttype@PLT
	movq	%rax, -56(%rbp)
	movb	$0, %al
	callq	env@PLT
	movl	%eax, %edi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	map_put@PLT
	movl	$44, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_15
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=1
	movl	$125, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_25
# %bb.24:
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	callq	tok2s@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.3(%rip), %rsi
	callq	errort@PLT
	jmp	.LBB0_15
.LBB0_26:
	movq	type_int(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_27:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.globl	tags
	.p2align	2
tags:
	.long	0                               # 0x0
	.globl	KIND_ENUM
	.p2align	3
KIND_ENUM:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declarations of %s does not match"
.L.str.1:
	.asciz	"enum tag %s is not defined"
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.globl	type_enum
	.p2align	3
type_enum:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"identifier expected, but got %s"
.L.str.3:
	.asciz	"',' or '}' expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_enum_def
	.addrsig_sym get
	.addrsig_sym map_get
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym map_put
	.addrsig_sym tok2s
	.addrsig_sym next_token
	.addrsig_sym read_intexpr
	.addrsig_sym ast_inttype
	.addrsig_sym env
	.addrsig_sym peek
	.addrsig_sym TIDENT
	.addrsig_sym tags
	.addrsig_sym KIND_ENUM
	.addrsig_sym type_int
	.addrsig_sym type_enum