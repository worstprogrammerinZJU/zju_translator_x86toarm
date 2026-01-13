	.text
	.globl	sockinit                        # -- Begin function sockinit
	.p2align	4, 0x90
sockinit:                               # @sockinit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, %edi
	callq	epoll_create@PLT
	movl	%eax, epfd(%rip)
	cmpl	$-1, epfd(%rip)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	epfd
	.p2align	2
epfd:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epoll_create"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epoll_create
	.addrsig_sym twarn
	.addrsig_sym epfd