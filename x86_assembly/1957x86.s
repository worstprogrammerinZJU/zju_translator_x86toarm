	.text
	.p2align	4, 0x90                         # -- Begin function valid_pointer_binop
valid_pointer_binop:                    # @valid_pointer_binop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	subl	$45, %eax
	je	.LBB0_1
	jmp	.LBB0_4
.LBB0_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$60, %eax
	je	.LBB0_1
	jmp	.LBB0_5
.LBB0_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$62, %eax
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	addl	$-128, %eax
	subl	$3, %eax
	ja	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym valid_pointer_binop