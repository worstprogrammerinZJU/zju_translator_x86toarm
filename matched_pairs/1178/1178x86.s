	.text
	.p2align	4, 0x90                         # -- Begin function expects
expects:                                # @expects
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movswl	-2(%rbp), %esi
	movswl	-4(%rbp), %edx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed\n"
.L.str.1:
	.asciz	"  %d expected, but got %d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expects
	.addrsig_sym printf
	.addrsig_sym exit