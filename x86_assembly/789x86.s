	.text
	.globl	sigmaDeltaSetup                 # -- Begin function sigmaDeltaSetup
	.p2align	4, 0x90
sigmaDeltaSetup:                        # @sigmaDeltaSetup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$7, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	cmpl	$0, sigmaDeltaSetup.tHasStarted(%rip)
	jne	.LBB0_4
# %bb.3:
	movl	$1, sigmaDeltaSetup.tHasStarted(%rip)
	movb	$0, %al
	callq	xSemaphoreCreateMutex@PLT
	movl	%eax, _sd_sys_lock(%rip)
.LBB0_4:
	movb	$0, %al
	callq	getApbFrequency@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$8, %ecx
	cltd
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$255, -20(%rbp)
	jle	.LBB0_6
# %bb.5:
	movl	$255, -20(%rbp)
.LBB0_6:
	movb	$0, %al
	callq	SD_MUTEX_LOCK@PLT
	movl	-20(%rbp), %edx
	movq	SIGMADELTA+8(%rip), %rax
	movslq	-8(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, SIGMADELTA(%rip)
	movl	$1, SIGMADELTA(%rip)
	movb	$0, %al
	callq	SD_MUTEX_UNLOCK@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movslq	-24(%rbp), %rdi
	movl	_on_apb_change(%rip), %esi
	callq	addApbChangeCallback@PLT
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	shll	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	sigmaDeltaSetup.tHasStarted
	.comm	sigmaDeltaSetup.tHasStarted,4,4
	.bss
	.globl	_sd_sys_lock
	.p2align	2
_sd_sys_lock:
	.long	0                               # 0x0
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	16
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym getApbFrequency
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym addApbChangeCallback
	.addrsig_sym sigmaDeltaSetup.tHasStarted
	.addrsig_sym _sd_sys_lock
	.addrsig_sym SIGMADELTA
	.addrsig_sym _on_apb_change