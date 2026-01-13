	.text
	.p2align	4, 0x90                         # -- Begin function handle_base_file_macro
handle_base_file_macro:                 # @handle_base_file_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	TSTRING(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	get_base_file@PLT
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
	.globl	TSTRING
	.p2align	2
TSTRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_base_file_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym get_base_file
	.addrsig_sym TSTRING