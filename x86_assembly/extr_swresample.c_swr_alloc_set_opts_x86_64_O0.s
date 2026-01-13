	.text
	.globl	swr_alloc_set_opts              # -- Begin function swr_alloc_set_opts
	.p2align	4, 0x90
swr_alloc_set_opts:                     # @swr_alloc_set_opts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	swr_alloc@PLT
	movq	%rax, -16(%rbp)
.LBB0_2:
	cmpq	$0, -16(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	$0, -8(%rbp)
	jmp	.LBB0_22
.LBB0_4:
	movl	24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_6
# %bb.5:
	jmp	.LBB0_21
.LBB0_6:
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_8
# %bb.7:
	jmp	.LBB0_21
.LBB0_8:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %edx
	leaq	.L.str.2(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_10
# %bb.9:
	jmp	.LBB0_21
.LBB0_10:
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_12
# %bb.11:
	jmp	.LBB0_21
.LBB0_12:
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	leaq	.L.str.4(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_14
# %bb.13:
	jmp	.LBB0_21
.LBB0_14:
	movq	-16(%rbp), %rdi
	movl	16(%rbp), %edx
	leaq	.L.str.5(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_16
# %bb.15:
	jmp	.LBB0_21
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.6(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_18
# %bb.17:
	jmp	.LBB0_21
.LBB0_18:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.7(%rip), %rsi
	xorl	%ecx, %ecx
	callq	av_opt_set_int@PLT
	cmpq	$0, %rax
	jge	.LBB0_20
# %bb.19:
	jmp	.LBB0_21
.LBB0_20:
	movq	-16(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	av_opt_set_int@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_21:
	movq	-16(%rbp), %rdi
	movl	AV_LOG_ERROR(%rip), %esi
	leaq	.L.str.9(%rip), %rdx
	callq	av_log@PLT
	leaq	-16(%rbp), %rdi
	callq	swr_free@PLT
	movq	$0, -8(%rbp)
.LBB0_22:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ocl"
.L.str.1:
	.asciz	"osf"
.L.str.2:
	.asciz	"osr"
.L.str.3:
	.asciz	"icl"
.L.str.4:
	.asciz	"isf"
.L.str.5:
	.asciz	"isr"
.L.str.6:
	.asciz	"ich"
.L.str.7:
	.asciz	"och"
.L.str.8:
	.asciz	"uch"
	.bss
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Failed to set option\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_alloc
	.addrsig_sym av_opt_set_int
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym av_log
	.addrsig_sym swr_free
	.addrsig_sym AV_LOG_ERROR