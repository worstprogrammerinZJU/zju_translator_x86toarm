	.text
	.globl	jv_parse_sized                  # -- Begin function jv_parse_sized
	.p2align	4, 0x90
jv_parse_sized:                         # @jv_parse_sized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	parser_init@PLT
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	leaq	-16(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	jv_parser_set_buf@PLT
	leaq	-16(%rbp), %rdi
	callq	jv_parser_next@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	jv_parser_next@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	jmp	.LBB0_12
.LBB0_8:
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	jmp	.LBB0_11
.LBB0_10:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -20(%rbp)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	leaq	-16(%rbp), %rdi
	callq	parser_free@PLT
	movl	-20(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_15
# %bb.13:
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	movl	-20(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
.LBB0_15:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unexpected extra JSON values"
.L.str.1:
	.asciz	"Expected JSON value"
.L.str.2:
	.asciz	"%s (while parsing '%s')"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_init
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym parser_free
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value