	.text
	.p2align	2                               // -- Begin function emit_copy_struct
	.type	emit_copy_struct,@function
emit_copy_struct:                       // @emit_copy_struct
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	push
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	push
	ldr	x0, [sp, #16]
	bl	emit_addr
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldur	x0, [x29, #-8]
	bl	emit_addr
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #8
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #4
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	ldr	w1, [sp, #12]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	emit
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_9
.LBB0_12:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	pop
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	pop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_copy_struct, .Lfunc_end0-emit_copy_struct
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rcx"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"r11"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov #rax, #rcx"
	.size	.L.str.2, 15
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"movq %d(#rcx), #r11"
	.size	.L.str.3, 20
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"movq #r11, %d(#rax)"
	.size	.L.str.4, 20
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"movl %d(#rcx), #r11"
	.size	.L.str.5, 20
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"movl #r11, %d(#rax)"
	.size	.L.str.6, 20
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"movb %d(#rcx), #r11"
	.size	.L.str.7, 20
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"movb #r11, %d(#rax)"
	.size	.L.str.8, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_copy_struct
	.addrsig_sym push
	.addrsig_sym emit_addr
	.addrsig_sym emit
	.addrsig_sym pop