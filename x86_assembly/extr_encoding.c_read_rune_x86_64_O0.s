	.text
	.p2align	4, 0x90                         # -- Begin function read_rune
read_rune:                              # @read_rune
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	count_leading_ones@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movl	$1, -40(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_11
	jmp	.LBB0_16
.LBB0_16:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_12
	jmp	.LBB0_17
.LBB0_17:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	subl	$4, %eax
	je	.LBB0_13
	jmp	.LBB0_14
.LBB0_11:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	andl	$31, %eax
	shll	$6, %eax
	movq	-24(%rbp), %rcx
	movsbl	1(%rcx), %ecx
	andl	$63, %ecx
	orl	%ecx, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	$2, -4(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	andl	$15, %eax
	shll	$12, %eax
	movq	-24(%rbp), %rcx
	movsbl	1(%rcx), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rcx
	movsbl	2(%rcx), %ecx
	andl	$63, %ecx
	orl	%ecx, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	$3, -4(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	andl	$7, %eax
	shll	$18, %eax
	movq	-24(%rbp), %rcx
	movsbl	1(%rcx), %ecx
	andl	$63, %ecx
	shll	$12, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rcx
	movsbl	2(%rcx), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rcx
	movsbl	3(%rcx), %ecx
	andl	$63, %ecx
	orl	%ecx, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	$4, -4(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_15:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid UTF-8 sequence"
.L.str.1:
	.asciz	"invalid UTF-8 continuation byte"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rune
	.addrsig_sym count_leading_ones
	.addrsig_sym error