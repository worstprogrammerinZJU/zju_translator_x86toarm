	.text
	.p2align	2                               // -- Begin function guarded
	.type	guarded,@function
guarded:                                // @guarded
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, include_guard
	ldr	w0, [x8, :lo12:include_guard]
	ldur	x1, [x29, #-8]
	bl	map_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	mov	w9, #0
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldr	x1, [sp, #16]
	bl	map_get
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, cpp_token_one
	ldr	w8, [x8, :lo12:cpp_token_one]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	adrp	x8, cpp_token_zero
	ldr	w8, [x8, :lo12:cpp_token_zero]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	define_obj_macro
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	guarded, .Lfunc_end0-guarded
                                        // -- End function
	.type	include_guard,@object           // @include_guard
	.bss
	.globl	include_guard
	.p2align	2
include_guard:
	.word	0                               // 0x0
	.size	include_guard, 4
	.type	macros,@object                  // @macros
	.globl	macros
	.p2align	2
macros:
	.word	0                               // 0x0
	.size	macros, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__8cc_include_guard"
	.size	.L.str, 20
	.type	cpp_token_one,@object           // @cpp_token_one
	.bss
	.globl	cpp_token_one
	.p2align	2
cpp_token_one:
	.word	0                               // 0x0
	.size	cpp_token_one, 4
	.type	cpp_token_zero,@object          // @cpp_token_zero
	.globl	cpp_token_zero
	.p2align	2
cpp_token_zero:
	.word	0                               // 0x0
	.size	cpp_token_zero, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym guarded
	.addrsig_sym map_get
	.addrsig_sym define_obj_macro
	.addrsig_sym include_guard
	.addrsig_sym macros
	.addrsig_sym cpp_token_one
	.addrsig_sym cpp_token_zero