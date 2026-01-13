	.text
	.globl	yy_create_buffer                # -- Begin function yy_create_buffer
	.p2align	4, 0x90
yy_create_buffer:                       # @yy_create_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %esi
	movl	$4, %edi
	callq	yyalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_2:
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	addl	$2, %edi
	movl	-16(%rbp), %esi
	callq	yyalloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_4:
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-16(%rbp), %edx
	callq	yy_init_buffer@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_create_buffer()"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_init_buffer