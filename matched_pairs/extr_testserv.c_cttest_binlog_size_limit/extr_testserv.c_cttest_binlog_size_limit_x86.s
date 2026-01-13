	.text
	.globl	cttest_binlog_size_limit        # -- Begin function cttest_binlog_size_limit
	.p2align	4, 0x90
cttest_binlog_size_limit:               # @cttest_binlog_size_limit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	$4096, size(%rip)               # imm = 0x1000
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, srv(%rip)
	movl	$1, srv+4(%rip)
	movl	size(%rip), %eax
	movl	%eax, srv+8(%rip)
	movq	$0, srv+16(%rip)
	movl	$1, srv+12(%rip)
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -16(%rbp)
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	fmtalloc@PLT
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	exist@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -4(%rbp)
	leaq	.L.str.1(%rip), %rdi
	callq	fmtalloc@PLT
	movq	%rax, -32(%rbp)
	movl	-16(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-16(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-16(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	ckresp@PLT
	movq	-32(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_1
.LBB0_3:
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, %esi
	leaq	.L.str.4(%rip), %rdi
	callq	fmtalloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	filesize@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	size(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-8(%rbp), %edx
	movl	size(%rip), %ecx
	leaq	.L.str.5(%rip), %rsi
	callq	assertf@PLT
	movq	-24(%rbp), %rdi
	callq	filesize@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	size(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-8(%rbp), %edx
	movl	size(%rip), %ecx
	leaq	.L.str.6(%rip), %rsi
	callq	assertf@PLT
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movq	-24(%rbp), %rdi
	callq	free@PLT
	addq	$48, %rsp
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
	.zero	24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/binlog.2"
.L.str.1:
	.asciz	"INSERTED %d\r\n"
.L.str.2:
	.asciz	"put 0 0 100 50\r\n"
.L.str.3:
	.asciz	"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n"
.L.str.4:
	.asciz	"%s/binlog.1"
.L.str.5:
	.asciz	"binlog.1 %d != %d"
.L.str.6:
	.asciz	"binlog.2 %d != %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym fmtalloc
	.addrsig_sym exist
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym free
	.addrsig_sym filesize
	.addrsig_sym assertf
	.addrsig_sym size
	.addrsig_sym srv