	.text
	.globl	forward_shortcut_layer          # -- Begin function forward_shortcut_layer
	.p2align	4, 0x90
forward_shortcut_layer:                 # @forward_shortcut_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-24(%rbp), %esi
	movl	20(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %edi
	movl	52(%rax), %esi
	movl	48(%rax), %edx
	movl	44(%rax), %ecx
	movq	-32(%rbp), %r8
	movq	8(%rax), %r9
	movl	(%r8,%r9,4), %r8d
	movl	40(%rax), %r9d
	movl	36(%rax), %r14d
	movl	32(%rax), %ebx
	movl	28(%rax), %r11d
	movl	24(%rax), %r10d
	movl	20(%rax), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	shortcut_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	16(%rax), %edx
	callq	activate_array@PLT
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym shortcut_cpu
	.addrsig_sym activate_array