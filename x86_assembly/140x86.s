	.text
	.p2align	4, 0x90                         # -- Begin function f_env
f_env:                                  # @f_env
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -16(%rbp)
	movq	environ(%rip), %rax
	movq	%rax, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$61, %esi
	callq	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	jv_string@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_null@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movslq	INT_MAX(%rip), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	callq	jv_string_sized@PLT
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	addq	$1, %rdi
	callq	jv_string@PLT
	movl	-56(%rbp), %edi                 # 4-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -16(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movl	-16(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	environ
	.p2align	3
environ:
	.quad	0
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_env
	.addrsig_sym jv_free
	.addrsig_sym jv_object
	.addrsig_sym strchr
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_null
	.addrsig_sym jv_string_sized
	.addrsig_sym environ
	.addrsig_sym INT_MAX