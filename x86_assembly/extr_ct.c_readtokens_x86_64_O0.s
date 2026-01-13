	.text
	.p2align	4, 0x90                         # -- Begin function readtokens
readtokens:                             # @readtokens
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$1, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strstr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	addq	$17, %rdi
	leaq	-24(%rbp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, rjobfd(%rip)
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, wjobfd(%rip)
.LBB0_4:
	cmpl	$0, rjobfd(%rip)
	jl	.LBB0_9
# %bb.5:
	movl	rjobfd(%rip), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	F_SETFL(%rip), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	rjobfd(%rip), %edi
	movl	F_GETFL(%rip), %esi
	movb	$0, %al
	callq	fcntl@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	orl	O_NONBLOCK(%rip), %edx
	movb	$0, %al
	callq	fcntl@PLT
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	rjobfd(%rip), %edi
	leaq	-9(%rbp), %rsi
	movl	$1, %edx
	callq	read@PLT
	cmpq	$0, %rax
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MAKEFLAGS"
.L.str.1:
	.asciz	" --jobserver-fds="
	.bss
	.globl	rjobfd
	.p2align	2
rjobfd:
	.long	0                               # 0x0
	.globl	wjobfd
	.p2align	2
wjobfd:
	.long	0                               # 0x0
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.long	0                               # 0x0
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.long	0                               # 0x0
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readtokens
	.addrsig_sym getenv
	.addrsig_sym strstr
	.addrsig_sym strtol
	.addrsig_sym fcntl
	.addrsig_sym read
	.addrsig_sym rjobfd
	.addrsig_sym wjobfd
	.addrsig_sym F_SETFL
	.addrsig_sym F_GETFL
	.addrsig_sym O_NONBLOCK