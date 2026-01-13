	.text
	.p2align	4, 0x90                         # -- Begin function jv_basename
jv_basename:                            # @jv_basename
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$47, %esi
	callq	strrchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_basename
	.addrsig_sym jv_string_value
	.addrsig_sym strrchr
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free