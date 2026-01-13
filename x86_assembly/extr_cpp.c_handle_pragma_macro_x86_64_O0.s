	.text
	.p2align	4, 0x90                         # -- Begin function handle_pragma_macro
handle_pragma_macro:                    # @handle_pragma_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_token@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	$41, %edi
	callq	expect@PLT
	movq	-16(%rbp), %rdi
	callq	parse_pragma_operand@PLT
	movq	-8(%rbp), %rdi
	movl	TNUMBER(%rip), %esi
	leaq	.L.str.1(%rip), %rdx
	callq	make_token_pushback@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Pragma takes a string literal, but got %s"
	.bss
	.globl	TNUMBER
	.p2align	2
TNUMBER:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_pragma_macro
	.addrsig_sym expect
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym parse_pragma_operand
	.addrsig_sym make_token_pushback
	.addrsig_sym TSTRING
	.addrsig_sym TNUMBER