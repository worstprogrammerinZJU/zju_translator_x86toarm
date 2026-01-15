	.text
	.p2align	2                               // -- Begin function read_funclike_macro_params
	.type	read_funclike_macro_params,@function
read_funclike_macro_params:             // @read_funclike_macro_params
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-40]
	mov	w1, #44
	bl	is_keyword
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-56]                 // 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	tok2s
	mov	w2, w0
	ldur	x0, [x29, #-56]                 // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	bl	lex
	stur	x0, [x29, #-40]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-40]
	adrp	x8, KELLIPSIS
	ldrb	w1, [x8, :lo12:KELLIPSIS]
	bl	is_keyword
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-28]
	mov	w1, #1
	stur	w1, [x29, #-60]                 // 4-byte Folded Spill
	add	w8, w0, #1
	stur	w8, [x29, #-28]
	bl	make_macro_token
	mov	w2, w0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	map_put
	mov	w0, #41
	bl	expect
	ldur	w8, [x29, #-60]                 // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	errort
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	adrp	x8, KELLIPSIS
	ldrb	w0, [x8, :lo12:KELLIPSIS]
	bl	next
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w0, #41
	bl	expect
	ldur	x8, [x29, #-24]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-28]
	mov	w1, #1
	str	w1, [sp, #44]                   // 4-byte Folded Spill
	add	w8, w0, #1
	stur	w8, [x29, #-28]
	bl	make_macro_token
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	map_put
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-28]
	add	w8, w0, #1
	stur	w8, [x29, #-28]
	mov	w1, wzr
	bl	make_macro_token
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	map_put
	b	.LBB0_1
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	read_funclike_macro_params, .Lfunc_end0-read_funclike_macro_params
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	", expected, but got %s"
	.size	.L.str, 23
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"missing ')' in macro parameter list"
	.size	.L.str.1, 36
	.type	KELLIPSIS,@object               // @KELLIPSIS
	.bss
	.globl	KELLIPSIS
KELLIPSIS:
	.byte	0                               // 0x0
	.size	KELLIPSIS, 1
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"__VA_ARGS__"
	.size	.L.str.2, 12
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"identifier expected, but got %s"
	.size	.L.str.3, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funclike_macro_params
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym map_put
	.addrsig_sym make_macro_token
	.addrsig_sym expect
	.addrsig_sym next
	.addrsig_sym TNEWLINE
	.addrsig_sym KELLIPSIS
	.addrsig_sym TIDENT