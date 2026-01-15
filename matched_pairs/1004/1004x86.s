	.text
	.p2align	4, 0x90                         # -- Begin function emit_load_convert
emit_load_convert:                      # @emit_load_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_25
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_9
# %bb.7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_24
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_DOUBLE(%rip), %rax
	je	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_LDOUBLE(%rip), %rax
	jne	.LBB0_13
.LBB0_11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FLOAT(%rip), %rax
	jne	.LBB0_13
# %bb.12:
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_23
.LBB0_13:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_BOOL(%rip), %rax
	jne	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rdi
	callq	emit_to_bool@PLT
	jmp	.LBB0_22
.LBB0_15:
	movq	-16(%rbp), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.16:
	movq	-8(%rbp), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	emit_intcast@PLT
	jmp	.LBB0_21
.LBB0_18:
	movq	-8(%rbp), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.19:
	movq	-16(%rbp), %rdi
	callq	emit_toint@PLT
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
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
	.asciz	"cvtsi2ss #eax, #xmm0"
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cvtsi2sd #eax, #xmm0"
.L.str.2:
	.asciz	"cvtps2pd #xmm0, #xmm0"
	.bss
	.globl	KIND_LDOUBLE
	.p2align	3
KIND_LDOUBLE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"cvtpd2ps #xmm0, #xmm0"
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_load_convert
	.addrsig_sym is_inttype
	.addrsig_sym emit
	.addrsig_sym emit_to_bool
	.addrsig_sym emit_intcast
	.addrsig_sym emit_toint
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE
	.addrsig_sym KIND_BOOL