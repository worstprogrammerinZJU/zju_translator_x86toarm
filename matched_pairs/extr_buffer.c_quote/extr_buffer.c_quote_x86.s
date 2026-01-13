	.text
	.p2align	4, 0x90                         # -- Begin function quote
quote:                                  # @quote
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	subl	$8, %eax
	je	.LBB0_3
	jmp	.LBB0_10
.LBB0_10:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$9, %eax
	je	.LBB0_7
	jmp	.LBB0_11
.LBB0_11:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$10, %eax
	je	.LBB0_5
	jmp	.LBB0_12
.LBB0_12:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$12, %eax
	je	.LBB0_4
	jmp	.LBB0_13
.LBB0_13:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$13, %eax
	je	.LBB0_6
	jmp	.LBB0_14
.LBB0_14:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$34, %eax
	je	.LBB0_1
	jmp	.LBB0_15
.LBB0_15:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$92, %eax
	je	.LBB0_2
	jmp	.LBB0_8
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_7:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movq	$0, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\\""
.L.str.1:
	.asciz	"\\\\"
.L.str.2:
	.asciz	"\\b"
.L.str.3:
	.asciz	"\\f"
.L.str.4:
	.asciz	"\\n"
.L.str.5:
	.asciz	"\\r"
.L.str.6:
	.asciz	"\\t"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quote