	.text
	.globl	jq_util_input_get_position      # -- Begin function jq_util_input_get_position
	.p2align	4, 0x90
jq_util_input_get_position:             # @jq_util_input_get_position
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	jq_get_input_cb@PLT
	movq	-24(%rbp), %rax
	cmpq	jq_util_input_next_input_cb(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	cmpq	jq_util_input_next_input_cb(%rip), %rax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_string_value@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	jq_util_input_next_input_cb
	.p2align	3
jq_util_input_next_input_cb:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid jq_util_input API usage"
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"<unknown>"
.L.str.2:
	.asciz	"%s:%lu"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_get_input_cb
	.addrsig_sym assert
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value
	.addrsig_sym jq_util_input_next_input_cb
	.addrsig_sym JV_KIND_STRING