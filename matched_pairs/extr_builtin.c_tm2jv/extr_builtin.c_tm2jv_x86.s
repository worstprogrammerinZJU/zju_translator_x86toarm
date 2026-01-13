	.text
	.p2align	4, 0x90                         # -- Begin function tm2jv
tm2jv:                                  # @tm2jv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	addq	$1900, %rdi                     # imm = 0x76C
	callq	jv_number@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_number@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	jv_number@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	-32(%rbp), %esi                 # 4-byte Reload
	movl	-28(%rbp), %edx                 # 4-byte Reload
	movl	-24(%rbp), %ecx                 # 4-byte Reload
	movl	-20(%rbp), %r8d                 # 4-byte Reload
	movl	-16(%rbp), %r9d                 # 4-byte Reload
	movl	-12(%rbp), %r10d                # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	JV_ARRAY@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tm2jv
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_number