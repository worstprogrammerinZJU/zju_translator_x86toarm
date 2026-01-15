	.text
	.globl	jv_string_append_buf            # -- Begin function jv_string_append_buf
	.p2align	4, 0x90
jv_string_append_buf:                   # @jv_string_append_buf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rax
	addq	%rax, %rsi
	callq	jvp_utf8_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	jvp_string_append@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	jvp_string_copy_replace_bad@PLT
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	jv_string_concat@PLT
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_is_valid
	.addrsig_sym jvp_string_append
	.addrsig_sym jvp_string_copy_replace_bad
	.addrsig_sym jv_string_concat