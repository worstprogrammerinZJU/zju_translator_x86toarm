	.text
	.p2align	4, 0x90                         # -- Begin function read_funclike_macro
read_funclike_macro:                    # @read_funclike_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_map@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	read_funclike_macro_params@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	read_funclike_macro_body@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	hashhash_check@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	map_len@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	movl	-20(%rbp), %edx
	callq	make_func_macro@PLT
	movq	%rax, -40(%rbp)
	movl	macros(%rip), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rdx
	callq	map_put@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funclike_macro
	.addrsig_sym make_map
	.addrsig_sym read_funclike_macro_params
	.addrsig_sym read_funclike_macro_body
	.addrsig_sym hashhash_check
	.addrsig_sym make_func_macro
	.addrsig_sym map_len
	.addrsig_sym map_put
	.addrsig_sym macros