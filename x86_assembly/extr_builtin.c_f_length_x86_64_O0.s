	.text
	.p2align	4, 0x90                         # -- Begin function f_length
f_length:                               # @f_length
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_array_length@PLT
	movl	%eax, %edi
	callq	jv_number@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %edi
	callq	jv_object_length@PLT
	movl	%eax, %edi
	callq	jv_number@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movl	-20(%rbp), %edi
	callq	jv_string_length_codepoints@PLT
	movl	%eax, %edi
	callq	jv_number@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-20(%rbp), %edi
	callq	jv_number_value@PLT
	movl	%eax, %edi
	callq	fabs@PLT
	movl	%eax, %edi
	callq	jv_number@PLT
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_8:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	xorl	%edi, %edi
	callq	jv_number@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	-20(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	type_error@PLT
	movl	%eax, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"has no length"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_length
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_number
	.addrsig_sym jv_array_length
	.addrsig_sym jv_object_length
	.addrsig_sym jv_string_length_codepoints
	.addrsig_sym fabs
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_NULL