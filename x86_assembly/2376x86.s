	.text
	.globl	swr_config_frame                # -- Begin function swr_config_frame
	.p2align	4, 0x90
swr_config_frame:                       # @swr_config_frame
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	swr_close@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB0_8
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	leaq	.L.str(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_3
# %bb.2:
	jmp	.LBB0_17
.LBB0_3:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_5
# %bb.4:
	jmp	.LBB0_17
.LBB0_5:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	leaq	.L.str.2(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_7
# %bb.6:
	jmp	.LBB0_17
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	cmpq	$0, -24(%rbp)
	je	.LBB0_16
# %bb.9:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_11
# %bb.10:
	jmp	.LBB0_17
.LBB0_11:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	leaq	.L.str.4(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_13
# %bb.12:
	jmp	.LBB0_17
.LBB0_13:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	leaq	.L.str.5(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_15
# %bb.14:
	jmp	.LBB0_17
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movl	$0, -4(%rbp)
	jmp	.LBB0_18
.LBB0_17:
	movq	-16(%rbp), %rdi
	movl	AV_LOG_ERROR(%rip), %esi
	leaq	.L.str.6(%rip), %rdx
	callq	av_log@PLT
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
.LBB0_18:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"icl"
.L.str.1:
	.asciz	"isf"
.L.str.2:
	.asciz	"isr"
.L.str.3:
	.asciz	"ocl"
.L.str.4:
	.asciz	"osf"
.L.str.5:
	.asciz	"osr"
	.bss
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Failed to set option\n"
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_close
	.addrsig_sym av_opt_set_int
	.addrsig_sym av_log
	.addrsig_sym AVERROR
	.addrsig_sym AV_LOG_ERROR
	.addrsig_sym EINVAL