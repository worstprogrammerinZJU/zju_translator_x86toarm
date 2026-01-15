	.text
	.p2align	4, 0x90                         # -- Begin function start
start:                                  # @start
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	tmpfd@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movl	TmpDirPat(%rip), %esi
	callq	strcpy@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
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
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jge	.LBB0_4
# %bb.3:
	movl	errno(%rip), %esi
	movl	$1, %edi
	leaq	.L.str.1(%rip), %rdx
	callq	die@PLT
	jmp	.LBB0_15
.LBB0_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_14
# %bb.5:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	callq	setpgid@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
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
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
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
	movl	24(%rax), %eax
	movl	%eax, curdir(%rip)
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	*16(%rcx)
	cmpq	$0, fail(%rip)
	je	.LBB0_13
# %bb.12:
	movb	$0, %al
	callq	ctfailnow@PLT
.LBB0_13:
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	setpgid@PLT
	addq	$16, %rsp
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
	.globl	fail
	.p2align	3
fail:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start
	.addrsig_sym tmpfd
	.addrsig_sym strcpy
	.addrsig_sym mkdtemp
	.addrsig_sym die
	.addrsig_sym fflush
	.addrsig_sym fork
	.addrsig_sym setpgid
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym ctfailnow
	.addrsig_sym exit
	.addrsig_sym TmpDirPat
	.addrsig_sym errno
	.addrsig_sym curdir
	.addrsig_sym fail