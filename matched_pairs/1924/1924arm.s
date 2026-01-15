	.text
	.p2align	2                               // -- Begin function read_static_assert
	.type	read_static_assert,@function
read_static_assert:                     // @read_static_assert
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w0, #40
	bl	expect
	bl	read_intexpr
	stur	w0, [x29, #-4]
	mov	w0, #44
	bl	expect
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	mov	w0, #41
	bl	expect
	mov	w0, #59
	bl	expect
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_static_assert, .Lfunc_end0-read_static_assert
                                        // -- End function
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string expected as the second argument for _Static_assert, but got %s"
	.size	.L.str, 70
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"_Static_assert failure: %s"
	.size	.L.str.1, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_static_assert
	.addrsig_sym expect
	.addrsig_sym read_intexpr
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym TSTRING