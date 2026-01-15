	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_empty_new
jvp_string_empty_new:                   # @jvp_string_empty_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jvp_string_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	-4(%rbp), %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	JVP_FLAGS_STRING(%rip), %rcx
	movq	%rcx, (%rdi)
	movl	$0, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 16(%rdi)
	movq	-16(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 20(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_STRING
	.p2align	2
JVP_FLAGS_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_empty_new
	.addrsig_sym jvp_string_alloc
	.addrsig_sym memset
	.addrsig_sym JVP_FLAGS_STRING