	.text
	.globl	int_to_alphanum                 # -- Begin function int_to_alphanum
	.p2align	4, 0x90
int_to_alphanum:                        # @int_to_alphanum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	cmpl	$36, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movb	$46, -1(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	cmpl	$10, -8(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	-8(%rbp), %eax
	addl	$48, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	-8(%rbp), %eax
	addl	$87, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
.LBB0_6:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig