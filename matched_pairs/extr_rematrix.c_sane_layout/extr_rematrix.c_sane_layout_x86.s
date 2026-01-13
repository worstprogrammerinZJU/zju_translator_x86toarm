	.text
	.p2align	4, 0x90                         # -- Begin function sane_layout
sane_layout:                            # @sane_layout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	AV_CH_LAYOUT_SURROUND(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	movl	-8(%rbp), %edi
	movl	AV_CH_FRONT_LEFT(%rip), %eax
	orl	AV_CH_FRONT_RIGHT(%rip), %eax
	andl	%eax, %edi
	callq	even@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_4:
	movl	-8(%rbp), %edi
	movl	AV_CH_SIDE_LEFT(%rip), %eax
	orl	AV_CH_SIDE_RIGHT(%rip), %eax
	andl	%eax, %edi
	callq	even@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_6:
	movl	-8(%rbp), %edi
	movl	AV_CH_BACK_LEFT(%rip), %eax
	orl	AV_CH_BACK_RIGHT(%rip), %eax
	andl	%eax, %edi
	callq	even@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_8:
	movl	-8(%rbp), %edi
	movl	AV_CH_FRONT_LEFT_OF_CENTER(%rip), %eax
	orl	AV_CH_FRONT_RIGHT_OF_CENTER(%rip), %eax
	andl	%eax, %edi
	callq	even@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movl	-8(%rbp), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	cmpq	SWR_CH_MAX(%rip), %rax
	jl	.LBB0_12
# %bb.11:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	$1, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AV_CH_LAYOUT_SURROUND
	.p2align	2
AV_CH_LAYOUT_SURROUND:
	.long	0                               # 0x0
	.globl	AV_CH_FRONT_LEFT
	.p2align	2
AV_CH_FRONT_LEFT:
	.long	0                               # 0x0
	.globl	AV_CH_FRONT_RIGHT
	.p2align	2
AV_CH_FRONT_RIGHT:
	.long	0                               # 0x0
	.globl	AV_CH_SIDE_LEFT
	.p2align	2
AV_CH_SIDE_LEFT:
	.long	0                               # 0x0
	.globl	AV_CH_SIDE_RIGHT
	.p2align	2
AV_CH_SIDE_RIGHT:
	.long	0                               # 0x0
	.globl	AV_CH_BACK_LEFT
	.p2align	2
AV_CH_BACK_LEFT:
	.long	0                               # 0x0
	.globl	AV_CH_BACK_RIGHT
	.p2align	2
AV_CH_BACK_RIGHT:
	.long	0                               # 0x0
	.globl	AV_CH_FRONT_LEFT_OF_CENTER
	.p2align	2
AV_CH_FRONT_LEFT_OF_CENTER:
	.long	0                               # 0x0
	.globl	AV_CH_FRONT_RIGHT_OF_CENTER
	.p2align	2
AV_CH_FRONT_RIGHT_OF_CENTER:
	.long	0                               # 0x0
	.globl	SWR_CH_MAX
	.p2align	3
SWR_CH_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sane_layout
	.addrsig_sym even
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym AV_CH_LAYOUT_SURROUND
	.addrsig_sym AV_CH_FRONT_LEFT
	.addrsig_sym AV_CH_FRONT_RIGHT
	.addrsig_sym AV_CH_SIDE_LEFT
	.addrsig_sym AV_CH_SIDE_RIGHT
	.addrsig_sym AV_CH_BACK_LEFT
	.addrsig_sym AV_CH_BACK_RIGHT
	.addrsig_sym AV_CH_FRONT_LEFT_OF_CENTER
	.addrsig_sym AV_CH_FRONT_RIGHT_OF_CENTER
	.addrsig_sym SWR_CH_MAX