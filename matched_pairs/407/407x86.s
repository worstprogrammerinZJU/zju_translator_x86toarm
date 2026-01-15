	.text
	.p2align	4, 0x90                         # -- Begin function handle_include_level_macro
handle_include_level_macro:             # @handle_include_level_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	TNUMBER(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	stream_depth@PLT
	movq	%rax, %rsi
	subq	$1, %rsi
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	make_token_pushback@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNUMBER
	.p2align	2
TNUMBER:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_include_level_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym format
	.addrsig_sym stream_depth
	.addrsig_sym TNUMBER