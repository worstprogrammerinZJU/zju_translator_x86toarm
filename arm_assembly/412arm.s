	.text
	.p2align	2                               // -- Begin function hashhash_check
	.type	hashhash_check,@function
hashhash_check:                         // @hashhash_check
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	vec_len
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	vec_head
	adrp	x8, KHASHHASH
	ldr	w1, [x8, :lo12:KHASHHASH]
	bl	is_keyword
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	vec_head
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	vec_tail
	adrp	x8, KHASHHASH
	ldr	w1, [x8, :lo12:KHASHHASH]
	bl	is_keyword
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	bl	vec_tail
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	hashhash_check, .Lfunc_end0-hashhash_check
                                        // -- End function
	.type	KHASHHASH,@object               // @KHASHHASH
	.bss
	.globl	KHASHHASH
	.p2align	2
KHASHHASH:
	.word	0                               // 0x0
	.size	KHASHHASH, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'##' cannot appear at start of macro expansion"
	.size	.L.str, 47
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"'##' cannot appear at end of macro expansion"
	.size	.L.str.1, 45
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hashhash_check
	.addrsig_sym vec_len
	.addrsig_sym is_keyword
	.addrsig_sym vec_head
	.addrsig_sym errort
	.addrsig_sym vec_tail
	.addrsig_sym KHASHHASH