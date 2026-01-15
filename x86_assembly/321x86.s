	.text
	.p2align	4, 0x90                         # -- Begin function make_env
make_env:                               # @make_env
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -12(%rbp)
	cmpq	$0, environ(%rip)
	jne	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	movq	$0, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	environ(%rip), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_11
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	environ(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	$61, %esi
	callq	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	environ(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_string@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_delete@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	environ(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-32(%rbp), %rax
	movq	environ(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	callq	jv_string_sized@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	addq	$1, %rdi
	callq	jv_string@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -12(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_11:
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	environ
	.p2align	3
environ:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_env
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_copy
	.addrsig_sym jv_object
	.addrsig_sym strchr
	.addrsig_sym jv_object_delete
	.addrsig_sym jv_string
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string_sized
	.addrsig_sym environ