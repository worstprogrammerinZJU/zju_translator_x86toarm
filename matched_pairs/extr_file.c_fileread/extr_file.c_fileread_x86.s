	.text
	.globl	fileread                        # -- Begin function fileread
	.p2align	4, 0x90
fileread:                               # @fileread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$4, %edx
	leaq	-28(%rbp), %rcx
	leaq	.L.str(%rip), %r8
	callq	readfull@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_7
	jmp	.LBB0_13
.LBB0_13:
	movl	-36(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	jne	.LBB0_11
	jmp	.LBB0_3
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	fileincref@PLT
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	readrec@PLT
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_4
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	filedecref@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movq	-16(%rbp), %rdi
	callq	fileincref@PLT
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	readrec5@PLT
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_8
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	filedecref@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	-32(%rbp), %edx
	leaq	.L.str.1(%rip), %rdi
	callq	warnx@PLT
	movl	$1, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"version"
.L.str.1:
	.asciz	"%s: unknown version: %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readfull
	.addrsig_sym fileincref
	.addrsig_sym readrec
	.addrsig_sym filedecref
	.addrsig_sym readrec5
	.addrsig_sym warnx