	.text
	.globl	filewopen                       # -- Begin function filewopen
	.p2align	4, 0x90
filewopen:                              # @filewopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	Walver(%rip), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	movl	O_WRONLY(%rip), %esi
	orl	O_CREAT(%rip), %esi
	movl	$256, %edx                      # imm = 0x100
	callq	open@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	jmp	.LBB0_14
.LBB0_2:
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rsi
	callq	falloc@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_8
# %bb.3:
	movl	-12(%rbp), %edi
	callq	close@PLT
	cmpl	$-1, %eax
	jne	.LBB0_5
# %bb.4:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
.LBB0_5:
	movl	-16(%rbp), %eax
	movl	%eax, errno(%rip)
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	callq	unlink@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
.LBB0_7:
	jmp	.LBB0_14
.LBB0_8:
	movl	-12(%rbp), %edi
	leaq	-24(%rbp), %rsi
	movl	$4, %edx
	callq	write@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB0_10
# %bb.9:
	movslq	-20(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_13
.LBB0_10:
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	-12(%rbp), %edi
	callq	close@PLT
	cmpl	$-1, %eax
	jne	.LBB0_12
# %bb.11:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
.LBB0_12:
	jmp	.LBB0_14
.LBB0_13:
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rdi
	callq	fileincref@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movslq	-20(%rbp), %rax
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_14:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Walver
	.p2align	2
Walver:
	.long	0                               # 0x0
	.globl	O_WRONLY
	.p2align	2
O_WRONLY:
	.long	0                               # 0x0
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"open %s"
.L.str.1:
	.asciz	"close"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"falloc %s"
.L.str.3:
	.asciz	"unlink %s"
.L.str.4:
	.asciz	"write %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open
	.addrsig_sym twarn
	.addrsig_sym falloc
	.addrsig_sym close
	.addrsig_sym unlink
	.addrsig_sym write
	.addrsig_sym fileincref
	.addrsig_sym Walver
	.addrsig_sym O_WRONLY
	.addrsig_sym O_CREAT
	.addrsig_sym errno