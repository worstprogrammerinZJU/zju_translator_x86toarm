	.text
	.p2align	4, 0x90                         # -- Begin function read_var_or_func
read_var_or_func:                       # @read_var_or_func
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	env@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.1:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_3:
	movl	type_int(%rip), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	make_vector@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	make_func_type@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	warnt@PLT
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ast_funcdesg@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	ast_funcdesg@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undefined variable: %s"
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"assume returning int: %s()"
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_var_or_func
	.addrsig_sym map_get
	.addrsig_sym env
	.addrsig_sym peek
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym make_func_type
	.addrsig_sym make_vector
	.addrsig_sym warnt
	.addrsig_sym ast_funcdesg
	.addrsig_sym type_int
	.addrsig_sym KIND_FUNC