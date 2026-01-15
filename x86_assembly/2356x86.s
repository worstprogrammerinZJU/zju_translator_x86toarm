	.text
	.globl	sockwant                        # -- Begin function sockwant
	.p2align	4, 0x90
sockwant:                               # @sockwant
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	subl	$114, %eax
	je	.LBB0_2
	jmp	.LBB0_15
.LBB0_15:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	subl	$119, %eax
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_2:
	movl	POLLIN(%rip), %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	POLLOUT(%rip), %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movl	POLLPRI(%rip), %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_8
# %bb.6:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_8:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_11
# %bb.9:
	cmpl	$0, -20(%rbp)
	je	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	portfd(%rip), %edi
	movl	PORT_SOURCE_FD(%rip), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	port_associate@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_13
# %bb.12:
	movl	portfd(%rip), %edi
	movl	PORT_SOURCE_FD(%rip), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	callq	port_dissociate@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	portfd(%rip), %edi
	movl	PORT_SOURCE_FD(%rip), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	callq	port_dissociate@PLT
	movl	portfd(%rip), %edi
	movl	PORT_SOURCE_FD(%rip), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	port_associate@PLT
	movl	%eax, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	POLLIN
	.p2align	2
POLLIN:
	.long	0                               # 0x0
	.globl	POLLOUT
	.p2align	2
POLLOUT:
	.long	0                               # 0x0
	.globl	POLLPRI
	.p2align	2
POLLPRI:
	.long	0                               # 0x0
	.globl	portfd
	.p2align	2
portfd:
	.long	0                               # 0x0
	.globl	PORT_SOURCE_FD
	.p2align	2
PORT_SOURCE_FD:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym port_associate
	.addrsig_sym port_dissociate
	.addrsig_sym POLLIN
	.addrsig_sym POLLOUT
	.addrsig_sym POLLPRI
	.addrsig_sym portfd
	.addrsig_sym PORT_SOURCE_FD