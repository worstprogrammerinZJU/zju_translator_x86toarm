	.text
	.p2align	4, 0x90                         # -- Begin function initApbChangeCallback
initApbChangeCallback:                  # @initApbChangeCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	initApbChangeCallback.initialized(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.1:
	movl	$1, initApbChangeCallback.initialized(%rip)
	movb	$0, %al
	callq	xSemaphoreCreateMutex@PLT
	movl	%eax, apb_change_lock(%rip)
	cmpl	$0, apb_change_lock(%rip)
	jne	.LBB0_3
# %bb.2:
	movl	$0, initApbChangeCallback.initialized(%rip)
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	initApbChangeCallback.initialized
	.comm	initApbChangeCallback.initialized,4,4
	.bss
	.globl	apb_change_lock
	.p2align	2
apb_change_lock:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym initApbChangeCallback
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym initApbChangeCallback.initialized
	.addrsig_sym apb_change_lock