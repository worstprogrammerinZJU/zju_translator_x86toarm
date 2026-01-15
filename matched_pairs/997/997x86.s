	.text
	.p2align	4, 0x90                         # -- Begin function emit_intcast
emit_intcast:                           # @emit_intcast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	subl	$5, %eax
	ja	.LBB0_14
# %bb.15:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_4
.LBB0_3:
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
.LBB0_4:
	jmp	.LBB0_14
.LBB0_5:
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_7
# %bb.6:
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_8
.LBB0_7:
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
.LBB0_8:
	jmp	.LBB0_14
.LBB0_9:
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_11
# %bb.10:
	leaq	.L.str.4(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_12
.LBB0_11:
	leaq	.L.str.5(%rip), %rdi
	callq	emit@PLT
.LBB0_12:
	jmp	.LBB0_14
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movzbq #al, #rax"
.L.str.1:
	.asciz	"movsbq #al, #rax"
.L.str.2:
	.asciz	"movzwq #ax, #rax"
.L.str.3:
	.asciz	"movswq #ax, #rax"
.L.str.4:
	.asciz	"mov #eax, #eax"
.L.str.5:
	.asciz	"cltq"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_intcast
	.addrsig_sym emit