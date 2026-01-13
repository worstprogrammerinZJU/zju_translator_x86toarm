	.text
	.globl	srvserve                        # -- Begin function srvserve
	.p2align	4, 0x90
srvserve:                               # @srvserve
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	sockinit@PLT
	cmpl	$-1, %eax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	srvaccept(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	conn_less(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	conn_setpos(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	$1024, %esi                     # imm = 0x400
	callq	listen@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_4:
	movq	-8(%rbp), %rdi
	movl	$114, %esi
	callq	sockwant@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	movl	$2, %edi
	callq	exit@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	prottick@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	-24(%rbp), %rdi
	callq	socknext@PLT
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	leaq	.L.str.3(%rip), %rdi
	callq	twarnx@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-32(%rbp), %esi
	callq	*%rax
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sockinit"
	.bss
	.globl	srvaccept
	.p2align	3
srvaccept:
	.quad	0                               # 0x0
	.globl	conn_less
	.p2align	2
conn_less:
	.long	0                               # 0x0
	.globl	conn_setpos
	.p2align	2
conn_setpos:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"listen"
.L.str.2:
	.asciz	"sockwant"
.L.str.3:
	.asciz	"socknext"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sockinit
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym listen
	.addrsig_sym twarn
	.addrsig_sym sockwant
	.addrsig_sym prottick
	.addrsig_sym socknext
	.addrsig_sym srvaccept
	.addrsig_sym conn_less
	.addrsig_sym conn_setpos