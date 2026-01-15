	.text
	.p2align	4, 0x90                         # -- Begin function handle_file_macro
handle_file_macro:                      # @handle_file_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	TSTRING(%rip), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	callq	make_token_pushback@PLT
	addq	$16, %rsp
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
	.addrsig_sym handle_file_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym TSTRING