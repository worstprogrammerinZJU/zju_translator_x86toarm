	.text
	.p2align	4, 0x90                         # -- Begin function emit_lsave
emit_lsave:                             # @emit_lsave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	maybe_convert_bool@PLT
	movq	-8(%rbp), %rdi
	movl	$97, %esi
	callq	get_int_reg@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	format@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	maybe_emit_bitshift_save@PLT
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
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
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_FLOAT
	.p2align	3
KIND_FLOAT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movss #xmm0, %d(#rbp)"
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"movsd #xmm0, %d(#rbp)"
.L.str.2:
	.asciz	"%d(%%rbp)"
.L.str.3:
	.asciz	"mov #%s, %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lsave
	.addrsig_sym emit
	.addrsig_sym maybe_convert_bool
	.addrsig_sym get_int_reg
	.addrsig_sym format
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE