	.arch armv8-a
	.file	"2996.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"White: "
	.align	3
.LC1:
	.string	"K%c%d"
	.align	3
.LC2:
	.string	",Q%c%d"
	.align	3
.LC3:
	.string	",R%c%d"
	.align	3
.LC4:
	.string	",B%c%d"
	.align	3
.LC5:
	.string	",N%c%d"
	.align	3
.LC6:
	.string	",%c%d"
	.align	3
.LC7:
	.string	"\nBlack: "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -384]!
	.cfi_def_cfa_offset 384
	.cfi_offset 29, -384
	.cfi_offset 30, -376
	mov	x29, sp
	str	wzr, [sp, 368]
	str	wzr, [sp, 364]
	str	wzr, [sp, 360]
	str	wzr, [sp, 356]
	str	wzr, [sp, 352]
	str	wzr, [sp, 348]
	str	wzr, [sp, 344]
	str	wzr, [sp, 340]
	str	wzr, [sp, 336]
	str	wzr, [sp, 332]
	str	wzr, [sp, 328]
	str	wzr, [sp, 324]
	mov	w0, 1
	str	w0, [sp, 380]
	b	.L2
.L19:
	add	x0, sp, 24
	bl	gets
	add	x0, sp, 24
	bl	gets
	mov	w0, 2
	str	w0, [sp, 376]
	b	.L3
.L18:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	beq	.L69
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	beq	.L69
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	bne	.L7
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	str	w0, [sp, 312]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w0, w1, w0
	str	w0, [sp, 316]
	mov	w0, 1
	str	w0, [sp, 368]
	b	.L6
.L7:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 107
	bne	.L8
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	str	w0, [sp, 184]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w0, w1, w0
	str	w0, [sp, 188]
	mov	w0, 1
	str	w0, [sp, 344]
	b	.L6
.L8:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 81
	bne	.L9
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	str	w0, [sp, 304]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w0, w1, w0
	str	w0, [sp, 308]
	mov	w0, 1
	str	w0, [sp, 364]
	b	.L6
.L9:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 113
	bne	.L10
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	str	w0, [sp, 176]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w0, w1, w0
	str	w0, [sp, 180]
	mov	w0, 1
	str	w0, [sp, 340]
	b	.L6
.L10:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 82
	bne	.L11
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 360]
	lsl	x0, x0, 3
	add	x1, sp, 288
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 360]
	lsl	x0, x0, 3
	add	x1, sp, 292
	str	w2, [x1, x0]
	ldr	w0, [sp, 360]
	add	w0, w0, 1
	str	w0, [sp, 360]
	b	.L6
.L11:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 114
	bne	.L12
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 336]
	lsl	x0, x0, 3
	add	x1, sp, 160
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 336]
	lsl	x0, x0, 3
	add	x1, sp, 164
	str	w2, [x1, x0]
	ldr	w0, [sp, 336]
	add	w0, w0, 1
	str	w0, [sp, 336]
	b	.L6
.L12:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	bne	.L13
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 356]
	lsl	x0, x0, 3
	add	x1, sp, 272
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 356]
	lsl	x0, x0, 3
	add	x1, sp, 276
	str	w2, [x1, x0]
	ldr	w0, [sp, 356]
	add	w0, w0, 1
	str	w0, [sp, 356]
	b	.L6
.L13:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 98
	bne	.L14
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 332]
	lsl	x0, x0, 3
	add	x1, sp, 144
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 332]
	lsl	x0, x0, 3
	add	x1, sp, 148
	str	w2, [x1, x0]
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
	b	.L6
.L14:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L15
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 352]
	lsl	x0, x0, 3
	add	x1, sp, 256
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 352]
	lsl	x0, x0, 3
	add	x1, sp, 260
	str	w2, [x1, x0]
	ldr	w0, [sp, 352]
	add	w0, w0, 1
	str	w0, [sp, 352]
	b	.L6
.L15:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 110
	bne	.L16
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 3
	add	x1, sp, 128
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 3
	add	x1, sp, 132
	str	w2, [x1, x0]
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
	b	.L6
.L16:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 80
	bne	.L17
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 348]
	lsl	x0, x0, 3
	add	x1, sp, 192
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 348]
	lsl	x0, x0, 3
	add	x1, sp, 196
	str	w2, [x1, x0]
	ldr	w0, [sp, 348]
	add	w0, w0, 1
	str	w0, [sp, 348]
	b	.L6
.L17:
	ldrsw	x0, [sp, 376]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 112
	bne	.L6
	ldr	w0, [sp, 376]
	sub	w0, w0, #2
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldrsw	x0, [sp, 324]
	lsl	x0, x0, 3
	add	x1, sp, 64
	str	w2, [x1, x0]
	mov	w1, 9
	ldr	w0, [sp, 380]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 324]
	lsl	x0, x0, 3
	add	x1, sp, 68
	str	w2, [x1, x0]
	ldr	w0, [sp, 324]
	add	w0, w0, 1
	str	w0, [sp, 324]
	b	.L6
.L69:
	nop
.L6:
	ldr	w0, [sp, 376]
	add	w0, w0, 4
	str	w0, [sp, 376]
.L3:
	ldr	w0, [sp, 376]
	cmp	w0, 33
	ble	.L18
	ldr	w0, [sp, 380]
	add	w0, w0, 1
	str	w0, [sp, 380]
.L2:
	ldr	w0, [sp, 380]
	cmp	w0, 8
	ble	.L19
	ldr	w0, [sp, 360]
	cmp	w0, 1
	ble	.L20
	ldr	w1, [sp, 292]
	ldr	w0, [sp, 300]
	cmp	w1, w0
	ble	.L21
	ldr	w0, [sp, 292]
	str	w0, [sp, 320]
	ldr	w0, [sp, 300]
	str	w0, [sp, 292]
	ldr	w0, [sp, 320]
	str	w0, [sp, 300]
	ldr	w0, [sp, 288]
	str	w0, [sp, 320]
	ldr	w0, [sp, 296]
	str	w0, [sp, 288]
	ldr	w0, [sp, 320]
	str	w0, [sp, 296]
	b	.L20
.L21:
	ldr	w1, [sp, 292]
	ldr	w0, [sp, 300]
	cmp	w1, w0
	bne	.L20
	ldr	w1, [sp, 288]
	ldr	w0, [sp, 296]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [sp, 292]
	str	w0, [sp, 320]
	ldr	w0, [sp, 300]
	str	w0, [sp, 292]
	ldr	w0, [sp, 320]
	str	w0, [sp, 300]
	ldr	w0, [sp, 288]
	str	w0, [sp, 320]
	ldr	w0, [sp, 296]
	str	w0, [sp, 288]
	ldr	w0, [sp, 320]
	str	w0, [sp, 296]
.L20:
	ldr	w0, [sp, 356]
	cmp	w0, 1
	ble	.L22
	ldr	w1, [sp, 276]
	ldr	w0, [sp, 284]
	cmp	w1, w0
	ble	.L23
	ldr	w0, [sp, 276]
	str	w0, [sp, 320]
	ldr	w0, [sp, 284]
	str	w0, [sp, 276]
	ldr	w0, [sp, 320]
	str	w0, [sp, 284]
	ldr	w0, [sp, 272]
	str	w0, [sp, 320]
	ldr	w0, [sp, 280]
	str	w0, [sp, 272]
	ldr	w0, [sp, 320]
	str	w0, [sp, 280]
	b	.L22
.L23:
	ldr	w1, [sp, 276]
	ldr	w0, [sp, 284]
	cmp	w1, w0
	bne	.L22
	ldr	w1, [sp, 272]
	ldr	w0, [sp, 280]
	cmp	w1, w0
	ble	.L22
	ldr	w0, [sp, 276]
	str	w0, [sp, 320]
	ldr	w0, [sp, 284]
	str	w0, [sp, 276]
	ldr	w0, [sp, 320]
	str	w0, [sp, 284]
	ldr	w0, [sp, 272]
	str	w0, [sp, 320]
	ldr	w0, [sp, 280]
	str	w0, [sp, 272]
	ldr	w0, [sp, 320]
	str	w0, [sp, 280]
.L22:
	ldr	w0, [sp, 352]
	cmp	w0, 1
	ble	.L24
	ldr	w1, [sp, 260]
	ldr	w0, [sp, 268]
	cmp	w1, w0
	ble	.L25
	ldr	w0, [sp, 260]
	str	w0, [sp, 320]
	ldr	w0, [sp, 268]
	str	w0, [sp, 260]
	ldr	w0, [sp, 320]
	str	w0, [sp, 268]
	ldr	w0, [sp, 256]
	str	w0, [sp, 320]
	ldr	w0, [sp, 264]
	str	w0, [sp, 256]
	ldr	w0, [sp, 320]
	str	w0, [sp, 264]
	b	.L24
.L25:
	ldr	w1, [sp, 260]
	ldr	w0, [sp, 268]
	cmp	w1, w0
	bne	.L24
	ldr	w1, [sp, 256]
	ldr	w0, [sp, 264]
	cmp	w1, w0
	ble	.L24
	ldr	w0, [sp, 260]
	str	w0, [sp, 320]
	ldr	w0, [sp, 268]
	str	w0, [sp, 260]
	ldr	w0, [sp, 320]
	str	w0, [sp, 268]
	ldr	w0, [sp, 256]
	str	w0, [sp, 320]
	ldr	w0, [sp, 264]
	str	w0, [sp, 256]
	ldr	w0, [sp, 320]
	str	w0, [sp, 264]
.L24:
	ldr	w0, [sp, 336]
	cmp	w0, 1
	ble	.L26
	ldr	w1, [sp, 164]
	ldr	w0, [sp, 172]
	cmp	w1, w0
	bge	.L27
	ldr	w0, [sp, 164]
	str	w0, [sp, 320]
	ldr	w0, [sp, 172]
	str	w0, [sp, 164]
	ldr	w0, [sp, 320]
	str	w0, [sp, 172]
	ldr	w0, [sp, 160]
	str	w0, [sp, 320]
	ldr	w0, [sp, 168]
	str	w0, [sp, 160]
	ldr	w0, [sp, 320]
	str	w0, [sp, 168]
	b	.L26
.L27:
	ldr	w1, [sp, 164]
	ldr	w0, [sp, 172]
	cmp	w1, w0
	bne	.L26
	ldr	w1, [sp, 160]
	ldr	w0, [sp, 168]
	cmp	w1, w0
	ble	.L26
	ldr	w0, [sp, 164]
	str	w0, [sp, 320]
	ldr	w0, [sp, 172]
	str	w0, [sp, 164]
	ldr	w0, [sp, 320]
	str	w0, [sp, 172]
	ldr	w0, [sp, 160]
	str	w0, [sp, 320]
	ldr	w0, [sp, 168]
	str	w0, [sp, 160]
	ldr	w0, [sp, 320]
	str	w0, [sp, 168]
.L26:
	ldr	w0, [sp, 332]
	cmp	w0, 1
	ble	.L28
	ldr	w1, [sp, 148]
	ldr	w0, [sp, 156]
	cmp	w1, w0
	bge	.L29
	ldr	w0, [sp, 148]
	str	w0, [sp, 320]
	ldr	w0, [sp, 156]
	str	w0, [sp, 148]
	ldr	w0, [sp, 320]
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	str	w0, [sp, 320]
	ldr	w0, [sp, 152]
	str	w0, [sp, 144]
	ldr	w0, [sp, 320]
	str	w0, [sp, 152]
	b	.L28
.L29:
	ldr	w1, [sp, 148]
	ldr	w0, [sp, 156]
	cmp	w1, w0
	bne	.L28
	ldr	w1, [sp, 144]
	ldr	w0, [sp, 152]
	cmp	w1, w0
	ble	.L28
	ldr	w0, [sp, 148]
	str	w0, [sp, 320]
	ldr	w0, [sp, 156]
	str	w0, [sp, 148]
	ldr	w0, [sp, 320]
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	str	w0, [sp, 320]
	ldr	w0, [sp, 152]
	str	w0, [sp, 144]
	ldr	w0, [sp, 320]
	str	w0, [sp, 152]
.L28:
	ldr	w0, [sp, 328]
	cmp	w0, 1
	ble	.L30
	ldr	w1, [sp, 132]
	ldr	w0, [sp, 140]
	cmp	w1, w0
	bge	.L31
	ldr	w0, [sp, 132]
	str	w0, [sp, 320]
	ldr	w0, [sp, 140]
	str	w0, [sp, 132]
	ldr	w0, [sp, 320]
	str	w0, [sp, 140]
	ldr	w0, [sp, 128]
	str	w0, [sp, 320]
	ldr	w0, [sp, 136]
	str	w0, [sp, 128]
	ldr	w0, [sp, 320]
	str	w0, [sp, 136]
	b	.L30
.L31:
	ldr	w1, [sp, 132]
	ldr	w0, [sp, 140]
	cmp	w1, w0
	bne	.L30
	ldr	w1, [sp, 128]
	ldr	w0, [sp, 136]
	cmp	w1, w0
	ble	.L30
	ldr	w0, [sp, 132]
	str	w0, [sp, 320]
	ldr	w0, [sp, 140]
	str	w0, [sp, 132]
	ldr	w0, [sp, 320]
	str	w0, [sp, 140]
	ldr	w0, [sp, 128]
	str	w0, [sp, 320]
	ldr	w0, [sp, 136]
	str	w0, [sp, 128]
	ldr	w0, [sp, 320]
	str	w0, [sp, 136]
.L30:
	str	wzr, [sp, 376]
	b	.L32
.L37:
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 372]
	b	.L33
.L36:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 196
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L34
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	b	.L35
.L34:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 196
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L35
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 192
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L35
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
.L35:
	ldr	w0, [sp, 372]
	add	w0, w0, 1
	str	w0, [sp, 372]
.L33:
	ldr	w1, [sp, 372]
	ldr	w0, [sp, 348]
	cmp	w1, w0
	blt	.L36
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L32:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 348]
	cmp	w1, w0
	blt	.L37
	str	wzr, [sp, 376]
	b	.L38
.L43:
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 372]
	b	.L39
.L42:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 68
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L40
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	b	.L41
.L40:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 68
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L41
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x2, sp, 64
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L41
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	str	w0, [sp, 320]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w2, [sp, 320]
	str	w2, [x1, x0]
.L41:
	ldr	w0, [sp, 372]
	add	w0, w0, 1
	str	w0, [sp, 372]
.L39:
	ldr	w1, [sp, 372]
	ldr	w0, [sp, 324]
	cmp	w1, w0
	blt	.L42
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L38:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 324]
	cmp	w1, w0
	blt	.L43
	add	x0, sp, 24
	bl	gets
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	str	wzr, [sp, 376]
	b	.L44
.L45:
	ldr	w0, [sp, 312]
	add	w0, w0, 97
	ldr	w1, [sp, 316]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L44:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 368]
	cmp	w1, w0
	blt	.L45
	str	wzr, [sp, 376]
	b	.L46
.L47:
	ldr	w0, [sp, 304]
	add	w0, w0, 97
	ldr	w1, [sp, 308]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L46:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 364]
	cmp	w1, w0
	blt	.L47
	str	wzr, [sp, 376]
	b	.L48
.L49:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 288
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 292
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L48:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 360]
	cmp	w1, w0
	blt	.L49
	str	wzr, [sp, 376]
	b	.L50
.L51:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 272
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 276
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L50:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 356]
	cmp	w1, w0
	blt	.L51
	str	wzr, [sp, 376]
	b	.L52
.L53:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 256
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 260
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L52:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 352]
	cmp	w1, w0
	blt	.L53
	str	wzr, [sp, 376]
	b	.L54
.L55:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 192
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 196
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L54:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 348]
	cmp	w1, w0
	blt	.L55
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	str	wzr, [sp, 376]
	b	.L56
.L57:
	ldr	w0, [sp, 184]
	add	w0, w0, 97
	ldr	w1, [sp, 188]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L56:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 344]
	cmp	w1, w0
	blt	.L57
	str	wzr, [sp, 376]
	b	.L58
.L59:
	ldr	w0, [sp, 176]
	add	w0, w0, 97
	ldr	w1, [sp, 180]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L58:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 340]
	cmp	w1, w0
	blt	.L59
	str	wzr, [sp, 376]
	b	.L60
.L61:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 160
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 164
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L60:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 336]
	cmp	w1, w0
	blt	.L61
	str	wzr, [sp, 376]
	b	.L62
.L63:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 144
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 148
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L62:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 332]
	cmp	w1, w0
	blt	.L63
	str	wzr, [sp, 376]
	b	.L64
.L65:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 128
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 132
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L64:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 328]
	cmp	w1, w0
	blt	.L65
	str	wzr, [sp, 376]
	b	.L66
.L67:
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	add	w3, w0, 97
	ldrsw	x0, [sp, 376]
	lsl	x0, x0, 3
	add	x1, sp, 68
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
.L66:
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 324]
	cmp	w1, w0
	blt	.L67
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp], 384
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
