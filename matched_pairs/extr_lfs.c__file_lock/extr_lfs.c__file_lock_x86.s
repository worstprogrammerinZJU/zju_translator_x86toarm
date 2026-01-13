	.text
	.p2align	4, 0x90                         # -- Begin function _file_lock
_file_lock:                             # @_file_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	subl	$114, %eax
	je	.LBB0_2
	jmp	.LBB0_7
.LBB0_7:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	subl	$117, %eax
	je	.LBB0_3
	jmp	.LBB0_8
.LBB0_8:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	subl	$119, %eax
	jne	.LBB0_4
	jmp	.LBB0_1
.LBB0_1:
	movl	F_WRLCK(%rip), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	F_RDLCK(%rip), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movl	F_UNLCK(%rip), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	SEEK_SET(%rip), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	fileno@PLT
	movl	%eax, %edi
	movl	F_SETLK(%rip), %esi
	leaq	-88(%rbp), %rdx
	callq	fcntl@PLT
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	F_WRLCK
	.p2align	2
F_WRLCK:
	.long	0                               # 0x0
	.globl	F_RDLCK
	.p2align	2
F_RDLCK:
	.long	0                               # 0x0
	.globl	F_UNLCK
	.p2align	2
F_UNLCK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: invalid mode"
	.bss
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.long	0                               # 0x0
	.globl	F_SETLK
	.p2align	2
F_SETLK:
	.long	0                               # 0x0
	.globl	LK_NBLCK
	.p2align	2
LK_NBLCK:
	.long	0                               # 0x0
	.globl	LK_UNLCK
	.p2align	2
LK_UNLCK:
	.long	0                               # 0x0
	.globl	SEEK_END
	.p2align	2
SEEK_END:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _file_lock
	.addrsig_sym luaL_error
	.addrsig_sym fcntl
	.addrsig_sym fileno
	.addrsig_sym F_WRLCK
	.addrsig_sym F_RDLCK
	.addrsig_sym F_UNLCK
	.addrsig_sym SEEK_SET
	.addrsig_sym F_SETLK