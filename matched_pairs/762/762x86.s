	.text
	.globl	__detachInterrupt               # -- Begin function __detachInterrupt
	.p2align	4, 0x90
__detachInterrupt:                      # @__detachInterrupt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	gpio_intr_handle(%rip), %edi
	callq	esp_intr_disable@PLT
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	je	.LBB0_3
# %bb.1:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_3
# %bb.2:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdi
	callq	cleanupFunctional@PLT
.LBB0_3:
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 16(%rax)
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
	movq	__pinInterruptHandlers(%rip), %rax
	imulq	$24, -8(%rbp), %rcx
	addq	%rcx, %rax
	movl	$0, (%rax)
	movq	GPIO(%rip), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
	movq	GPIO(%rip), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, (%rax)
	movl	gpio_intr_handle(%rip), %edi
	callq	esp_intr_enable@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
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
	.addrsig_sym esp_intr_disable
	.addrsig_sym cleanupFunctional
	.addrsig_sym esp_intr_enable
	.addrsig_sym gpio_intr_handle
	.addrsig_sym __pinInterruptHandlers
	.addrsig_sym GPIO