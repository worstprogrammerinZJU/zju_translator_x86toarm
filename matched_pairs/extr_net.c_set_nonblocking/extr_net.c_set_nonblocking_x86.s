	.text
	.p2align	4, 0x90                         # -- Begin function set_nonblocking
set_nonblocking:                        # @set_nonblocking
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	F_GETFL(%rip), %esi
	xorl	%edx, %edx
	callq	fcntl@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-8(%rbp), %edi
	movl	F_SETFL(%rip), %esi
	movl	-12(%rbp), %edx
	orl	O_NONBLOCK(%rip), %edx
	callq	fcntl@PLT
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getting flags"
	.bss
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.long	0                               # 0x0
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"setting O_NONBLOCK"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_nonblocking
	.addrsig_sym fcntl
	.addrsig_sym twarn
	.addrsig_sym F_GETFL
	.addrsig_sym F_SETFL
	.addrsig_sym O_NONBLOCK