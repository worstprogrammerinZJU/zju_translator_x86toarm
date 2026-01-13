	.text
	.globl	__attachInterruptFunctionalArg  # -- Begin function __attachInterruptFunctionalArg
	.p2align	4, 0x90
__attachInterruptFunctionalArg:         # @__attachInterruptFunctionalArg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	cmpl	$0, __attachInterruptFunctionalArg.interrupt_initialized(%rip)
	jne	.LBB0_2
# %bb.1:
	movl	$1, __attachInterruptFunctionalArg.interrupt_initialized(%rip)
	movl	ETS_GPIO_INTR_SOURCE(%rip), %edi
	movq	ESP_INTR_FLAG_IRAM(%rip), %rax
	movl	%eax, %esi
	movl	__onPinInterrupt(%rip), %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	gpio_intr_handle(%rip), %r8
	callq	esp_intr_alloc@PLT
.LBB0_2:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	je	.LBB0_5
# %bb.3:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_5
# %bb.4:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdi
	callq	cleanupFunctional@PLT
.LBB0_5:
	movq	-16(%rbp), %rcx
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rcx
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	movl	-32(%rbp), %ecx
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movl	gpio_intr_handle(%rip), %edi
	callq	esp_intr_disable@PLT
	movl	gpio_intr_handle(%rip), %edi
	callq	esp_intr_get_cpu@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	movq	GPIO(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	$1, (%rax,%rcx,8)
	jmp	.LBB0_8
.LBB0_7:
	movq	GPIO(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	$4, (%rax,%rcx,8)
.LBB0_8:
	movl	-28(%rbp), %edx
	movq	GPIO(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 4(%rax,%rcx,8)
	movl	gpio_intr_handle(%rip), %edi
	callq	esp_intr_enable@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	__attachInterruptFunctionalArg.interrupt_initialized
	.comm	__attachInterruptFunctionalArg.interrupt_initialized,4,4
	.bss
	.globl	ETS_GPIO_INTR_SOURCE
	.p2align	2
ETS_GPIO_INTR_SOURCE:
	.long	0                               # 0x0
	.globl	ESP_INTR_FLAG_IRAM
	.p2align	3
ESP_INTR_FLAG_IRAM:
	.quad	0                               # 0x0
	.globl	__onPinInterrupt
	.p2align	2
__onPinInterrupt:
	.long	0                               # 0x0
	.globl	gpio_intr_handle
	.p2align	2
gpio_intr_handle:
	.long	0                               # 0x0
	.globl	__pinInterruptHandlers
	.p2align	3
__pinInterruptHandlers:
	.quad	0
	.globl	GPIO
	.p2align	3
GPIO:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym esp_intr_alloc
	.addrsig_sym cleanupFunctional
	.addrsig_sym esp_intr_disable
	.addrsig_sym esp_intr_get_cpu
	.addrsig_sym esp_intr_enable
	.addrsig_sym __attachInterruptFunctionalArg.interrupt_initialized
	.addrsig_sym ETS_GPIO_INTR_SOURCE
	.addrsig_sym ESP_INTR_FLAG_IRAM
	.addrsig_sym __onPinInterrupt
	.addrsig_sym gpio_intr_handle
	.addrsig_sym __pinInterruptHandlers
	.addrsig_sym GPIO