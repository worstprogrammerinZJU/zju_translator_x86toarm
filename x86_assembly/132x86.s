	.text
	.p2align	4, 0x90                         # -- Begin function escape_string
escape_string:                          # @escape_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1104, %rsp                     # imm = 0x450
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	leaq	-1040(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx                     # imm = 0x400
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -1048(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -1040(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-1048(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-1048(%rbp), %rcx
	addq	$1, %rcx
	movq	-1048(%rbp), %rax
	movsbl	(%rax), %eax
	cltq
	movq	%rcx, -1040(%rbp,%rax,8)
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movq	-1048(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -1052(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, %ecx
	movq	-1096(%rbp), %rax               # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -1072(%rbp)
	movl	$0, -1084(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-1064(%rbp), %rdi
	movq	%rdi, -1080(%rbp)
	movq	-1072(%rbp), %rsi
	leaq	-1084(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -1064(%rbp)
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$128, -1084(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movslq	-1084(%rbp), %rax
	cmpq	$0, -1040(%rbp,%rax,8)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-1052(%rbp), %edi
	movslq	-1084(%rbp), %rax
	movq	-1040(%rbp,%rax,8), %rsi
	callq	jv_string_append_str@PLT
	movl	%eax, -1052(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-1052(%rbp), %edi
	movq	-1080(%rbp), %rsi
	movq	-1064(%rbp), %rax
	movq	-1080(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	callq	jv_string_append_buf@PLT
	movl	%eax, -1052(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_4
.LBB0_10:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-1052(%rbp), %eax
	addq	$1104, %rsp                     # imm = 0x450
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
	.asciz	"\\0"
.L.str.1:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym escape_string
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym strlen
	.addrsig_sym jv_string
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_string_append_str
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING