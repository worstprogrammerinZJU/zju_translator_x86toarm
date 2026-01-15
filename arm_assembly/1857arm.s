	.text
	.p2align	2                               // -- Begin function read_bitsize
	.type	read_bitsize,@function
read_bitsize:                           // @read_bitsize
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	is_inttype
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	ty2s
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	bl	peek
	str	x0, [sp, #24]
	bl	read_intexpr
	str	w0, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_BOOL
	ldr	x9, [x9, :lo12:KIND_BOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	lsl	w8, w8, #3
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ty2s
	mov	w9, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x2, w8
	ldr	w3, [sp, #20]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_11
.LBB0_11:
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_bitsize, .Lfunc_end0-read_bitsize
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-integer type cannot be a bitfield: %s"
	.size	.L.str, 42
	.type	KIND_BOOL,@object               // @KIND_BOOL
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.xword	0                               // 0x0
	.size	KIND_BOOL, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid bitfield size for %s: %d"
	.size	.L.str.1, 33
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"zero-width bitfield needs to be unnamed: %s"
	.size	.L.str.2, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_bitsize
	.addrsig_sym is_inttype
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym peek
	.addrsig_sym read_intexpr
	.addrsig_sym errort
	.addrsig_sym KIND_BOOL