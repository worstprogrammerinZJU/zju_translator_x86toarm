	.text
	.globl	filewclose                      # -- Begin function filewclose
	.p2align	4, 0x90
filewclose:                             # @filewclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_11
.LBB0_2:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:
	jmp	.LBB0_11
.LBB0_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_8
# %bb.5:
	movq	$0, errno(%rip)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	subq	16(%rax), %rsi
	callq	ftruncate@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	close@PLT
	cmpl	$-1, %eax
	jne	.LBB0_10
# %bb.9:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
.LBB0_10:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	filedecref@PLT
.LBB0_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ftruncate"
.L.str.1:
	.asciz	"close"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ftruncate
	.addrsig_sym twarn
	.addrsig_sym close
	.addrsig_sym filedecref
	.addrsig_sym errno