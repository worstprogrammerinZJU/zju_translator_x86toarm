	.text
	.globl	jq_format_error                 # -- Begin function jq_format_error
	.p2align	4, 0x90
jq_format_error:                        # @jq_format_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	je	.LBB0_3
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	jne	.LBB0_4
# %bb.2:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
.LBB0_3:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_6:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-8(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -8(%rbp)
.LBB0_8:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-8(%rbp), %edi
	callq	jq_format_error
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_10:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	je	.LBB0_16
# %bb.11:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_13
# %bb.12:
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_13:
	movl	-8(%rbp), %edi
	movl	JV_PRINT_INVALID(%rip), %esi
	callq	jv_dump_string@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_15
# %bb.14:
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_15:
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, %edi
	callq	jq_format_error
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movl	-8(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, %edi
	callq	jq_format_error
	movl	%eax, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.quad	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: out of memory\n"
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"jq: error: %s"
	.bss
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_format_error
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym fprintf
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value
	.addrsig_sym jv_dump_string
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym stderr
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_PRINT_INVALID