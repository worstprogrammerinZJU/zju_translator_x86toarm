	.text
	.p2align	4, 0x90                         # -- Begin function process
process:                                # @process
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	callq	soxr_set_num_channels@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	soxr_set_error@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	movslq	-20(%rbp), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	callq	soxr_process@PLT
	movq	%rax, -72(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	$0, -56(%rbp)
.LBB0_3:
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -72(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	$-1, %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_6:
	movq	-88(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process
	.addrsig_sym soxr_set_error
	.addrsig_sym soxr_set_num_channels
	.addrsig_sym soxr_process