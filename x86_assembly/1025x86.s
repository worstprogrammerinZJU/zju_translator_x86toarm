	.text
	.p2align	4, 0x90                         # -- Begin function emit_zero_filler
emit_zero_filler:                       # @emit_zero_filler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movl $0, %d(#rbp)"
.L.str.1:
	.asciz	"movb $0, %d(#rbp)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_zero_filler
	.addrsig_sym emit
	.addrsig_sym SAVE