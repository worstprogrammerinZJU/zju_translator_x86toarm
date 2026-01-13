	.text
	.p2align	4, 0x90                         # -- Begin function f_startswith
f_startswith:                           # @f_startswith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	ret_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB0_6
# %bb.4:
	movl	-20(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-32(%rbp), %edx
	callq	memcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -36(%rbp)
.LBB0_7:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
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
	.asciz	"startswith() requires string inputs"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_startswith
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_string_value
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING