	.text
	.p2align	4, 0x90                         # -- Begin function classify
classify:                               # @classify
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	addl	$-9, %eax
	subl	$2, %eax
	jb	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$13, %eax
	je	.LBB0_1
	jmp	.LBB0_7
.LBB0_7:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$32, %eax
	je	.LBB0_1
	jmp	.LBB0_8
.LBB0_8:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$34, %eax
	je	.LBB0_2
	jmp	.LBB0_9
.LBB0_9:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$44, %eax
	je	.LBB0_3
	jmp	.LBB0_10
.LBB0_10:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$58, %eax
	je	.LBB0_3
	jmp	.LBB0_11
.LBB0_11:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$91, %eax
	je	.LBB0_3
	jmp	.LBB0_12
.LBB0_12:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$93, %eax
	je	.LBB0_3
	jmp	.LBB0_13
.LBB0_13:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$123, %eax
	je	.LBB0_3
	jmp	.LBB0_14
.LBB0_14:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$125, %eax
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movl	WHITESPACE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	QUOTE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movl	STRUCTURE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	LITERAL(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	WHITESPACE
	.p2align	2
WHITESPACE:
	.long	0                               # 0x0
	.globl	QUOTE
	.p2align	2
QUOTE:
	.long	0                               # 0x0
	.globl	STRUCTURE
	.p2align	2
STRUCTURE:
	.long	0                               # 0x0
	.globl	LITERAL
	.p2align	2
LITERAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym classify
	.addrsig_sym WHITESPACE
	.addrsig_sym QUOTE
	.addrsig_sym STRUCTURE
	.addrsig_sym LITERAL