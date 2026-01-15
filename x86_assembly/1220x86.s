	.text
	.globl	jv_free                         # -- Begin function jv_free
	.p2align	4, 0x90
jv_free:                                # @jv_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	JVP_KIND@PLT
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_6
# %bb.7:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movl	-4(%rbp), %edi
	callq	jvp_array_free@PLT
	jmp	.LBB0_6
.LBB0_2:
	movl	-4(%rbp), %edi
	callq	jvp_string_free@PLT
	jmp	.LBB0_6
.LBB0_3:
	movl	-4(%rbp), %edi
	callq	jvp_object_free@PLT
	jmp	.LBB0_6
.LBB0_4:
	movl	-4(%rbp), %edi
	callq	jvp_invalid_free@PLT
	jmp	.LBB0_6
.LBB0_5:
	movl	-4(%rbp), %edi
	callq	jvp_number_free@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_KIND
	.addrsig_sym jvp_array_free
	.addrsig_sym jvp_string_free
	.addrsig_sym jvp_object_free
	.addrsig_sym jvp_invalid_free
	.addrsig_sym jvp_number_free