	.text
	.globl	shiftIn                         # -- Begin function shiftIn
	.p2align	4, 0x90
shiftIn:                                # @shiftIn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -20(%rbp)
	jge	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	LSBFIRST(%rip), %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	digitalRead@PLT
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	digitalRead@PLT
	movl	$7, %ecx
	subl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edi
	movl	HIGH(%rip), %esi
	callq	digitalWrite@PLT
	movl	-8(%rbp), %edi
	movl	LOW(%rip), %esi
	callq	digitalWrite@PLT
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LSBFIRST
	.p2align	2
LSBFIRST:
	.long	0                               # 0x0
	.globl	HIGH
	.p2align	2
HIGH:
	.long	0                               # 0x0
	.globl	LOW
	.p2align	2
LOW:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym digitalRead
	.addrsig_sym digitalWrite
	.addrsig_sym LSBFIRST
	.addrsig_sym HIGH
	.addrsig_sym LOW