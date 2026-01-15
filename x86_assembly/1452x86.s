	.text
	.globl	yy_scan_string                  # -- Begin function yy_scan_string
	.p2align	4, 0x90
yy_scan_string:                         # @yy_scan_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	callq	yy_scan_bytes@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_scan_bytes
	.addrsig_sym strlen