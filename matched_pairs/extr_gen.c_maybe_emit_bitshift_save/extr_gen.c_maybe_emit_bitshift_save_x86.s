	.text
	.p2align	4, 0x90                         # -- Begin function maybe_emit_bitshift_save
maybe_emit_bitshift_save:               # @maybe_emit_bitshift_save
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jg	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	$1, %esi
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	subl	$1, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	$99, %esi
	callq	get_int_reg@PLT
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	$1, %esi
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	subl	$1, %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	xorl	$-1, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	pop@PLT
	leaq	.L.str(%rip), %rdi
	callq	pop@PLT
.LBB0_3:
	addq	$32, %rsp
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
	.asciz	"rcx"
.L.str.1:
	.asciz	"rdi"
.L.str.2:
	.asciz	"mov $0x%lx, #rdi"
.L.str.3:
	.asciz	"and #rdi, #rax"
.L.str.4:
	.asciz	"shl $%d, #rax"
.L.str.5:
	.asciz	"mov %s, #%s"
.L.str.6:
	.asciz	"and #rdi, #rcx"
.L.str.7:
	.asciz	"or #rcx, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym get_int_reg
	.addrsig_sym pop
	.addrsig_sym SAVE