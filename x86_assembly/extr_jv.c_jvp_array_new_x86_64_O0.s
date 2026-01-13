	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_new
jvp_array_new:                          # @jvp_array_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movslq	JVP_FLAGS_ARRAY(%rip), %rax
	movq	%rax, (%rdi)
	movl	$0, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 16(%rdi)
	movl	-4(%rbp), %edi
	callq	jvp_array_alloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 20(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_ARRAY
	.p2align	2
JVP_FLAGS_ARRAY:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_new
	.addrsig_sym jvp_array_alloc
	.addrsig_sym JVP_FLAGS_ARRAY