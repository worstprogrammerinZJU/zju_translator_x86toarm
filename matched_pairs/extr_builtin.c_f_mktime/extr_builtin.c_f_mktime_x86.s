	.text
	.p2align	4, 0x90                         # -- Begin function f_mktime
f_mktime:                               # @f_mktime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	ret_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpl	$6, %eax
	jge	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	ret_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	movl	-20(%rbp), %edi
	leaq	-24(%rbp), %rsi
	callq	jv2tm@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	leaq	-24(%rbp), %rdi
	callq	my_mktime@PLT
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.LBB0_8
# %bb.7:
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_8:
	cmpq	$-2, -32(%rbp)
	jne	.LBB0_10
# %bb.9:
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movq	-32(%rbp), %rdi
	callq	jv_number@PLT
	movl	%eax, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mktime requires array inputs"
.L.str.1:
	.asciz	"mktime requires parsed datetime inputs"
.L.str.2:
	.asciz	"invalid gmtime representation"
.L.str.3:
	.asciz	"mktime not supported on this platform"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_mktime
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error
	.addrsig_sym jv_string
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv2tm
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym my_mktime
	.addrsig_sym jv_number
	.addrsig_sym JV_KIND_ARRAY