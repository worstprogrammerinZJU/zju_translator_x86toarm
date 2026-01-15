	.text
	.globl	waldirlock                      # -- Begin function waldirlock
	.p2align	4, 0x90
waldirlock:                             # @waldirlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	snprintf@PLT
	movq	-56(%rbp), %rdi
	movl	O_WRONLY(%rip), %esi
	orl	O_CREAT(%rip), %esi
	movl	$384, %edx                      # imm = 0x180
	callq	open@PLT
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rdi
	callq	free@PLT
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.3(%rip), %rdi
	callq	twarn@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movl	F_WRLCK(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	SEEK_SET(%rip), %eax
	movl	%eax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	-24(%rbp), %edi
	movl	F_SETLK(%rip), %esi
	leaq	-48(%rbp), %rdx
	callq	fcntl@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.5:
	leaq	.L.str.4(%rip), %rdi
	callq	twarn@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/lock"
.L.str.1:
	.asciz	"malloc"
.L.str.2:
	.asciz	"%s/lock"
	.bss
	.globl	O_WRONLY
	.p2align	2
O_WRONLY:
	.long	0                               # 0x0
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"open"
	.bss
	.globl	F_WRLCK
	.p2align	2
F_WRLCK:
	.long	0                               # 0x0
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.long	0                               # 0x0
	.globl	F_SETLK
	.p2align	2
F_SETLK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"fcntl"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym twarn
	.addrsig_sym snprintf
	.addrsig_sym open
	.addrsig_sym free
	.addrsig_sym fcntl
	.addrsig_sym O_WRONLY
	.addrsig_sym O_CREAT
	.addrsig_sym F_WRLCK
	.addrsig_sym SEEK_SET
	.addrsig_sym F_SETLK