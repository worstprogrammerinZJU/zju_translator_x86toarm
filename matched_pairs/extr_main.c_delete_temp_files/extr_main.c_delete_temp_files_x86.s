	.text
	.p2align	4, 0x90                         # -- Begin function delete_temp_files
delete_temp_files:                      # @delete_temp_files
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	movl	tmpfiles(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax                  # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	tmpfiles(%rip), %edi
	movl	-4(%rbp), %esi
	callq	vec_get@PLT
	movl	%eax, %edi
	callq	unlink@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tmpfiles
	.p2align	2
tmpfiles:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym delete_temp_files
	.addrsig_sym vec_len
	.addrsig_sym unlink
	.addrsig_sym vec_get
	.addrsig_sym tmpfiles