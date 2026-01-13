	.text
	.p2align	2                               // -- Begin function read_endif
	.type	read_endif,@function
read_endif:                             // @read_endif
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, cond_incl_stack
	ldr	w0, [x8, :lo12:cond_incl_stack]
	bl	vec_len
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	adrp	x8, cond_incl_stack
	ldr	w0, [x8, :lo12:cond_incl_stack]
	bl	vec_pop
	str	x0, [sp, #16]
	bl	expect_newline
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_7
.LBB0_5:
	bl	skip_newlines
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, include_guard
	ldr	w0, [x8, :lo12:include_guard]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	ldr	x8, [sp, #16]
	ldr	w2, [x8]
	bl	map_put
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_endif, .Lfunc_end0-read_endif
                                        // -- End function
	.type	cond_incl_stack,@object         // @cond_incl_stack
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.word	0                               // 0x0
	.size	cond_incl_stack, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray #endif"
	.size	.L.str, 13
	.type	include_guard,@object           // @include_guard
	.bss
	.globl	include_guard
	.p2align	2
include_guard:
	.word	0                               // 0x0
	.size	include_guard, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_endif
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym vec_pop
	.addrsig_sym expect_newline
	.addrsig_sym skip_newlines
	.addrsig_sym map_put
	.addrsig_sym cond_incl_stack
	.addrsig_sym include_guard