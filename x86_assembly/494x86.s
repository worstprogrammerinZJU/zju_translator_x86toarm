	.text
	.p2align	4, 0x90                         # -- Begin function runbenchn
runbenchn:                              # @runbenchn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$0, %al
	callq	tmpfd@PLT
	movl	%eax, -16(%rbp)
	movb	$0, %al
	callq	tmpfd@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	movl	TmpDirPat(%rip), %esi
	callq	strcpy@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	mkdtemp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	errno(%rip), %esi
	movl	$1, %edi
	leaq	.L.str(%rip), %rdx
	callq	die@PLT
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	fflush@PLT
	movb	$0, %al
	callq	fork@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	errno(%rip), %esi
	movl	$1, %edi
	leaq	.L.str.1(%rip), %rdx
	callq	die@PLT
	jmp	.LBB0_17
.LBB0_4:
	cmpl	$0, -24(%rbp)
	jne	.LBB0_16
# %bb.5:
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	setpgid@PLT
	movl	-16(%rbp), %edi
	movl	$1, %esi
	callq	dup2@PLT
	cmpl	$-1, %eax
	jne	.LBB0_7
# %bb.6:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.2(%rip), %rdx
	callq	die@PLT
.LBB0_7:
	movl	-16(%rbp), %edi
	callq	close@PLT
	cmpl	$-1, %eax
	jne	.LBB0_9
# %bb.8:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.3(%rip), %rdx
	callq	die@PLT
.LBB0_9:
	movl	$1, %edi
	movl	$2, %esi
	callq	dup2@PLT
	cmpl	$-1, %eax
	jne	.LBB0_11
# %bb.10:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.2(%rip), %rdx
	callq	die@PLT
.LBB0_11:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, curdir(%rip)
	movb	$0, %al
	callq	ctstarttimer@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movb	$0, %al
	callq	ctstoptimer@PLT
	movl	-20(%rbp), %edi
	leaq	bdur(%rip), %rsi
	movl	$4, %edx
	callq	write@PLT
	cltq
	cmpq	$4, %rax
	je	.LBB0_13
# %bb.12:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.4(%rip), %rdx
	callq	die@PLT
.LBB0_13:
	movl	-20(%rbp), %edi
	leaq	bbytes(%rip), %rsi
	movl	$4, %edx
	callq	write@PLT
	cltq
	cmpq	$4, %rax
	je	.LBB0_15
# %bb.14:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.4(%rip), %rdx
	callq	die@PLT
.LBB0_15:
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	movl	-24(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	setpgid@PLT
	movl	-24(%rbp), %edi
	movq	-8(%rbp), %rsi
	xorl	%edx, %edx
	callq	waitpid@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_19
# %bb.18:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str.5(%rip), %rdx
	callq	die@PLT
.LBB0_19:
	movl	-24(%rbp), %edi
	movl	SIGKILL(%rip), %esi
	callq	killpg@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	rmtree@PLT
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_21
# %bb.20:
	movl	$10, %edi
	callq	putchar@PLT
	movl	-16(%rbp), %edi
	movl	SEEK_SET(%rip), %edx
	xorl	%esi, %esi
	callq	lseek@PLT
	movl	stdout(%rip), %edi
	movl	-16(%rbp), %esi
	callq	copyfd@PLT
	jmp	.LBB0_25
.LBB0_21:
	movl	-20(%rbp), %edi
	movl	SEEK_SET(%rip), %edx
	xorl	%esi, %esi
	callq	lseek@PLT
	movl	-20(%rbp), %edi
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	movl	$4, %edx
	callq	read@PLT
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB0_23
# %bb.22:
	leaq	.L.str.6(%rip), %rdi
	callq	perror@PLT
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.LBB0_23:
	movl	-20(%rbp), %edi
	movq	-8(%rbp), %rsi
	addq	$4, %rsi
	movl	$4, %edx
	callq	read@PLT
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB0_25
# %bb.24:
	leaq	.L.str.6(%rip), %rdi
	callq	perror@PLT
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.LBB0_25:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TmpDirPat
	.p2align	2
TmpDirPat:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mkdtemp"
.L.str.1:
	.asciz	"fork"
.L.str.2:
	.asciz	"dup2"
.L.str.3:
	.asciz	"fclose"
	.bss
	.globl	curdir
	.p2align	2
curdir:
	.long	0                               # 0x0
	.globl	bdur
	.p2align	2
bdur:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"write"
	.bss
	.globl	bbytes
	.p2align	2
bbytes:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"wait"
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.long	0                               # 0x0
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.long	0                               # 0x0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"read"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym runbenchn
	.addrsig_sym tmpfd
	.addrsig_sym strcpy
	.addrsig_sym mkdtemp
	.addrsig_sym die
	.addrsig_sym fflush
	.addrsig_sym fork
	.addrsig_sym setpgid
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym ctstarttimer
	.addrsig_sym ctstoptimer
	.addrsig_sym write
	.addrsig_sym exit
	.addrsig_sym waitpid
	.addrsig_sym killpg
	.addrsig_sym rmtree
	.addrsig_sym putchar
	.addrsig_sym lseek
	.addrsig_sym copyfd
	.addrsig_sym read
	.addrsig_sym perror
	.addrsig_sym TmpDirPat
	.addrsig_sym errno
	.addrsig_sym curdir
	.addrsig_sym bdur
	.addrsig_sym bbytes
	.addrsig_sym SIGKILL
	.addrsig_sym SEEK_SET
	.addrsig_sym stdout