	.text
	.globl	get_cost_type                   // -- Begin function get_cost_type
	.p2align	2
	.type	get_cost_type,@function
get_cost_type:                          // @get_cost_type
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SEG
	ldr	w8, [x8, :lo12:SEG]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_2:
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, SSE
	ldr	w8, [x8, :lo12:SSE]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_4:
	ldr	x0, [sp]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, MASKED
	ldr	w8, [x8, :lo12:MASKED]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_6:
	ldr	x0, [sp]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, SMOOTH
	ldr	w8, [x8, :lo12:SMOOTH]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_8:
	ldr	x0, [sp]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, L1
	ldr	w8, [x8, :lo12:L1]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_10:
	ldr	x0, [sp]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcmp
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, WGAN
	ldr	w8, [x8, :lo12:WGAN]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_12:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	fprintf
	adrp	x8, SSE
	ldr	w8, [x8, :lo12:SSE]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_cost_type, .Lfunc_end0-get_cost_type
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"seg"
	.size	.L.str, 4
	.type	SEG,@object                     // @SEG
	.bss
	.globl	SEG
	.p2align	2
SEG:
	.word	0                               // 0x0
	.size	SEG, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sse"
	.size	.L.str.1, 4
	.type	SSE,@object                     // @SSE
	.bss
	.globl	SSE
	.p2align	2
SSE:
	.word	0                               // 0x0
	.size	SSE, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"masked"
	.size	.L.str.2, 7
	.type	MASKED,@object                  // @MASKED
	.bss
	.globl	MASKED
	.p2align	2
MASKED:
	.word	0                               // 0x0
	.size	MASKED, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"smooth"
	.size	.L.str.3, 7
	.type	SMOOTH,@object                  // @SMOOTH
	.bss
	.globl	SMOOTH
	.p2align	2
SMOOTH:
	.word	0                               // 0x0
	.size	SMOOTH, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"L1"
	.size	.L.str.4, 3
	.type	L1,@object                      // @L1
	.bss
	.globl	L1
	.p2align	2
L1:
	.word	0                               // 0x0
	.size	L1, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"wgan"
	.size	.L.str.5, 5
	.type	WGAN,@object                    // @WGAN
	.bss
	.globl	WGAN
	.p2align	2
WGAN:
	.word	0                               // 0x0
	.size	WGAN, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Couldn't find cost type %s, going with SSE\n"
	.size	.L.str.6, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym SEG
	.addrsig_sym SSE
	.addrsig_sym MASKED
	.addrsig_sym SMOOTH
	.addrsig_sym L1
	.addrsig_sym WGAN
	.addrsig_sym stderr