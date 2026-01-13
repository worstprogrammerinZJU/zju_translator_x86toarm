	.text
	.p2align	2                               // -- Begin function bind_bytecoded_builtins
	.type	bind_bytecoded_builtins,@function
bind_bytecoded_builtins:                // @bind_bytecoded_builtins
// %bb.0:
	sub	sp, sp, #288
	stp	x29, x30, [sp, #256]            // 16-byte Folded Spill
	str	x28, [sp, #272]                 // 8-byte Folded Spill
	add	x29, sp, #256
	stur	w0, [x29, #-4]
	bl	gen_noop
	stur	w0, [x29, #-8]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-56]
	adrp	x8, BACKTRACK
	ldr	w0, [x8, :lo12:BACKTRACK]
	bl	gen_op_simple
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-48]
	stur	wzr, [x29, #-40]
	stur	wzr, [x29, #-36]
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-32]
	bl	jv_false
	bl	gen_const
	stur	w0, [x29, #-108]                // 4-byte Folded Spill
	bl	jv_true
	bl	gen_const
	mov	w1, w0
	ldur	w0, [x29, #-108]                // 4-byte Folded Reload
	bl	gen_condbranch
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-24]
	stur	wzr, [x29, #-16]
	stur	wzr, [x29, #-12]
	stur	wzr, [x29, #-60]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-60]
                                        // kill: def $x8 killed $w8
	subs	x8, x8, #2
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-112]                // 4-byte Folded Spill
	ldur	w8, [x29, #-60]
                                        // kill: def $x8 killed $w8
	mov	x9, #24
	str	x9, [sp, #120]                  // 8-byte Folded Spill
	mul	x9, x8, x9
	sub	x8, x29, #56
	str	x8, [sp, #128]                  // 8-byte Folded Spill
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-120]                // 8-byte Folded Spill
	bl	gen_noop
	ldr	x10, [sp, #120]                 // 8-byte Folded Reload
	ldr	x8, [sp, #128]                  // 8-byte Folded Reload
	mov	w1, w0
	ldur	x0, [x29, #-120]                // 8-byte Folded Reload
	ldur	w9, [x29, #-60]
                                        // kill: def $x9 killed $w9
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w2, [x8, #16]
	bl	gen_function
	mov	w1, w0
	ldur	w0, [x29, #-112]                // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_1
.LBB0_4:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-88]
	adrp	x8, PATH_BEGIN
	ldr	w0, [x8, :lo12:PATH_BEGIN]
	bl	gen_op_simple
	str	w0, [sp, #116]                  // 4-byte Folded Spill
	bl	gen_noop
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	gen_call
	str	w0, [sp, #112]                  // 4-byte Folded Spill
	adrp	x8, PATH_END
	ldr	w0, [x8, :lo12:PATH_END]
	bl	gen_op_simple
	ldr	w1, [sp, #112]                  // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #116]                  // 4-byte Folded Reload
	bl	BLOCK
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-80]
	stur	wzr, [x29, #-72]
	stur	wzr, [x29, #-68]
	stur	wzr, [x29, #-92]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-92]
                                        // kill: def $x8 killed $w8
	subs	x8, x8, #1
	b.hs	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-8]
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-92]
                                        // kill: def $x8 killed $w8
	mov	x9, #24
	str	x9, [sp, #80]                   // 8-byte Folded Spill
	mul	x9, x8, x9
	sub	x8, x29, #88
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	gen_param
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldr	x8, [sp, #88]                   // 8-byte Folded Reload
	mov	w1, w0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-92]
                                        // kill: def $x9 killed $w9
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w2, [x8, #16]
	bl	gen_function
	mov	w1, w0
	ldr	w0, [sp, #108]                  // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-92]
	add	w8, w8, #1
	stur	w8, [x29, #-92]
	b	.LBB0_5
.LBB0_8:
	adrp	x8, STOREV
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:STOREV]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	gen_op_var_fresh
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	w0, [x29, #-96]
	ldr	w0, [x8, :lo12:STOREV]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	gen_op_var_fresh
	stur	w0, [x29, #-100]
	adrp	x8, DUP
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	w0, [sp, #52]                   // 4-byte Folded Spill
	bl	gen_noop
	mov	w1, w0
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	gen_call
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-100]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	bl	gen_noop
	mov	w1, w0
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	gen_call
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	w0, [sp, #40]                   // 4-byte Folded Spill
	adrp	x8, LOADV
	ldr	w0, [x8, :lo12:LOADV]
	ldur	w1, [x29, #-100]
	bl	gen_op_bound
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-96]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	adrp	x8, RANGE
	ldr	w0, [x8, :lo12:RANGE]
	ldur	w1, [x29, #-96]
	bl	gen_op_bound
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	ldr	w2, [sp, #32]                   // 4-byte Folded Reload
	ldr	w3, [sp, #36]                   // 4-byte Folded Reload
	ldr	w4, [sp, #40]                   // 4-byte Folded Reload
	ldr	w5, [sp, #44]                   // 4-byte Folded Reload
	ldr	w6, [sp, #48]                   // 4-byte Folded Reload
	mov	w7, w0
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w8, w0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	stur	w8, [x29, #-104]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #76]                   // 4-byte Folded Spill
	bl	gen_param
	mov	w1, w0
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	str	w1, [sp, #72]                   // 4-byte Folded Spill
	bl	gen_param
	mov	w1, w0
	ldr	w0, [sp, #72]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	ldur	w2, [x29, #-104]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	gen_function
	mov	w1, w0
	ldr	w0, [sp, #76]                   // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-4]
	bl	BLOCK
	ldr	x28, [sp, #272]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #256]            // 16-byte Folded Reload
	add	sp, sp, #288
	ret
.Lfunc_end0:
	.size	bind_bytecoded_builtins, .Lfunc_end0-bind_bytecoded_builtins
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"empty"
	.size	.L.str, 6
	.type	BACKTRACK,@object               // @BACKTRACK
	.bss
	.globl	BACKTRACK
	.p2align	2
BACKTRACK:
	.word	0                               // 0x0
	.size	BACKTRACK, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"not"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"path"
	.size	.L.str.2, 5
	.type	PATH_BEGIN,@object              // @PATH_BEGIN
	.bss
	.globl	PATH_BEGIN
	.p2align	2
PATH_BEGIN:
	.word	0                               // 0x0
	.size	PATH_BEGIN, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"arg"
	.size	.L.str.3, 4
	.type	PATH_END,@object                // @PATH_END
	.bss
	.globl	PATH_END
	.p2align	2
PATH_END:
	.word	0                               // 0x0
	.size	PATH_END, 4
	.type	STOREV,@object                  // @STOREV
	.globl	STOREV
	.p2align	2
STOREV:
	.word	0                               // 0x0
	.size	STOREV, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"rangevar"
	.size	.L.str.4, 9
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"rangestart"
	.size	.L.str.5, 11
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"start"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"end"
	.size	.L.str.7, 4
	.type	LOADV,@object                   // @LOADV
	.bss
	.globl	LOADV
	.p2align	2
LOADV:
	.word	0                               // 0x0
	.size	LOADV, 4
	.type	RANGE,@object                   // @RANGE
	.globl	RANGE
	.p2align	2
RANGE:
	.word	0                               // 0x0
	.size	RANGE, 4
	.type	.L.str.8,@object                // @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"range"
	.size	.L.str.8, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bind_bytecoded_builtins
	.addrsig_sym gen_noop
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_condbranch
	.addrsig_sym gen_const
	.addrsig_sym jv_false
	.addrsig_sym jv_true
	.addrsig_sym BLOCK
	.addrsig_sym gen_function
	.addrsig_sym gen_call
	.addrsig_sym gen_param
	.addrsig_sym gen_op_var_fresh
	.addrsig_sym gen_op_bound
	.addrsig_sym BACKTRACK
	.addrsig_sym PATH_BEGIN
	.addrsig_sym PATH_END
	.addrsig_sym STOREV
	.addrsig_sym DUP
	.addrsig_sym LOADV
	.addrsig_sym RANGE