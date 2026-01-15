	.text
	.globl	jv_has                          # -- Begin function jv_has
	.p2align	4, 0x90
jv_has:                                 # @jv_has
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_5
# %bb.3:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	jv_object_get@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %edi
	callq	jv_bool@PLT
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_10
.LBB0_5:
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_8
# %bb.6:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_number_value@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_get@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %edi
	callq	jv_bool@PLT
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_9
.LBB0_8:
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rdi
	callq	jv_kind_name@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rdi
	callq	jv_kind_name@PLT
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot check whether %s has a %s key"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_false
	.addrsig_sym jv_object_get
	.addrsig_sym jv_bool
	.addrsig_sym jv_array_get
	.addrsig_sym jv_number_value
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_NUMBER