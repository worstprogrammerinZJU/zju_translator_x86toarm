	.text
	.p2align	4, 0x90                         # -- Begin function emit_gload
emit_gload:                             # @emit_gload
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
	jne	.LBB0_5
# %bb.1:
	cmpl	$0, -20(%rbp)
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_4:
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rdi
	callq	get_load_inst@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rdi
	callq	maybe_emit_bitshift_load@PLT
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
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %s+%d(#rip), #rax"
.L.str.1:
	.asciz	"lea %s(#rip), #rax"
.L.str.2:
	.asciz	"%s %s+%d(#rip), #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_gload
	.addrsig_sym emit
	.addrsig_sym get_load_inst
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY