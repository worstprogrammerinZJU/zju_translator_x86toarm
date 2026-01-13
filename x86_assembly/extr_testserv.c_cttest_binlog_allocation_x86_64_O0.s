	.text
	.globl	cttest_binlog_allocation        # -- Begin function cttest_binlog_allocation
	.p2align	4, 0x90
cttest_binlog_allocation:               # @cttest_binlog_allocation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$601, size(%rip)                # imm = 0x259
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, srv+24(%rip)
	movl	$1, srv(%rip)
	movl	size(%rip), %eax
	movl	%eax, srv+4(%rip)
	movq	$0, srv+16(%rip)
	movl	$1, srv+8(%rip)
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -12(%rbp)
	movl	$1, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$96, -4(%rbp)
	jg	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	fmtalloc@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	ckresp@PLT
	movq	-24(%rbp), %rdi
	callq	free@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$1, -4(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$96, -4(%rbp)
	jg	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	callq	fmtalloc@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movq	-32(%rbp), %rdi
	callq	free@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	size
	.p2align	2
size:
	.long	0                               # 0x0
	.globl	srv
	.p2align	3
srv:
	.zero	32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INSERTED %d\r\n"
.L.str.1:
	.asciz	"put 0 0 120 22\r\n"
.L.str.2:
	.asciz	"job payload xxxxxxxxxx\r\n"
.L.str.3:
	.asciz	"delete %d\r\n"
.L.str.4:
	.asciz	"DELETED\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym fmtalloc
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym free
	.addrsig_sym size
	.addrsig_sym srv