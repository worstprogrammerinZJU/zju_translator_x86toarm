	.text
	.globl	yy_scan_bytes                   # -- Begin function yy_scan_bytes
	.p2align	4, 0x90
yy_scan_bytes:                          # @yy_scan_bytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	yyalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_2:
	movl	$0, -44(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movb	YY_END_OF_BUFFER_CHAR(%rip), %dl
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-16(%rbp), %edx
	callq	yy_scan_buffer@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_8
# %bb.7:
	leaq	.L.str.1(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_8:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_scan_bytes()"
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
YY_END_OF_BUFFER_CHAR:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"bad buffer in yy_scan_bytes()"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_scan_buffer
	.addrsig_sym YY_END_OF_BUFFER_CHAR