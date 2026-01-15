	.text
	.p2align	2                               // -- Begin function emit_regsave_area
	.type	emit_regsave_area,@function
emit_regsave_area:                      // @emit_regsave_area
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, REGAREA_SIZE
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:REGAREA_SIZE]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	emit
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	emit
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	emit
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	emit
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	emit
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	emit
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	bl	emit
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:REGAREA_SIZE]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_regsave_area, .Lfunc_end0-emit_regsave_area
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $%d, #rsp"
	.size	.L.str, 14
	.type	REGAREA_SIZE,@object            // @REGAREA_SIZE
	.bss
	.globl	REGAREA_SIZE
	.p2align	2
REGAREA_SIZE:
	.word	0                               // 0x0
	.size	REGAREA_SIZE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"mov #rdi, (#rsp)"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov #rsi, 8(#rsp)"
	.size	.L.str.2, 18
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov #rdx, 16(#rsp)"
	.size	.L.str.3, 19
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"mov #rcx, 24(#rsp)"
	.size	.L.str.4, 19
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"mov #r8, 32(#rsp)"
	.size	.L.str.5, 18
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"mov #r9, 40(#rsp)"
	.size	.L.str.6, 18
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"movaps #xmm0, 48(#rsp)"
	.size	.L.str.7, 23
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"movaps #xmm1, 64(#rsp)"
	.size	.L.str.8, 23
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"movaps #xmm2, 80(#rsp)"
	.size	.L.str.9, 23
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"movaps #xmm3, 96(#rsp)"
	.size	.L.str.10, 23
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"movaps #xmm4, 112(#rsp)"
	.size	.L.str.11, 24
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"movaps #xmm5, 128(#rsp)"
	.size	.L.str.12, 24
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"movaps #xmm6, 144(#rsp)"
	.size	.L.str.13, 24
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"movaps #xmm7, 160(#rsp)"
	.size	.L.str.14, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_regsave_area
	.addrsig_sym emit
	.addrsig_sym REGAREA_SIZE