	.text
	.p2align	4, 0x90                         # -- Begin function emit_lload
emit_lload:                             # @emit_lload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_10
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_LDOUBLE(%rip), %rax
	jne	.LBB0_7
.LBB0_6:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_8
.LBB0_7:
	movq	-8(%rbp), %rdi
	callq	get_load_inst@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rdi
	callq	maybe_emit_bitshift_load@PLT
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
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
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %d(#%s), #rax"
	.bss
	.globl	KIND_FLOAT
	.p2align	3
KIND_FLOAT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"movss %d(#%s), #xmm0"
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.quad	0                               # 0x0
	.globl	KIND_LDOUBLE
	.p2align	3
KIND_LDOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"movsd %d(#%s), #xmm0"
.L.str.3:
	.asciz	"%s %d(#%s), #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lload
	.addrsig_sym emit
	.addrsig_sym get_load_inst
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE