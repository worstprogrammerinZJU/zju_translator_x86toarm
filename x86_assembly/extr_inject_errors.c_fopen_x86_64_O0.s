	.text
	.globl	fopen                           # -- Begin function fopen
	.p2align	4, 0x90
fopen:                                  # @fopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	fopen(%rip), %rdi
	callq	GET_REAL@PLT
	movq	$0, fail_close(%rip)
	movq	$0, fail_write(%rip)
	movq	$0, fail_read(%rip)
	movq	$0, fail(%rip)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	real_fopen@PLT
	movq	%rax, -24(%rbp)
	movl	EIO(%rip), %eax
	movl	%eax, error(%rip)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, fail_read(%rip)
	movq	%rax, fail(%rip)
	jmp	.LBB0_12
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$10, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.3:
	movq	-24(%rbp), %rax
	movq	%rax, fail_write(%rip)
	movq	%rax, fail(%rip)
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.4:
	movl	ENOSPC(%rip), %eax
	movl	%eax, error(%rip)
.LBB0_5:
	jmp	.LBB0_11
.LBB0_6:
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$10, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.7:
	movq	-24(%rbp), %rax
	movq	%rax, fail_close(%rip)
	movq	%rax, fail(%rip)
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_9
# %bb.8:
	movl	ENOSPC(%rip), %eax
	movl	%eax, error(%rip)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail_close
	.p2align	3
fail_close:
	.quad	0
	.globl	fail_write
	.p2align	3
fail_write:
	.quad	0
	.globl	fail_read
	.p2align	3
fail_read:
	.quad	0
	.globl	fail
	.p2align	3
fail:
	.quad	0
	.globl	EIO
	.p2align	2
EIO:
	.long	0                               # 0x0
	.globl	error
	.p2align	2
error:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fail_read"
.L.str.1:
	.asciz	"fail_write"
.L.str.2:
	.asciz	"fail_write_enospc"
	.bss
	.globl	ENOSPC
	.p2align	2
ENOSPC:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"fail_close"
.L.str.4:
	.asciz	"fail_close_enospc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym GET_REAL
	.addrsig_sym real_fopen
	.addrsig_sym strcmp
	.addrsig_sym strncmp
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym fail
	.addrsig_sym EIO
	.addrsig_sym error
	.addrsig_sym ENOSPC