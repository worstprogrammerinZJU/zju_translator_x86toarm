	.text
	.globl	jv_dump_string                  # -- Begin function jv_dump_string
	.p2align	4, 0x90
jv_dump_string:                         # @jv_dump_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	tsd_dtoa_context_get@PLT
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	xorl	%r8d, %r8d
	leaq	-12(%rbp), %r9
	movl	%r8d, %ecx
	callq	jv_dump_term@PLT
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_string
	.addrsig_sym jv_dump_term
	.addrsig_sym tsd_dtoa_context_get