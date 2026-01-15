	.text
	.p2align	4, 0x90                         # -- Begin function emit_builtin_reg_class
emit_builtin_reg_class:                 # @emit_builtin_reg_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	xorl	%esi, %esi
	callq	vec_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-24(%rbp), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mov $2, #eax"
.L.str.1:
	.asciz	"mov $1, #eax"
.L.str.2:
	.asciz	"mov $0, #eax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_reg_class
	.addrsig_sym vec_get
	.addrsig_sym assert
	.addrsig_sym emit
	.addrsig_sym is_flotype
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_STRUCT