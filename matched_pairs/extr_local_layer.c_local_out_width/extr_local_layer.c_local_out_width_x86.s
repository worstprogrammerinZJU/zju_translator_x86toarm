	.text
	.globl	local_out_width                 # -- Begin function local_out_width
	.p2align	4, 0x90
local_out_width:                        # @local_out_width
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, 16(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-4(%rbp), %rax
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cltd
	idivl	4(%rcx)
	addl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig