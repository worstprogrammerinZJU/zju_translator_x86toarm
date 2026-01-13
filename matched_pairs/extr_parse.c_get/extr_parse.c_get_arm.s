	.text
	.p2align	2                               // -- Begin function get
	.type	get,@function
get:                                    // @get
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_token
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TINVALID
	ldr	x9, [x9, :lo12:TINVALID]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	bl	peek
	ldr	x8, [x0]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	concatenate_string
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get, .Lfunc_end0-get
                                        // -- End function
	.type	TINVALID,@object                // @TINVALID
	.bss
	.globl	TINVALID
	.p2align	3
TINVALID:
	.xword	0                               // 0x0
	.size	TINVALID, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray character in program: '%c'"
	.size	.L.str, 33
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym peek
	.addrsig_sym concatenate_string
	.addrsig_sym TINVALID
	.addrsig_sym TSTRING