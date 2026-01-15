	.text
	.p2align	4, 0x90                         # -- Begin function clean_layout
clean_layout:                           # @clean_layout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.1:
	movl	-20(%rbp), %eax
	cmpl	AV_CH_FRONT_CENTER(%rip), %eax
	je	.LBB0_4
# %bb.2:
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	leaq	-160(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	$128, %esi
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
	callq	av_get_channel_layout_string@PLT
	movq	-16(%rbp), %rdi
	movl	AV_LOG_VERBOSE(%rip), %esi
	leaq	-160(%rbp), %rcx
	leaq	.L.str(%rip), %rdx
	callq	av_log@PLT
	movl	AV_CH_FRONT_CENTER(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AV_CH_FRONT_CENTER
	.p2align	2
AV_CH_FRONT_CENTER:
	.long	0                               # 0x0
	.globl	AV_LOG_VERBOSE
	.p2align	2
AV_LOG_VERBOSE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Treating %s as mono\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clean_layout
	.addrsig_sym av_get_channel_layout_string
	.addrsig_sym av_log
	.addrsig_sym AV_CH_FRONT_CENTER
	.addrsig_sym AV_LOG_VERBOSE