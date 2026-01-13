	.text
	.p2align	4, 0x90                         # -- Begin function f_group_by_impl
f_group_by_impl:                        # @f_group_by_impl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_4
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_4
# %bb.2:
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	jv_group@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be sorted, as they are not both arrays"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_group_by_impl
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_group
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_ARRAY