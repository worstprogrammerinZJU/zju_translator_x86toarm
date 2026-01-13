	.text
	.p2align	2                               // -- Begin function read_decl_or_stmt
	.type	read_decl_or_stmt,@function
read_decl_or_stmt:                      // @read_decl_or_stmt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	peek
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	bl	mark_location
	ldr	x0, [sp, #16]
	bl	is_type
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	read_decl
	b	.LBB0_10
.LBB0_4:
	adrp	x8, KSTATIC_ASSERT
	ldr	w0, [x8, :lo12:KSTATIC_ASSERT]
	bl	next_token
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	read_static_assert
	b	.LBB0_9
.LBB0_6:
	bl	read_stmt
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_decl_or_stmt, .Lfunc_end0-read_decl_or_stmt
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of input"
	.size	.L.str, 23
	.type	KSTATIC_ASSERT,@object          // @KSTATIC_ASSERT
	.bss
	.globl	KSTATIC_ASSERT
	.p2align	2
KSTATIC_ASSERT:
	.word	0                               // 0x0
	.size	KSTATIC_ASSERT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym peek
	.addrsig_sym error
	.addrsig_sym mark_location
	.addrsig_sym is_type
	.addrsig_sym read_decl
	.addrsig_sym next_token
	.addrsig_sym read_static_assert
	.addrsig_sym read_stmt
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym KSTATIC_ASSERT