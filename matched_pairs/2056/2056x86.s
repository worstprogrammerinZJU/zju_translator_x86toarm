	.text
	.p2align	4, 0x90                         # -- Begin function read_duration
read_duration:                          # @read_duration
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rdi
	callq	read_u32@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-48(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	imull	$1000000000, %eax, %ecx         # imm = 0x3B9ACA00
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_duration
	.addrsig_sym read_u32