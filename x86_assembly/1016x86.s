	.text
	.p2align	4, 0x90                         # -- Begin function emit_regsave_area
emit_regsave_area:                      # @emit_regsave_area
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	REGAREA_SIZE(%rip), %esi
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
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.13(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.14(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	REGAREA_SIZE(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $%d, #rsp"
	.bss
	.globl	REGAREA_SIZE
	.p2align	2
REGAREA_SIZE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"mov #rdi, (#rsp)"
.L.str.2:
	.asciz	"mov #rsi, 8(#rsp)"
.L.str.3:
	.asciz	"mov #rdx, 16(#rsp)"
.L.str.4:
	.asciz	"mov #rcx, 24(#rsp)"
.L.str.5:
	.asciz	"mov #r8, 32(#rsp)"
.L.str.6:
	.asciz	"mov #r9, 40(#rsp)"
.L.str.7:
	.asciz	"movaps #xmm0, 48(#rsp)"
.L.str.8:
	.asciz	"movaps #xmm1, 64(#rsp)"
.L.str.9:
	.asciz	"movaps #xmm2, 80(#rsp)"
.L.str.10:
	.asciz	"movaps #xmm3, 96(#rsp)"
.L.str.11:
	.asciz	"movaps #xmm4, 112(#rsp)"
.L.str.12:
	.asciz	"movaps #xmm5, 128(#rsp)"
.L.str.13:
	.asciz	"movaps #xmm6, 144(#rsp)"
.L.str.14:
	.asciz	"movaps #xmm7, 160(#rsp)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_regsave_area
	.addrsig_sym emit
	.addrsig_sym REGAREA_SIZE