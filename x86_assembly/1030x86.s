	.text
	.p2align	4, 0x90                         # -- Begin function maybe_emit_bitshift_load
maybe_emit_bitshift_load:               # @maybe_emit_bitshift_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jg	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
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
	leaq	.L.str.1(%rip), %rdi
	callq	pop@PLT
.LBB0_3:
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
	.asciz	"shr $%d, #rax"
.L.str.1:
	.asciz	"rcx"
.L.str.2:
	.asciz	"mov $0x%lx, #rcx"
.L.str.3:
	.asciz	"and #rcx, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym emit
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym SAVE