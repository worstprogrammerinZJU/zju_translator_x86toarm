	.text
	.p2align	4, 0x90                         # -- Begin function f_contains
f_contains:                             # @f_contains
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	jv_contains@PLT
	movl	%eax, %edi
	callq	jv_bool@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot have their containment checked"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_contains
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_bool
	.addrsig_sym jv_contains
	.addrsig_sym type_error2