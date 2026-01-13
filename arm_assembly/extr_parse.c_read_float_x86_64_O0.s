	.text
	.p2align	4, 0x90                         # -- Begin function read_float
read_float:                             # @read_float
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	strtod@PLT
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	type_ldouble(%rip), %edi
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	ast_floattype@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	type_float(%rip), %edi
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	ast_floattype@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-24(%rbp), %rcx
	leaq	.L.str.2(%rip), %rsi
	movsbl	%al, %edx
	callq	errort@PLT
.LBB0_6:
	movl	type_double(%rip), %edi
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	ast_floattype@PLT
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
	.asciz	"l"
	.bss
	.globl	type_ldouble
	.p2align	2
type_ldouble:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"f"
	.bss
	.globl	type_float
	.p2align	2
type_float:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"invalid character '%c': %s"
	.bss
	.globl	type_double
	.p2align	2
type_double:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_float
	.addrsig_sym strtod
	.addrsig_sym strcasecmp
	.addrsig_sym ast_floattype
	.addrsig_sym errort
	.addrsig_sym type_ldouble
	.addrsig_sym type_float
	.addrsig_sym type_double