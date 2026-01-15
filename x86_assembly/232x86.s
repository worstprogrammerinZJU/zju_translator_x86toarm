	.text
	.globl	base64_init_encodestate         # -- Begin function base64_init_encodestate
	.p2align	4, 0x90
base64_init_encodestate:                # @base64_init_encodestate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	step_A(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	step_A
	.p2align	2
step_A:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym step_A