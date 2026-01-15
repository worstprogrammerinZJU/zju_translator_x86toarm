	.text
	.p2align	4, 0x90                         # -- Begin function rmtree
rmtree:                                 # @rmtree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	unlink@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	errno(%rip), %eax
	cmpl	ENOENT(%rip), %eax
	jne	.LBB0_3
.LBB0_2:
	jmp	.LBB0_16
.LBB0_3:
	movl	errno(%rip), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	opendir@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_8
# %bb.4:
	movl	errno(%rip), %eax
	cmpl	ENOTDIR(%rip), %eax
	jne	.LBB0_6
# %bb.5:
	movl	stderr(%rip), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %edi
	callq	strerror@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	jmp	.LBB0_7
.LBB0_6:
	leaq	.L.str.1(%rip), %rdi
	callq	perror@PLT
.LBB0_7:
	movl	stderr(%rip), %edi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	fprintf@PLT
	jmp	.LBB0_16
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	readdir@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movl	-76(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
                                        # implicit-def: $rax
	movl	%ecx, %eax
                                        # implicit-def: $rcx
	movl	%edx, %ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdi
	subq	%rcx, %rdi
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, %rsp
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	.L.str.5(%rip), %rsi
	callq	sprintf@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	rmtree
	movq	-48(%rbp), %rax
	movq	%rax, %rsp
	jmp	.LBB0_9
.LBB0_14:
	movq	-24(%rbp), %rdi
	callq	closedir@PLT
	movq	-8(%rbp), %rdi
	callq	rmdir@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB0_16
# %bb.15:
	leaq	.L.str.6(%rip), %rdi
	callq	perror@PLT
	movl	stderr(%rip), %edi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	fprintf@PLT
.LBB0_16:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
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
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ct: unlink: %s\n"
.L.str.1:
	.asciz	"ct: opendir"
.L.str.2:
	.asciz	"ct: path %s\n"
.L.str.3:
	.asciz	"."
.L.str.4:
	.asciz	".."
.L.str.5:
	.asciz	"%s/%s"
.L.str.6:
	.asciz	"ct: rmdir"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rmtree
	.addrsig_sym unlink
	.addrsig_sym opendir
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym perror
	.addrsig_sym readdir
	.addrsig_sym strcmp
	.addrsig_sym strlen
	.addrsig_sym sprintf
	.addrsig_sym closedir
	.addrsig_sym rmdir
	.addrsig_sym errno
	.addrsig_sym ENOENT
	.addrsig_sym ENOTDIR
	.addrsig_sym stderr