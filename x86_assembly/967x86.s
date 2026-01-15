	.text
	.p2align	4, 0x90                         # -- Begin function emit_binop_float_arith
emit_binop_float_arith:                 # @emit_binop_float_arith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	KIND_DOUBLE(%rip), %rcx
	subq	%rcx, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-42, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$5, %eax
	ja	.LBB0_5
# %bb.7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movl	-20(%rbp), %edx
	leaq	.L.str.1(%rip), %rax
	leaq	.L.str(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	-20(%rbp), %edx
	leaq	.L.str.3(%rip), %rax
	leaq	.L.str.2(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movl	-20(%rbp), %edx
	leaq	.L.str.5(%rip), %rax
	leaq	.L.str.4(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movl	-20(%rbp), %edx
	leaq	.L.str.7(%rip), %rax
	leaq	.L.str.6(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str.8(%rip), %rdi
	callq	error@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	emit_expr@PLT
	xorl	%edi, %edi
	callq	push_xmm@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	emit_expr@PLT
	movl	-20(%rbp), %ecx
	leaq	.L.str.11(%rip), %rsi
	leaq	.L.str.10(%rip), %rax
	cmpl	$0, %ecx
	cmovneq	%rax, %rsi
	leaq	.L.str.9(%rip), %rdi
	callq	emit@PLT
	xorl	%edi, %edi
	callq	pop_xmm@PLT
	movq	-16(%rbp), %rsi
	leaq	.L.str.12(%rip), %rdi
	callq	emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"addsd"
.L.str.1:
	.asciz	"addss"
.L.str.2:
	.asciz	"subsd"
.L.str.3:
	.asciz	"subss"
.L.str.4:
	.asciz	"mulsd"
.L.str.5:
	.asciz	"mulss"
.L.str.6:
	.asciz	"divsd"
.L.str.7:
	.asciz	"divss"
.L.str.8:
	.asciz	"invalid operator '%d'"
.L.str.9:
	.asciz	"%s #xmm0, #xmm1"
.L.str.10:
	.asciz	"movsd"
.L.str.11:
	.asciz	"movss"
.L.str.12:
	.asciz	"%s #xmm1, #xmm0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop_float_arith
	.addrsig_sym error
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym pop_xmm
	.addrsig_sym SAVE
	.addrsig_sym KIND_DOUBLE