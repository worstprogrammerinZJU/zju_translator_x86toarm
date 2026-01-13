	.text
	.p2align	4, 0x90                         # -- Begin function enter
enter:                                  # @enter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	subl	$40, %eax
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$91, %eax
	je	.LBB0_2
	jmp	.LBB0_7
.LBB0_7:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$123, %eax
	je	.LBB0_3
	jmp	.LBB0_8
.LBB0_8:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$128, %eax
	je	.LBB0_4
	jmp	.LBB0_5
.LBB0_1:
	movl	IN_PAREN(%rip), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	IN_BRACKET(%rip), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movl	IN_BRACE(%rip), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	IN_QQINTERP(%rip), %eax
	movl	%eax, -16(%rbp)
.LBB0_5:
	movl	-16(%rbp), %edi
	callq	assert@PLT
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	yy_push_state@PLT
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IN_PAREN
	.p2align	2
IN_PAREN:
	.long	0                               # 0x0
	.globl	IN_BRACKET
	.p2align	2
IN_BRACKET:
	.long	0                               # 0x0
	.globl	IN_BRACE
	.p2align	2
IN_BRACE:
	.long	0                               # 0x0
	.globl	IN_QQINTERP
	.p2align	2
IN_QQINTERP:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym enter
	.addrsig_sym assert
	.addrsig_sym yy_push_state
	.addrsig_sym IN_PAREN
	.addrsig_sym IN_BRACKET
	.addrsig_sym IN_BRACE
	.addrsig_sym IN_QQINTERP