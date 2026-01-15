	.text
	.p2align	4, 0x90                         # -- Begin function push_struct
push_struct:                            # @push_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$8, %esi
	callq	align@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-12(%rbp), %esi
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-12(%rbp), %esi
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-12(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-12(%rbp), %esi
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-8(%rbp), %eax
	addl	stackpos(%rip), %eax
	movl	%eax, stackpos(%rip)
	movl	-8(%rbp), %eax
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
	.asciz	"sub $%d, #rsp"
.L.str.1:
	.asciz	"mov #rcx, -8(#rsp)"
.L.str.2:
	.asciz	"mov #r11, -16(#rsp)"
.L.str.3:
	.asciz	"mov #rax, #rcx"
.L.str.4:
	.asciz	"movq %d(#rcx), #r11"
.L.str.5:
	.asciz	"mov #r11, %d(#rsp)"
.L.str.6:
	.asciz	"movl %d(#rcx), #r11"
.L.str.7:
	.asciz	"movl #r11d, %d(#rsp)"
.L.str.8:
	.asciz	"movb %d(#rcx), #r11"
.L.str.9:
	.asciz	"movb #r11b, %d(#rsp)"
.L.str.10:
	.asciz	"mov -8(#rsp), #rcx"
.L.str.11:
	.asciz	"mov -16(#rsp), #r11"
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_struct
	.addrsig_sym align
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos