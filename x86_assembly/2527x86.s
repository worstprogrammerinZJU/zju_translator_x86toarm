	.text
	.globl	expand_path                     # -- Begin function expand_path
	.p2align	4, 0x90
expand_path:                            # @expand_path
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	cmpl	$1, %eax
	jle	.LBB0_7
# %bb.1:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$126, %eax
	jne	.LBB0_7
# %bb.2:
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB0_7
# %bb.3:
	movb	$0, %al
	callq	get_home@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_6
.LBB0_5:
	movl	-24(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_string_value@PLT
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
.LBB0_6:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
.LBB0_7:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/%s"
.L.str.1:
	.asciz	"Could not expand %s. (%s)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym get_home
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym JV_KIND_STRING