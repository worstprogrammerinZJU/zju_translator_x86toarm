	.text
	.globl	sd_is_fifo                      # -- Begin function sd_is_fifo
	.p2align	4, 0x90
sd_is_fifo:                             # @sd_is_fifo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movl	-8(%rbp), %edi
	leaq	-40(%rbp), %rsi
	callq	fstat@PLT
	cmpq	$0, %rax
	jge	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_4:
	movl	-24(%rbp), %edi
	callq	S_ISFIFO@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_6:
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# %bb.7:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	stat@PLT
	cmpq	$0, %rax
	jge	.LBB0_12
# %bb.8:
	movl	errno(%rip), %eax
	cmpl	ENOENT(%rip), %eax
	je	.LBB0_10
# %bb.9:
	movl	errno(%rip), %eax
	cmpl	ENOTDIR(%rip), %eax
	jne	.LBB0_11
.LBB0_10:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_11:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_12:
	movq	-64(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-40(%rbp), %rcx
	movb	%al, -65(%rbp)                  # 1-byte Spill
	jne	.LBB0_14
# %bb.13:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	sete	%al
	movb	%al, -65(%rbp)                  # 1-byte Spill
.LBB0_14:
	movb	-65(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_15:
	movl	$1, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	ENOENT
	.p2align	2
ENOENT:
	.long	0                               # 0x0
	.globl	ENOTDIR
	.p2align	2
ENOTDIR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memset
	.addrsig_sym fstat
	.addrsig_sym S_ISFIFO
	.addrsig_sym stat
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym ENOENT
	.addrsig_sym ENOTDIR