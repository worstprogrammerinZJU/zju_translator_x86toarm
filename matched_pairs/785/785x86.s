	.text
	.p2align	4, 0x90                         # -- Begin function _on_apb_change
_on_apb_change:                         # @_on_apb_change
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_5
.LBB0_2:
	movq	-8(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	APB_BEFORE_CHANGE(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	$0, SIGMADELTA(%rip)
	jmp	.LBB0_5
.LBB0_4:
	movl	-20(%rbp), %eax
	movl	$1000000, %ecx                  # imm = 0xF4240
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	$1000000, %ecx                  # imm = 0xF4240
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movb	$0, %al
	callq	SD_MUTEX_LOCK@PLT
	movq	SIGMADELTA+8(%rip), %rax
	movq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	imull	-44(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, %edx
	subl	$1, %edx
	movq	SIGMADELTA+8(%rip), %rax
	movq	-40(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, SIGMADELTA(%rip)
	movl	$1, SIGMADELTA(%rip)
	movb	$0, %al
	callq	SD_MUTEX_UNLOCK@PLT
.LBB0_5:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	APB_BEFORE_CHANGE
	.p2align	3
APB_BEFORE_CHANGE:
	.quad	0                               # 0x0
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _on_apb_change
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym APB_BEFORE_CHANGE
	.addrsig_sym SIGMADELTA