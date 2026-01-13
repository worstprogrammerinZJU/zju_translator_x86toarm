	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator_func
read_declarator_func:                   # @read_declarator_func
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	read_func_param_list@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function returning a function"
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"function returning an array"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_func
	.addrsig_sym error
	.addrsig_sym read_func_param_list
	.addrsig_sym KIND_FUNC
	.addrsig_sym KIND_ARRAY