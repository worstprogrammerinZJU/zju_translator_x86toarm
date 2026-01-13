	.text
	.p2align	4, 0x90                         # -- Begin function vwarnx
vwarnx:                                 # @vwarnx
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	stderr(%rip), %edi
	movq	progname(%rip), %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# %bb.1:
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	vfprintf@PLT
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# %bb.2:
	movl	stderr(%rip), %edi
	movq	-8(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	fprintf@PLT
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movl	stderr(%rip), %esi
	movl	$10, %edi
	callq	fputc@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: "
	.bss
	.globl	progname
	.p2align	3
progname:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	": %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vwarnx
	.addrsig_sym fprintf
	.addrsig_sym vfprintf
	.addrsig_sym fputc
	.addrsig_sym stderr
	.addrsig_sym progname