	.text
	.p2align	4, 0x90                         # -- Begin function f_plus
f_plus:                                 # @f_plus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_7
# %bb.5:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_7
# %bb.6:
	movl	-24(%rbp), %edi
	callq	jv_number_value@PLT
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_number_value@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	addq	%rax, %rdi
	callq	jv_number@PLT
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_7:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_10
# %bb.8:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_string_concat@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_10:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_13
# %bb.11:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_13
# %bb.12:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_array_concat@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_13:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_16
# %bb.14:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_16
# %bb.15:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_object_merge@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be added"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_plus
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_array_concat
	.addrsig_sym jv_object_merge
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_OBJECT