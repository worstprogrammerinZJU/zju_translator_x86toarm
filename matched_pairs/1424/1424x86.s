	.text
	.p2align	4, 0x90                         # -- Begin function pos_string
pos_string:                             # @pos_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	current_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d:%d"
.L.str.1:
	.asciz	"(unknown)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pos_string
	.addrsig_sym current_file
	.addrsig_sym format