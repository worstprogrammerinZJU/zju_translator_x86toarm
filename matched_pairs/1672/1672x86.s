	.text
	.p2align	4, 0x90                         # -- Begin function process
process:                                # @process
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	JQ_OK_NO_OUTPUT(%rip), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	jq_start@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	jq_next@PLT
	movl	%eax, %edi
	movl	%edi, -28(%rbp)
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	options(%rip), %eax
	andl	RAW_OUTPUT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	options(%rip), %eax
	andl	ASCII_OUTPUT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	stdout(%rip), %esi
	movl	JV_PRINT_ASCII(%rip), %edx
	callq	jv_dumpf@PLT
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	movl	stdout(%rip), %ecx
	movl	$1, %esi
	callq	fwrite@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	JQ_OK(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_15
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_FALSE(%rip), %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	JQ_OK_NULL_KIND(%rip), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	JQ_OK(%rip), %eax
	movl	%eax, -24(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	options(%rip), %eax
	andl	SEQ(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	stdout(%rip), %edx
	movl	-20(%rbp), %ecx
	andl	JV_PRINT_ISATTY(%rip), %ecx
	leaq	.L.str(%rip), %rdi
	movl	$1, %esi
	callq	priv_fwrite@PLT
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	jv_dump@PLT
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	options(%rip), %eax
	andl	RAW_NO_LF(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	stdout(%rip), %edx
	movl	-20(%rbp), %ecx
	andl	JV_PRINT_ISATTY(%rip), %ecx
	leaq	.L.str.1(%rip), %rdi
	movl	$1, %esi
	callq	priv_fwrite@PLT
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	options(%rip), %eax
	andl	UNBUFFERED_OUTPUT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	stdout(%rip), %edi
	callq	fflush@PLT
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_20:
	movq	-8(%rbp), %rdi
	callq	jq_halted@PLT
	cmpq	$0, %rax
	je	.LBB0_36
# %bb.21:
	movl	EXIT_STATUS_EXACT(%rip), %eax
	orl	options(%rip), %eax
	movl	%eax, options(%rip)
	movq	-8(%rbp), %rdi
	callq	jq_get_exit_code@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_23
# %bb.22:
	movl	JQ_OK(%rip), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_27
.LBB0_23:
	movl	-32(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_25
# %bb.24:
	movl	-32(%rbp), %edi
	callq	jv_number_value@PLT
	movl	%eax, -24(%rbp)
	jmp	.LBB0_26
.LBB0_25:
	movl	JQ_ERROR_UNKNOWN(%rip), %eax
	movl	%eax, -24(%rbp)
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rdi
	callq	jq_get_error_message@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_29
# %bb.28:
	movl	stderr(%rip), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-36(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	jmp	.LBB0_35
.LBB0_29:
	movl	-36(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_31
# %bb.30:
	jmp	.LBB0_34
.LBB0_31:
	movl	-36(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_33
# %bb.32:
	movl	-36(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_dump_string@PLT
	movl	%eax, -36(%rbp)
	movl	stderr(%rip), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	-36(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
.LBB0_33:
	jmp	.LBB0_34
.LBB0_34:
	jmp	.LBB0_35
.LBB0_35:
	movl	stderr(%rip), %edi
	callq	fflush@PLT
	movl	-36(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_42
.LBB0_36:
	movl	-28(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_41
# %bb.37:
	movl	-28(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	jq_util_input_get_position@PLT
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_39
# %bb.38:
	movl	stderr(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-44(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-40(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.4(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	jmp	.LBB0_40
.LBB0_39:
	movl	-40(%rbp), %edi
	xorl	%esi, %esi
	callq	jv_dump_string@PLT
	movl	%eax, -40(%rbp)
	movl	stderr(%rip), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-44(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movl	-40(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-92(%rbp), %edi                 # 4-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.5(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
.LBB0_40:
	movl	JQ_ERROR_UNKNOWN(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-44(%rbp), %edi
	callq	jv_free@PLT
	movl	-40(%rbp), %edi
	callq	jv_free@PLT
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JQ_OK_NO_OUTPUT
	.p2align	2
JQ_OK_NO_OUTPUT:
	.long	0                               # 0x0
	.globl	options
	.p2align	2
options:
	.long	0                               # 0x0
	.globl	RAW_OUTPUT
	.p2align	2
RAW_OUTPUT:
	.long	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	ASCII_OUTPUT
	.p2align	2
ASCII_OUTPUT:
	.long	0                               # 0x0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.globl	JV_PRINT_ASCII
	.p2align	2
JV_PRINT_ASCII:
	.long	0                               # 0x0
	.globl	JQ_OK
	.p2align	2
JQ_OK:
	.long	0                               # 0x0
	.globl	JV_KIND_FALSE
	.p2align	3
JV_KIND_FALSE:
	.quad	0                               # 0x0
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JQ_OK_NULL_KIND
	.p2align	2
JQ_OK_NULL_KIND:
	.long	0                               # 0x0
	.globl	SEQ
	.p2align	2
SEQ:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\036"
	.bss
	.globl	JV_PRINT_ISATTY
	.p2align	2
JV_PRINT_ISATTY:
	.long	0                               # 0x0
	.globl	RAW_NO_LF
	.p2align	2
RAW_NO_LF:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n"
	.bss
	.globl	UNBUFFERED_OUTPUT
	.p2align	2
UNBUFFERED_OUTPUT:
	.long	0                               # 0x0
	.globl	EXIT_STATUS_EXACT
	.p2align	2
EXIT_STATUS_EXACT:
	.long	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.globl	JQ_ERROR_UNKNOWN
	.p2align	2
JQ_ERROR_UNKNOWN:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"jq: error: %s"
.L.str.3:
	.asciz	"jq: error: %s\n"
.L.str.4:
	.asciz	"jq: error (at %s): %s\n"
.L.str.5:
	.asciz	"jq: error (at %s) (not a string): %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process
	.addrsig_sym jq_start
	.addrsig_sym jv_is_valid
	.addrsig_sym jq_next
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym fwrite
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_free
	.addrsig_sym priv_fwrite
	.addrsig_sym jv_dump
	.addrsig_sym fflush
	.addrsig_sym jq_halted
	.addrsig_sym jq_get_exit_code
	.addrsig_sym jv_number_value
	.addrsig_sym jq_get_error_message
	.addrsig_sym fprintf
	.addrsig_sym jv_dump_string
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jq_util_input_get_position
	.addrsig_sym JQ_OK_NO_OUTPUT
	.addrsig_sym options
	.addrsig_sym RAW_OUTPUT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym ASCII_OUTPUT
	.addrsig_sym stdout
	.addrsig_sym JV_PRINT_ASCII
	.addrsig_sym JQ_OK
	.addrsig_sym JV_KIND_FALSE
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JQ_OK_NULL_KIND
	.addrsig_sym SEQ
	.addrsig_sym JV_PRINT_ISATTY
	.addrsig_sym RAW_NO_LF
	.addrsig_sym UNBUFFERED_OUTPUT
	.addrsig_sym EXIT_STATUS_EXACT
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JQ_ERROR_UNKNOWN
	.addrsig_sym stderr