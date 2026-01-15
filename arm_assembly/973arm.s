	.text
	.p2align	2                               // -- Begin function emit_builtin_return_address
	.type	emit_builtin_return_address,@function
emit_builtin_return_address:            // @emit_builtin_return_address
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	push
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	vec_len
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	vec_head
	bl	emit_expr
	bl	make_label
	str	x0, [sp, #16]
	bl	make_label
	str	x0, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldr	x0, [sp, #16]
	bl	emit_label
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	ldr	x0, [sp, #16]
	bl	emit_jmp
	ldr	x0, [sp, #8]
	bl	emit_label
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	pop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_builtin_return_address, .Lfunc_end0-emit_builtin_return_address
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r11"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov #rbp, #r11"
	.size	.L.str.1, 15
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"test #rax, #rax"
	.size	.L.str.2, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"jz %s"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"mov (#r11), #r11"
	.size	.L.str.4, 17
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"sub $1, #rax"
	.size	.L.str.5, 13
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"mov 8(#r11), #rax"
	.size	.L.str.6, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_return_address
	.addrsig_sym push
	.addrsig_sym assert
	.addrsig_sym vec_len
	.addrsig_sym emit_expr
	.addrsig_sym vec_head
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym emit_jmp
	.addrsig_sym pop