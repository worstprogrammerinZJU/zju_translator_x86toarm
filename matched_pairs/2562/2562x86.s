	.text
	.globl	find_replace                    # -- Begin function find_replace
	.p2align	4, 0x90
find_replace:                           # @find_replace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4176, %rsp                     # imm = 0x1050
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-4128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4096, %edx                     # imm = 0x1000
	callq	memset@PLT
	leaq	-4128(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	leaq	-4128(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strstr@PLT
	movq	%rax, -4136(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-4136(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -4160(%rbp)               # 8-byte Spill
	leaq	-4128(%rbp), %rax
	movq	%rax, -4152(%rbp)               # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -4144(%rbp)               # 8-byte Spill
	movq	-4136(%rbp), %rax
	movq	%rax, -4168(%rbp)               # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movq	-4168(%rbp), %r8                # 8-byte Reload
	movq	-4160(%rbp), %rdi               # 8-byte Reload
	movq	-4152(%rbp), %rdx               # 8-byte Reload
	movq	-4144(%rbp), %rcx               # 8-byte Reload
	cltq
	addq	%rax, %r8
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
.LBB0_3:
	addq	$4176, %rsp                     # imm = 0x1050
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
.L.str.1:
	.asciz	"%s%s%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym strstr
	.addrsig_sym strlen