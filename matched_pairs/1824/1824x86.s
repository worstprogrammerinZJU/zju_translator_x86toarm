	.text
	.p2align	4, 0x90                         # -- Begin function fix_rectype_flexible_member
fix_rectype_flexible_member:            # @fix_rectype_flexible_member
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 8(%rax)
	jne	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	ty2s@PLT
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	cmpl	$1, %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	ty2s@PLT
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"flexible member may only appear as the last member: %s %s"
.L.str.1:
	.asciz	"flexible member with no other fields: %s %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fix_rectype_flexible_member
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym KIND_ARRAY