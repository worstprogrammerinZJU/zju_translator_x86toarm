	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator_array
read_declarator_array:                  # @read_declarator_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$93, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$-1, -12(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -12(%rbp)
	movl	$93, %edi
	callq	expect@PLT
.LBB0_3:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	read_declarator_tail@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_5:
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	make_array_type@PLT
	addq	$32, %rsp
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
	.asciz	"array of functions"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_array
	.addrsig_sym next_token
	.addrsig_sym read_intexpr
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_declarator_tail
	.addrsig_sym errort
	.addrsig_sym make_array_type
	.addrsig_sym KIND_FUNC