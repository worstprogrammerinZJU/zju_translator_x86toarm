	.text
	.p2align	4, 0x90                         # -- Begin function read_defined_op
read_defined_op:                        # @read_defined_op
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	movl	$41, %edi
	callq	expect@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	movl	macros(%rip), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	map_get@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	cpp_token_one(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movq	cpp_token_zero(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB0_7:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
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
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.globl	cpp_token_one
	.p2align	3
cpp_token_one:
	.quad	0
	.globl	cpp_token_zero
	.p2align	3
cpp_token_zero:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_defined_op
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym map_get
	.addrsig_sym TIDENT
	.addrsig_sym macros
	.addrsig_sym cpp_token_one
	.addrsig_sym cpp_token_zero