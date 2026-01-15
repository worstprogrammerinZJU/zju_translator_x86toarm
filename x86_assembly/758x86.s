	.text
	.p2align	4, 0x90                         # -- Begin function triggerApbChangeCallback
triggerApbChangeCallback:               # @triggerApbChangeCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movb	$0, %al
	callq	initApbChangeCallback@PLT
	movl	apb_change_lock(%rip), %edi
	movl	portMAX_DELAY(%rip), %esi
	callq	xSemaphoreTake@PLT
	movq	apb_change_callbacks(%rip), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	apb_change_lock(%rip), %edi
	callq	xSemaphoreGive@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	apb_change_lock
	.p2align	2
apb_change_lock:
	.long	0                               # 0x0
	.globl	portMAX_DELAY
	.p2align	2
portMAX_DELAY:
	.long	0                               # 0x0
	.globl	apb_change_callbacks
	.p2align	3
apb_change_callbacks:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym triggerApbChangeCallback
	.addrsig_sym initApbChangeCallback
	.addrsig_sym xSemaphoreTake
	.addrsig_sym xSemaphoreGive
	.addrsig_sym apb_change_lock
	.addrsig_sym portMAX_DELAY
	.addrsig_sym apb_change_callbacks