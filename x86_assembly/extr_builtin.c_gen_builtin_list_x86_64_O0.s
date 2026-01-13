	.text
	.p2align	4, 0x90                         # -- Begin function gen_builtin_list
gen_builtin_list:                       # @gen_builtin_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	block_list_funcs@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	gen_const@PLT
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rdi
	callq	gen_function@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"builtins/0"
.L.str.1:
	.asciz	"builtins"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_builtin_list
	.addrsig_sym jv_array_append
	.addrsig_sym block_list_funcs
	.addrsig_sym jv_string
	.addrsig_sym BLOCK
	.addrsig_sym gen_function
	.addrsig_sym gen_noop
	.addrsig_sym gen_const