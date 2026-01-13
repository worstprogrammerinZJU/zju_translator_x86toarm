	.text
	.p2align	4, 0x90                         # -- Begin function copyfd
copyfd:                                 # @copyfd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1056, %rsp                     # imm = 0x420
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %edi
	leaq	-1056(%rbp), %rsi
	movl	$1024, %edx                     # imm = 0x400
	callq	read@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-1056(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	$1, %esi
	callq	fwrite@PLT
	cmpq	-24(%rbp), %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str(%rip), %rdx
	callq	die@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:
	addq	$1056, %rsp                     # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fwrite"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copyfd
	.addrsig_sym read
	.addrsig_sym fwrite
	.addrsig_sym die
	.addrsig_sym errno