	.text
	.p2align	2                               // -- Begin function push_struct
	.type	push_struct,@function
push_struct:                            // @push_struct
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #8
	bl	align
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
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
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #8
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #4
	str	w8, [sp, #4]
	b	.LBB0_5
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	emit
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	emit
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_9
.LBB0_12:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	emit
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	emit
	ldr	w10, [sp, #8]
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	add	w8, w8, w10
	str	w8, [x9, :lo12:stackpos]
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push_struct, .Lfunc_end0-push_struct
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $%d, #rsp"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov #rcx, -8(#rsp)"
	.size	.L.str.1, 19
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov #r11, -16(#rsp)"
	.size	.L.str.2, 20
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov #rax, #rcx"
	.size	.L.str.3, 15
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"movq %d(#rcx), #r11"
	.size	.L.str.4, 20
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"mov #r11, %d(#rsp)"
	.size	.L.str.5, 19
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"movl %d(#rcx), #r11"
	.size	.L.str.6, 20
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"movl #r11d, %d(#rsp)"
	.size	.L.str.7, 21
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"movb %d(#rcx), #r11"
	.size	.L.str.8, 20
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"movb #r11b, %d(#rsp)"
	.size	.L.str.9, 21
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"mov -8(#rsp), #rcx"
	.size	.L.str.10, 19
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"mov -16(#rsp), #r11"
	.size	.L.str.11, 20
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_struct
	.addrsig_sym align
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos