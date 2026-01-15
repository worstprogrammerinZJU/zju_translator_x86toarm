	.text
	.p2align	4, 0x90                         # -- Begin function warn_systemd_ignored_option
warn_systemd_ignored_option:            # @warn_systemd_ignored_option
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%edi, %edi
	callq	sd_listen_fds@PLT
	cmpq	$0, %rax
	jle	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	warnx@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"inherited listen fd; ignoring option: %s %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym warn_systemd_ignored_option
	.addrsig_sym sd_listen_fds
	.addrsig_sym warnx