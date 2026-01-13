	.text
	.p2align	4, 0x90                         # -- Begin function printcharset
printcharset:                           # @printcharset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-8(%rbp), %eax
	cmpl	UCHAR_MAX(%rip), %eax
	jg	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	testchar@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	cmpl	UCHAR_MAX(%rip), %eax
	setle	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	movb	-13(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	subl	$1, %edx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"["
	.bss
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"(%02x)"
.L.str.2:
	.asciz	"(%02x-%02x)"
.L.str.3:
	.asciz	"]"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcharset
	.addrsig_sym printf
	.addrsig_sym testchar
	.addrsig_sym UCHAR_MAX