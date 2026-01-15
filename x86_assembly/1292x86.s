	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_get_slot
jvp_object_get_slot:                    # @jvp_object_get_slot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movb	$1, %al
	cmpl	$-1, -16(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -16(%rbp)
	movb	%al, -18(%rbp)                  # 1-byte Spill
	jl	.LBB0_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %ecx
	movl	-24(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	setl	%al
	movb	%al, -18(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-18(%rbp), %al                  # 1-byte Reload
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$-1, -16(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	$0, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-12(%rbp), %edi
	callq	jvp_object_ptr@PLT
	movq	(%rax), %rax
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym assert
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_ptr