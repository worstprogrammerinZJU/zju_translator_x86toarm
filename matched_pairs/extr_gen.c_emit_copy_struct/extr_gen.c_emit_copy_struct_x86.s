	.text
	.p2align	4, 0x90                         # -- Begin function emit_copy_struct
emit_copy_struct:                       # @emit_copy_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	push@PLT
	movq	-16(%rbp), %rdi
	callq	emit_addr@PLT
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rdi
	callq	emit_addr@PLT
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-20(%rbp), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-20(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	leaq	.L.str.1(%rip), %rdi
	callq	pop@PLT
	leaq	.L.str(%rip), %rdi
	callq	pop@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rcx"
.L.str.1:
	.asciz	"r11"
.L.str.2:
	.asciz	"mov #rax, #rcx"
.L.str.3:
	.asciz	"movq %d(#rcx), #r11"
.L.str.4:
	.asciz	"movq #r11, %d(#rax)"
.L.str.5:
	.asciz	"movl %d(#rcx), #r11"
.L.str.6:
	.asciz	"movl #r11, %d(#rax)"
.L.str.7:
	.asciz	"movb %d(#rcx), #r11"
.L.str.8:
	.asciz	"movb #r11, %d(#rax)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_copy_struct
	.addrsig_sym push
	.addrsig_sym emit_addr
	.addrsig_sym emit
	.addrsig_sym pop