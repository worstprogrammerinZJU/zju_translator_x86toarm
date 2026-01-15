	.text
	.globl	rmtInit                         # -- Begin function rmtInit
	.p2align	4, 0x90
rmtInit:                                # @rmtInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpq	$0, g_rmt_block_lock(%rip)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	xSemaphoreCreateMutex@PLT
	movq	%rax, g_rmt_block_lock(%rip)
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	g_rmt_block_lock(%rip), %rdi
	movl	portMAX_DELAY(%rip), %esi
	callq	xSemaphoreTake@PLT
	cmpq	pdPASS(%rip), %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_5:
	movq	$0, -40(%rbp)
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	-40(%rbp), %rax
	cmpq	MAX_CHANNELS(%rip), %rax
	jae	.LBB0_19
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	$0, -48(%rbp)
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -57(%rbp)                  # 1-byte Spill
	jae	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	cmpq	MAX_CHANNELS(%rip), %rax
	setb	%al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	movb	-57(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_11
	jmp	.LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	movq	g_rmt_objects(%rip), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_8
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	movslq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_17
# %bb.16:
	jmp	.LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_6
.LBB0_19:
	movq	-40(%rbp), %rax
	cmpq	MAX_CHANNELS(%rip), %rax
	je	.LBB0_22
# %bb.20:
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	cmpq	MAX_CHANNELS(%rip), %rax
	jae	.LBB0_22
# %bb.21:
	movq	-48(%rbp), %rax
	movslq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_23
.LBB0_22:
	movq	g_rmt_block_lock(%rip), %rdi
	callq	xSemaphoreGive@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_23:
	movl	-12(%rbp), %edi
	movq	-40(%rbp), %rsi
	movl	-24(%rbp), %edx
	callq	_rmtAllocate@PLT
	movq	%rax, -32(%rbp)
	movq	g_rmt_block_lock(%rip), %rdi
	callq	xSemaphoreGive@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	g_rmt_objlocks(%rip), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	jne	.LBB0_27
# %bb.24:
	movb	$0, %al
	callq	xSemaphoreCreateMutex@PLT
	movq	%rax, %rdx
	movq	g_rmt_objlocks(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	g_rmt_objlocks(%rip), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	jne	.LBB0_26
# %bb.25:
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	movq	-56(%rbp), %rdi
	callq	RMT_MUTEX_LOCK@PLT
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	-12(%rbp), %edi
	movq	-56(%rbp), %rsi
	movl	-16(%rbp), %edx
	callq	_initPin@PLT
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, 72(%rax)
	movl	-24(%rbp), %ecx
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rdx
	addq	%rdx, %rax
	movl	%ecx, 76(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 104(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 96(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 88(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$128, 80(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 64(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 56(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 48(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 40(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 32(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 24(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 16(%rax)
	movl	$1, RMT+8(%rip)
	cmpl	$0, -16(%rbp)
	je	.LBB0_29
# %bb.28:
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$0, 4(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_30
.LBB0_29:
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, 4(%rax)
	movq	RMT(%rip), %rax
	imulq	$112, -56(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, 12(%rax)
.LBB0_30:
	cmpl	$0, intr_handle(%rip)
	jne	.LBB0_32
# %bb.31:
	movl	ETS_RMT_INTR_SOURCE(%rip), %edi
	movq	ESP_INTR_FLAG_IRAM(%rip), %rax
	movl	%eax, %esi
	movl	_rmt_isr(%rip), %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	intr_handle(%rip), %r8
	callq	esp_intr_alloc@PLT
.LBB0_32:
	movq	-56(%rbp), %rdi
	callq	RMT_MUTEX_UNLOCK@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_33:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	g_rmt_block_lock
	.p2align	3
g_rmt_block_lock:
	.quad	0
	.globl	portMAX_DELAY
	.p2align	2
portMAX_DELAY:
	.long	0                               # 0x0
	.globl	pdPASS
	.p2align	3
pdPASS:
	.quad	0                               # 0x0
	.globl	MAX_CHANNELS
	.p2align	3
MAX_CHANNELS:
	.quad	0                               # 0x0
	.globl	g_rmt_objects
	.p2align	3
g_rmt_objects:
	.quad	0
	.globl	g_rmt_objlocks
	.p2align	3
g_rmt_objlocks:
	.quad	0
	.globl	RMT
	.p2align	3
RMT:
	.zero	16
	.globl	intr_handle
	.p2align	2
intr_handle:
	.long	0                               # 0x0
	.globl	ETS_RMT_INTR_SOURCE
	.p2align	2
ETS_RMT_INTR_SOURCE:
	.long	0                               # 0x0
	.globl	ESP_INTR_FLAG_IRAM
	.p2align	3
ESP_INTR_FLAG_IRAM:
	.quad	0                               # 0x0
	.globl	_rmt_isr
	.p2align	2
_rmt_isr:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym xSemaphoreTake
	.addrsig_sym xSemaphoreGive
	.addrsig_sym _rmtAllocate
	.addrsig_sym RMT_MUTEX_LOCK
	.addrsig_sym _initPin
	.addrsig_sym esp_intr_alloc
	.addrsig_sym RMT_MUTEX_UNLOCK
	.addrsig_sym g_rmt_block_lock
	.addrsig_sym portMAX_DELAY
	.addrsig_sym pdPASS
	.addrsig_sym MAX_CHANNELS
	.addrsig_sym g_rmt_objects
	.addrsig_sym g_rmt_objlocks
	.addrsig_sym RMT
	.addrsig_sym intr_handle
	.addrsig_sym ETS_RMT_INTR_SOURCE
	.addrsig_sym ESP_INTR_FLAG_IRAM
	.addrsig_sym _rmt_isr