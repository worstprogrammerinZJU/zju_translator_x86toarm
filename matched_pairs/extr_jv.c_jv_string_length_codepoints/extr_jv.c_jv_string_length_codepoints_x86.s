	.text
	.globl	jv_string_length_codepoints     # -- Begin function jv_string_length_codepoints
	.p2align	4, 0x90
jv_string_length_codepoints:            # @jv_string_length_codepoints
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING