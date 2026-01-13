	.text
	.globl	get_policy                      // -- Begin function get_policy
	.p2align	2
	.type	get_policy,@function
get_policy:                             // @get_policy
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
	adrp	x8, RANDOM
	ldr	w8, [x8, :lo12:RANDOM]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_2:
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, POLY
	ldr	w8, [x8, :lo12:POLY]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_4:
	ldr	x0, [sp]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, CONSTANT
	ldr	w8, [x8, :lo12:CONSTANT]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_6:
	ldr	x0, [sp]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, STEP
	ldr	w8, [x8, :lo12:STEP]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_8:
	ldr	x0, [sp]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, EXP
	ldr	w8, [x8, :lo12:EXP]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_10:
	ldr	x0, [sp]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcmp
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, SIG
	ldr	w8, [x8, :lo12:SIG]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_12:
	ldr	x0, [sp]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	strcmp
	cbnz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, STEPS
	ldr	w8, [x8, :lo12:STEPS]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_14:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	fprintf
	adrp	x8, CONSTANT
	ldr	w8, [x8, :lo12:CONSTANT]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_policy, .Lfunc_end0-get_policy
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"random"
	.size	.L.str, 7
	.type	RANDOM,@object                  // @RANDOM
	.bss
	.globl	RANDOM
	.p2align	2
RANDOM:
	.word	0                               // 0x0
	.size	RANDOM, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"poly"
	.size	.L.str.1, 5
	.type	POLY,@object                    // @POLY
	.bss
	.globl	POLY
	.p2align	2
POLY:
	.word	0                               // 0x0
	.size	POLY, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"constant"
	.size	.L.str.2, 9
	.type	CONSTANT,@object                // @CONSTANT
	.bss
	.globl	CONSTANT
	.p2align	2
CONSTANT:
	.word	0                               // 0x0
	.size	CONSTANT, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"step"
	.size	.L.str.3, 5
	.type	STEP,@object                    // @STEP
	.bss
	.globl	STEP
	.p2align	2
STEP:
	.word	0                               // 0x0
	.size	STEP, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"exp"
	.size	.L.str.4, 4
	.type	EXP,@object                     // @EXP
	.bss
	.globl	EXP
	.p2align	2
EXP:
	.word	0                               // 0x0
	.size	EXP, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"sigmoid"
	.size	.L.str.5, 8
	.type	SIG,@object                     // @SIG
	.bss
	.globl	SIG
	.p2align	2
SIG:
	.word	0                               // 0x0
	.size	SIG, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"steps"
	.size	.L.str.6, 6
	.type	STEPS,@object                   // @STEPS
	.bss
	.globl	STEPS
	.p2align	2
STEPS:
	.word	0                               // 0x0
	.size	STEPS, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Couldn't find policy %s, going with constant\n"
	.size	.L.str.7, 46
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym RANDOM
	.addrsig_sym POLY
	.addrsig_sym CONSTANT
	.addrsig_sym STEP
	.addrsig_sym EXP
	.addrsig_sym SIG
	.addrsig_sym STEPS
	.addrsig_sym stderr