	.text
	.globl	sd_booted                       # -- Begin function sd_booted
	.p2align	4, 0x90
sd_booted:                              # @sd_booted
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	leaq	-16(%rbp), %rsi
	callq	lstat@PLT
	cmpq	$0, %rax
	jge	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	leaq	.L.str.1(%rip), %rdi
	leaq	-24(%rbp), %rsi
	callq	lstat@PLT
	cmpq	$0, %rax
	jge	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/sys/fs/cgroup"
.L.str.1:
	.asciz	"/sys/fs/cgroup/systemd"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lstat