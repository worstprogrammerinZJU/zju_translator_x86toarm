	.text
	.globl	get_activation                  // -- Begin function get_activation
	.p2align	2
	.type	get_activation,@function
get_activation:                         // @get_activation
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
	adrp	x8, LOGISTIC
	ldr	w8, [x8, :lo12:LOGISTIC]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_2:
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, LOGGY
	ldr	w8, [x8, :lo12:LOGGY]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_4:
	ldr	x0, [sp]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, RELU
	ldr	w8, [x8, :lo12:RELU]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_6:
	ldr	x0, [sp]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, ELU
	ldr	w8, [x8, :lo12:ELU]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_8:
	ldr	x0, [sp]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, SELU
	ldr	w8, [x8, :lo12:SELU]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_10:
	ldr	x0, [sp]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcmp
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, RELIE
	ldr	w8, [x8, :lo12:RELIE]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_12:
	ldr	x0, [sp]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	strcmp
	cbnz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, PLSE
	ldr	w8, [x8, :lo12:PLSE]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_14:
	ldr	x0, [sp]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	strcmp
	cbnz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, HARDTAN
	ldr	w8, [x8, :lo12:HARDTAN]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_16:
	ldr	x0, [sp]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	strcmp
	cbnz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, LHTAN
	ldr	w8, [x8, :lo12:LHTAN]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_18:
	ldr	x0, [sp]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	strcmp
	cbnz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, LINEAR
	ldr	w8, [x8, :lo12:LINEAR]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_20:
	ldr	x0, [sp]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	strcmp
	cbnz	x0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x8, RAMP
	ldr	w8, [x8, :lo12:RAMP]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_22:
	ldr	x0, [sp]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	strcmp
	cbnz	x0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x8, LEAKY
	ldr	w8, [x8, :lo12:LEAKY]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_24:
	ldr	x0, [sp]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	strcmp
	cbnz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x8, TANH
	ldr	w8, [x8, :lo12:TANH]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_26:
	ldr	x0, [sp]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	strcmp
	cbnz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, STAIR
	ldr	w8, [x8, :lo12:STAIR]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_28:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	fprintf
	adrp	x8, RELU
	ldr	w8, [x8, :lo12:RELU]
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_29:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_activation, .Lfunc_end0-get_activation
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"logistic"
	.size	.L.str, 9
	.type	LOGISTIC,@object                // @LOGISTIC
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.word	0                               // 0x0
	.size	LOGISTIC, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"loggy"
	.size	.L.str.1, 6
	.type	LOGGY,@object                   // @LOGGY
	.bss
	.globl	LOGGY
	.p2align	2
LOGGY:
	.word	0                               // 0x0
	.size	LOGGY, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"relu"
	.size	.L.str.2, 5
	.type	RELU,@object                    // @RELU
	.bss
	.globl	RELU
	.p2align	2
RELU:
	.word	0                               // 0x0
	.size	RELU, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"elu"
	.size	.L.str.3, 4
	.type	ELU,@object                     // @ELU
	.bss
	.globl	ELU
	.p2align	2
ELU:
	.word	0                               // 0x0
	.size	ELU, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"selu"
	.size	.L.str.4, 5
	.type	SELU,@object                    // @SELU
	.bss
	.globl	SELU
	.p2align	2
SELU:
	.word	0                               // 0x0
	.size	SELU, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"relie"
	.size	.L.str.5, 6
	.type	RELIE,@object                   // @RELIE
	.bss
	.globl	RELIE
	.p2align	2
RELIE:
	.word	0                               // 0x0
	.size	RELIE, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plse"
	.size	.L.str.6, 5
	.type	PLSE,@object                    // @PLSE
	.bss
	.globl	PLSE
	.p2align	2
PLSE:
	.word	0                               // 0x0
	.size	PLSE, 4
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"hardtan"
	.size	.L.str.7, 8
	.type	HARDTAN,@object                 // @HARDTAN
	.bss
	.globl	HARDTAN
	.p2align	2
HARDTAN:
	.word	0                               // 0x0
	.size	HARDTAN, 4
	.type	.L.str.8,@object                // @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"lhtan"
	.size	.L.str.8, 6
	.type	LHTAN,@object                   // @LHTAN
	.bss
	.globl	LHTAN
	.p2align	2
LHTAN:
	.word	0                               // 0x0
	.size	LHTAN, 4
	.type	.L.str.9,@object                // @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"linear"
	.size	.L.str.9, 7
	.type	LINEAR,@object                  // @LINEAR
	.bss
	.globl	LINEAR
	.p2align	2
LINEAR:
	.word	0                               // 0x0
	.size	LINEAR, 4
	.type	.L.str.10,@object               // @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"ramp"
	.size	.L.str.10, 5
	.type	RAMP,@object                    // @RAMP
	.bss
	.globl	RAMP
	.p2align	2
RAMP:
	.word	0                               // 0x0
	.size	RAMP, 4
	.type	.L.str.11,@object               // @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"leaky"
	.size	.L.str.11, 6
	.type	LEAKY,@object                   // @LEAKY
	.bss
	.globl	LEAKY
	.p2align	2
LEAKY:
	.word	0                               // 0x0
	.size	LEAKY, 4
	.type	.L.str.12,@object               // @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"tanh"
	.size	.L.str.12, 5
	.type	TANH,@object                    // @TANH
	.bss
	.globl	TANH
	.p2align	2
TANH:
	.word	0                               // 0x0
	.size	TANH, 4
	.type	.L.str.13,@object               // @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"stair"
	.size	.L.str.13, 6
	.type	STAIR,@object                   // @STAIR
	.bss
	.globl	STAIR
	.p2align	2
STAIR:
	.word	0                               // 0x0
	.size	STAIR, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.14,@object               // @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Couldn't find activation function %s, going with ReLU\n"
	.size	.L.str.14, 55
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym LOGISTIC
	.addrsig_sym LOGGY
	.addrsig_sym RELU
	.addrsig_sym ELU
	.addrsig_sym SELU
	.addrsig_sym RELIE
	.addrsig_sym PLSE
	.addrsig_sym HARDTAN
	.addrsig_sym LHTAN
	.addrsig_sym LINEAR
	.addrsig_sym RAMP
	.addrsig_sym LEAKY
	.addrsig_sym TANH
	.addrsig_sym STAIR
	.addrsig_sym stderr