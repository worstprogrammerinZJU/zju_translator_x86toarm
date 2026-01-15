	.text
	.p2align	4, 0x90                         # -- Begin function emit_toint
emit_toint:                             # @emit_toint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_5
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	addq	$16, %rsp
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
	.asciz	"cvttss2si #xmm0, #eax"
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cvttsd2si #xmm0, #eax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_toint
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE