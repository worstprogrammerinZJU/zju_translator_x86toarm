	.text
	.p2align	4, 0x90                         # -- Begin function order_cmp
order_cmp:                              # @order_cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	jv_cmp@PLT
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	cmpl	CMP_OP_LESS(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jl	.LBB0_9
.LBB0_2:
	movl	-16(%rbp), %eax
	cmpl	CMP_OP_LESSEQ(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jle	.LBB0_9
.LBB0_4:
	movl	-16(%rbp), %eax
	cmpl	CMP_OP_GREATEREQ(%rip), %eax
	jne	.LBB0_6
# %bb.5:
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jge	.LBB0_9
.LBB0_6:
	movl	-16(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	CMP_OP_GREATER(%rip), %ecx
	movb	%al, -22(%rbp)                  # 1-byte Spill
	jne	.LBB0_8
# %bb.7:
	cmpl	$0, -20(%rbp)
	setg	%al
	movb	%al, -22(%rbp)                  # 1-byte Spill
.LBB0_8:
	movb	-22(%rbp), %al                  # 1-byte Reload
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_9:
	movb	-21(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	jv_bool@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CMP_OP_LESS
	.p2align	2
CMP_OP_LESS:
	.long	0                               # 0x0
	.globl	CMP_OP_LESSEQ
	.p2align	2
CMP_OP_LESSEQ:
	.long	0                               # 0x0
	.globl	CMP_OP_GREATEREQ
	.p2align	2
CMP_OP_GREATEREQ:
	.long	0                               # 0x0
	.globl	CMP_OP_GREATER
	.p2align	2
CMP_OP_GREATER:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym order_cmp
	.addrsig_sym jv_free
	.addrsig_sym jv_cmp
	.addrsig_sym jv_bool
	.addrsig_sym CMP_OP_LESS
	.addrsig_sym CMP_OP_LESSEQ
	.addrsig_sym CMP_OP_GREATEREQ
	.addrsig_sym CMP_OP_GREATER