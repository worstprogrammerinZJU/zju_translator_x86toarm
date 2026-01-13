	.text
	.globl	load_alphabet                   # -- Begin function load_alphabet
	.p2align	4, 0x90
load_alphabet:                          # @load_alphabet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	movl	$8, -12(%rbp)
	movl	$8, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$8, -8(%rbp)
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$128, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$32, -4(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$127, -4(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	-288(%rbp), %rdi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	leaq	-288(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-4(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-24(%rbp), %rax
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"data/labels/%d_%d.png"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym sprintf
	.addrsig_sym load_image_color