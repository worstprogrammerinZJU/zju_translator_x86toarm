	.text
	.globl	jv_string_sized                 # -- Begin function jv_string_sized
	.p2align	4, 0x90
jv_string_sized:                        # @jv_string_sized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rax
	addq	%rax, %rsi
	callq	jvp_utf8_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	jvp_string_new@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	jvp_string_copy_replace_bad@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_is_valid
	.addrsig_sym jvp_string_new
	.addrsig_sym jvp_string_copy_replace_bad