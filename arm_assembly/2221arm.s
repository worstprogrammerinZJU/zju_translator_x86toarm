	.text
	.p2align	2                               // -- Begin function stbi__idct_simd
	.type	stbi__idct_simd,@function
stbi__idct_simd:                        // @stbi__idct_simd
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1600
	sub	x8, x29, #24
	str	x8, [sp, #880]                  // 8-byte Folded Spill
	str	x0, [x8, #16]
	stur	w1, [x29, #-12]
	str	x2, [x8]
	mov	w8, #35796
	movk	w8, #16138, lsl #16
	fmov	s0, w8
	str	s0, [sp, #132]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, #33630
	movk	w8, #49132, lsl #16
	fmov	s0, w8
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	ldr	x4, [sp, #72]                   // 8-byte Folded Reload
	ldr	x5, [sp, #80]                   // 8-byte Folded Reload
	ldr	x6, [sp, #88]                   // 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	add	x7, x8, x9
	bl	_mm_setr_epi16
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	stur	w0, [x29, #-64]
	bl	stbi__f2f
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	mov	w8, #61205
	movk	w8, #16195, lsl #16
	fmov	s0, w8
	str	s0, [sp, #128]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #192]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #144]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #128]                  // 4-byte Folded Reload
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #152]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #160]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #128]                  // 4-byte Folded Reload
	str	x0, [sp, #120]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #120]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #168]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #176]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #128]                  // 4-byte Folded Reload
	str	x0, [sp, #136]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #132]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #184]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x3, [sp, #160]                  // 8-byte Folded Reload
	ldr	x4, [sp, #168]                  // 8-byte Folded Reload
	ldr	x5, [sp, #176]                  // 8-byte Folded Reload
	ldr	x6, [sp, #184]                  // 8-byte Folded Reload
	mov	x7, x0
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	bl	_mm_setr_epi16
	stur	w0, [x29, #-68]
	mov	w8, #33559
	movk	w8, #16278, lsl #16
	fmov	s0, w8
	str	s0, [sp, #320]                  // 4-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #200]                  // 8-byte Folded Spill
	mov	w8, #25815
	movk	w8, #48998, lsl #16
	fmov	s0, w8
	str	s0, [sp, #228]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #200]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #288]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #240]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #228]                  // 4-byte Folded Reload
	str	x0, [sp, #208]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #208]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #248]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #256]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #228]                  // 4-byte Folded Reload
	str	x0, [sp, #216]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #216]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #264]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #272]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #228]                  // 4-byte Folded Reload
	str	x0, [sp, #232]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #232]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #280]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x1, [sp, #240]                  // 8-byte Folded Reload
	ldr	x2, [sp, #248]                  // 8-byte Folded Reload
	ldr	x3, [sp, #256]                  // 8-byte Folded Reload
	ldr	x4, [sp, #264]                  // 8-byte Folded Reload
	ldr	x5, [sp, #272]                  // 8-byte Folded Reload
	ldr	x6, [sp, #280]                  // 8-byte Folded Reload
	mov	x7, x0
	ldr	x0, [sp, #288]                  // 8-byte Folded Reload
	bl	_mm_setr_epi16
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	stur	w0, [x29, #-72]
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #384]                  // 8-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #296]                  // 8-byte Folded Spill
	mov	w8, #1743
	movk	w8, #49188, lsl #16
	fmov	s0, w8
	str	s0, [sp, #324]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #296]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #336]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #344]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #324]                  // 4-byte Folded Reload
	str	x0, [sp, #304]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #304]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #352]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #360]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #324]                  // 4-byte Folded Reload
	str	x0, [sp, #312]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #312]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #368]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #320]                  // 4-byte Folded Reload
	str	x0, [sp, #376]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #324]                  // 4-byte Folded Reload
	str	x0, [sp, #328]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x8, [sp, #328]                  // 8-byte Folded Reload
	ldr	x1, [sp, #336]                  // 8-byte Folded Reload
	ldr	x2, [sp, #344]                  // 8-byte Folded Reload
	ldr	x3, [sp, #352]                  // 8-byte Folded Reload
	ldr	x4, [sp, #360]                  // 8-byte Folded Reload
	ldr	x5, [sp, #368]                  // 8-byte Folded Reload
	ldr	x6, [sp, #376]                  // 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #384]                  // 8-byte Folded Reload
	add	x7, x8, x9
	bl	_mm_setr_epi16
	stur	w0, [x29, #-76]
	mov	w8, #5310
	movk	w8, #49147, lsl #16
	fmov	s0, w8
	str	s0, [sp, #512]                  // 4-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #392]                  // 8-byte Folded Spill
	mov	w8, #58933
	movk	w8, #16024, lsl #16
	fmov	s0, w8
	str	s0, [sp, #420]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #392]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #480]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #432]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #420]                  // 4-byte Folded Reload
	str	x0, [sp, #400]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #400]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #440]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #448]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #420]                  // 4-byte Folded Reload
	str	x0, [sp, #408]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #408]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #456]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #464]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #420]                  // 4-byte Folded Reload
	str	x0, [sp, #424]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #424]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #472]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x1, [sp, #432]                  // 8-byte Folded Reload
	ldr	x2, [sp, #440]                  // 8-byte Folded Reload
	ldr	x3, [sp, #448]                  // 8-byte Folded Reload
	ldr	x4, [sp, #456]                  // 8-byte Folded Reload
	ldr	x5, [sp, #464]                  // 8-byte Folded Reload
	ldr	x6, [sp, #472]                  // 8-byte Folded Reload
	mov	x7, x0
	ldr	x0, [sp, #480]                  // 8-byte Folded Reload
	bl	_mm_setr_epi16
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	stur	w0, [x29, #-80]
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #576]                  // 8-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #488]                  // 8-byte Folded Spill
	mov	w8, #42828
	movk	w8, #16452, lsl #16
	fmov	s0, w8
	str	s0, [sp, #516]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #488]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #528]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #536]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #516]                  // 4-byte Folded Reload
	str	x0, [sp, #496]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #496]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #544]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #552]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #516]                  // 4-byte Folded Reload
	str	x0, [sp, #504]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #504]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #560]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #512]                  // 4-byte Folded Reload
	str	x0, [sp, #568]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #516]                  // 4-byte Folded Reload
	str	x0, [sp, #520]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x8, [sp, #520]                  // 8-byte Folded Reload
	ldr	x1, [sp, #528]                  // 8-byte Folded Reload
	ldr	x2, [sp, #536]                  // 8-byte Folded Reload
	ldr	x3, [sp, #544]                  // 8-byte Folded Reload
	ldr	x4, [sp, #552]                  // 8-byte Folded Reload
	ldr	x5, [sp, #560]                  // 8-byte Folded Reload
	ldr	x6, [sp, #568]                  // 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #576]                  // 8-byte Folded Reload
	add	x7, x8, x9
	bl	_mm_setr_epi16
	stur	w0, [x29, #-84]
	mov	w8, #50626
	movk	w8, #48839, lsl #16
	fmov	s0, w8
	str	s0, [sp, #704]                  // 4-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #584]                  // 8-byte Folded Spill
	mov	w8, #26193
	movk	w8, #16387, lsl #16
	fmov	s0, w8
	str	s0, [sp, #612]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #584]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #672]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #624]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #612]                  // 4-byte Folded Reload
	str	x0, [sp, #592]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #592]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #632]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #640]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #612]                  // 4-byte Folded Reload
	str	x0, [sp, #600]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #600]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #648]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #656]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #612]                  // 4-byte Folded Reload
	str	x0, [sp, #616]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #616]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #664]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x1, [sp, #624]                  // 8-byte Folded Reload
	ldr	x2, [sp, #632]                  // 8-byte Folded Reload
	ldr	x3, [sp, #640]                  // 8-byte Folded Reload
	ldr	x4, [sp, #648]                  // 8-byte Folded Reload
	ldr	x5, [sp, #656]                  // 8-byte Folded Reload
	ldr	x6, [sp, #664]                  // 8-byte Folded Reload
	mov	x7, x0
	ldr	x0, [sp, #672]                  // 8-byte Folded Reload
	bl	_mm_setr_epi16
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	stur	w0, [x29, #-88]
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #768]                  // 8-byte Folded Spill
	bl	stbi__f2f
	str	x0, [sp, #680]                  // 8-byte Folded Spill
	mov	w8, #11082
	movk	w8, #16320, lsl #16
	fmov	s0, w8
	str	s0, [sp, #708]                  // 4-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #680]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #720]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #728]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #708]                  // 4-byte Folded Reload
	str	x0, [sp, #688]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #688]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #736]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #744]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #708]                  // 4-byte Folded Reload
	str	x0, [sp, #696]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #696]                  // 8-byte Folded Reload
	add	x8, x0, x8
	str	x8, [sp, #752]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #704]                  // 4-byte Folded Reload
	str	x0, [sp, #760]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	s0, [sp, #708]                  // 4-byte Folded Reload
	str	x0, [sp, #712]                  // 8-byte Folded Spill
	bl	stbi__f2f
	ldr	x8, [sp, #712]                  // 8-byte Folded Reload
	ldr	x1, [sp, #720]                  // 8-byte Folded Reload
	ldr	x2, [sp, #728]                  // 8-byte Folded Reload
	ldr	x3, [sp, #736]                  // 8-byte Folded Reload
	ldr	x4, [sp, #744]                  // 8-byte Folded Reload
	ldr	x5, [sp, #752]                  // 8-byte Folded Reload
	ldr	x6, [sp, #760]                  // 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #768]                  // 8-byte Folded Reload
	add	x7, x8, x9
	bl	_mm_setr_epi16
	stur	w0, [x29, #-92]
	mov	w0, #512
	bl	_mm_set1_epi32
	stur	w0, [x29, #-96]
	mov	w0, #16842752
	bl	_mm_set1_epi32
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-100]
	ldr	x0, [x8]
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-28]
	ldr	x8, [x8]
	add	x0, x8, #16
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-32]
	ldr	x8, [x8]
	add	x0, x8, #32
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-36]
	ldr	x8, [x8]
	add	x0, x8, #48
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-40]
	ldr	x8, [x8]
	add	x0, x8, #64
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-44]
	ldr	x8, [x8]
	add	x0, x8, #80
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-48]
	ldr	x8, [x8]
	add	x0, x8, #96
	bl	_mm_load_si128
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	stur	w0, [x29, #-52]
	ldr	x8, [x8]
	add	x0, x8, #112
	bl	_mm_load_si128
	stur	w0, [x29, #-56]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-52]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-104]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-52]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-108]
	ldur	w0, [x29, #-104]
	ldur	w1, [x29, #-64]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-112]
	ldur	w0, [x29, #-108]
	ldur	w1, [x29, #-64]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-116]
	ldur	w0, [x29, #-104]
	ldur	w1, [x29, #-68]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-120]
	ldur	w0, [x29, #-108]
	ldur	w1, [x29, #-68]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-124]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	_mm_add_epi16
	stur	w0, [x29, #-128]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	_mm_sub_epi16
	stur	w0, [x29, #-132]
	bl	_mm_setzero_si128
	ldur	w1, [x29, #-128]
	bl	_mm_unpacklo_epi16
	mov	w1, #4
	str	w1, [sp, #816]                  // 4-byte Folded Spill
	bl	_mm_srai_epi32
	stur	w0, [x29, #-136]
	bl	_mm_setzero_si128
	ldur	w1, [x29, #-128]
	bl	_mm_unpackhi_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	stur	w0, [x29, #-140]
	bl	_mm_setzero_si128
	ldur	w1, [x29, #-132]
	bl	_mm_unpacklo_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	stur	w0, [x29, #-144]
	bl	_mm_setzero_si128
	ldur	w1, [x29, #-132]
	bl	_mm_unpackhi_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	stur	w0, [x29, #-148]
	ldur	w0, [x29, #-136]
	ldur	w1, [x29, #-120]
	bl	_mm_add_epi32
	stur	w0, [x29, #-152]
	ldur	w0, [x29, #-140]
	ldur	w1, [x29, #-124]
	bl	_mm_add_epi32
	stur	w0, [x29, #-156]
	ldur	w0, [x29, #-136]
	ldur	w1, [x29, #-120]
	bl	_mm_sub_epi32
	stur	w0, [x29, #-160]
	ldur	w0, [x29, #-140]
	ldur	w1, [x29, #-124]
	bl	_mm_sub_epi32
	stur	w0, [x29, #-164]
	ldur	w0, [x29, #-144]
	ldur	w1, [x29, #-112]
	bl	_mm_add_epi32
	stur	w0, [x29, #-168]
	ldur	w0, [x29, #-148]
	ldur	w1, [x29, #-116]
	bl	_mm_add_epi32
	stur	w0, [x29, #-172]
	ldur	w0, [x29, #-144]
	ldur	w1, [x29, #-112]
	bl	_mm_sub_epi32
	stur	w0, [x29, #-176]
	ldur	w0, [x29, #-148]
	ldur	w1, [x29, #-116]
	bl	_mm_sub_epi32
	stur	w0, [x29, #-180]
	ldur	w0, [x29, #-56]
	ldur	w1, [x29, #-40]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-184]
	ldur	w0, [x29, #-56]
	ldur	w1, [x29, #-40]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-188]
	ldur	w0, [x29, #-184]
	ldur	w1, [x29, #-80]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-192]
	ldur	w0, [x29, #-188]
	ldur	w1, [x29, #-80]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-196]
	ldur	w0, [x29, #-184]
	ldur	w1, [x29, #-84]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-200]
	ldur	w0, [x29, #-188]
	ldur	w1, [x29, #-84]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-204]
	ldur	w0, [x29, #-48]
	ldur	w1, [x29, #-32]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-208]
	ldur	w0, [x29, #-48]
	ldur	w1, [x29, #-32]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-212]
	ldur	w0, [x29, #-208]
	ldur	w1, [x29, #-88]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-216]
	ldur	w0, [x29, #-212]
	ldur	w1, [x29, #-88]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-220]
	ldur	w0, [x29, #-208]
	ldur	w1, [x29, #-92]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-224]
	ldur	w0, [x29, #-212]
	ldur	w1, [x29, #-92]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-228]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-56]
	bl	_mm_add_epi16
	stur	w0, [x29, #-232]
	ldur	w0, [x29, #-40]
	ldur	w1, [x29, #-48]
	bl	_mm_add_epi16
	stur	w0, [x29, #-236]
	ldur	w0, [x29, #-232]
	ldur	w1, [x29, #-236]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-240]
	ldur	w0, [x29, #-232]
	ldur	w1, [x29, #-236]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-244]
	ldur	w0, [x29, #-240]
	ldur	w1, [x29, #-72]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-248]
	ldur	w0, [x29, #-244]
	ldur	w1, [x29, #-72]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-252]
	ldur	w0, [x29, #-240]
	ldur	w1, [x29, #-76]
	bl	_mm_madd_epi16
	stur	w0, [x29, #-256]
	ldur	w0, [x29, #-244]
	ldur	w1, [x29, #-76]
	bl	_mm_madd_epi16
	str	w0, [sp, #1340]
	ldur	w0, [x29, #-192]
	ldur	w1, [x29, #-248]
	bl	_mm_add_epi32
	str	w0, [sp, #1336]
	ldur	w0, [x29, #-196]
	ldur	w1, [x29, #-252]
	bl	_mm_add_epi32
	str	w0, [sp, #1332]
	ldur	w0, [x29, #-216]
	ldur	w1, [x29, #-256]
	bl	_mm_add_epi32
	str	w0, [sp, #1328]
	ldur	w0, [x29, #-220]
	ldr	w1, [sp, #1340]
	bl	_mm_add_epi32
	str	w0, [sp, #1324]
	ldur	w0, [x29, #-200]
	ldur	w1, [x29, #-256]
	bl	_mm_add_epi32
	str	w0, [sp, #1320]
	ldur	w0, [x29, #-204]
	ldr	w1, [sp, #1340]
	bl	_mm_add_epi32
	str	w0, [sp, #1316]
	ldur	w0, [x29, #-224]
	ldur	w1, [x29, #-248]
	bl	_mm_add_epi32
	str	w0, [sp, #1312]
	ldur	w0, [x29, #-228]
	ldur	w1, [x29, #-252]
	bl	_mm_add_epi32
	str	w0, [sp, #1308]
	ldur	w0, [x29, #-152]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1304]
	ldur	w0, [x29, #-156]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1300]
	ldr	w0, [sp, #1304]
	ldr	w1, [sp, #1312]
	bl	_mm_add_epi32
	str	w0, [sp, #1296]
	ldr	w0, [sp, #1300]
	ldr	w1, [sp, #1308]
	bl	_mm_add_epi32
	str	w0, [sp, #1292]
	ldr	w0, [sp, #1304]
	ldr	w1, [sp, #1312]
	bl	_mm_sub_epi32
	str	w0, [sp, #1288]
	ldr	w0, [sp, #1300]
	ldr	w1, [sp, #1308]
	bl	_mm_sub_epi32
	str	w0, [sp, #1284]
	ldr	w0, [sp, #1296]
	mov	w1, #10
	str	w1, [sp, #808]                  // 4-byte Folded Spill
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #780]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1292]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #780]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldr	w0, [sp, #1288]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #784]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1284]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #784]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-56]
	ldur	w0, [x29, #-168]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1280]
	ldur	w0, [x29, #-172]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1276]
	ldr	w0, [sp, #1280]
	ldr	w1, [sp, #1320]
	bl	_mm_add_epi32
	str	w0, [sp, #1272]
	ldr	w0, [sp, #1276]
	ldr	w1, [sp, #1316]
	bl	_mm_add_epi32
	str	w0, [sp, #1268]
	ldr	w0, [sp, #1280]
	ldr	w1, [sp, #1320]
	bl	_mm_sub_epi32
	str	w0, [sp, #1264]
	ldr	w0, [sp, #1276]
	ldr	w1, [sp, #1316]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #1260]
	ldr	w0, [sp, #1272]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #788]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1268]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #788]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	stur	w0, [x29, #-32]
	ldr	w0, [sp, #1264]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #792]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1260]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #792]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-52]
	ldur	w0, [x29, #-176]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1256]
	ldur	w0, [x29, #-180]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1252]
	ldr	w0, [sp, #1256]
	ldr	w1, [sp, #1328]
	bl	_mm_add_epi32
	str	w0, [sp, #1248]
	ldr	w0, [sp, #1252]
	ldr	w1, [sp, #1324]
	bl	_mm_add_epi32
	str	w0, [sp, #1244]
	ldr	w0, [sp, #1256]
	ldr	w1, [sp, #1328]
	bl	_mm_sub_epi32
	str	w0, [sp, #1240]
	ldr	w0, [sp, #1252]
	ldr	w1, [sp, #1324]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #1236]
	ldr	w0, [sp, #1248]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #796]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1244]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #796]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	stur	w0, [x29, #-36]
	ldr	w0, [sp, #1240]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #800]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1236]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #800]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-48]
	ldur	w0, [x29, #-160]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1232]
	ldur	w0, [x29, #-164]
	ldur	w1, [x29, #-96]
	bl	_mm_add_epi32
	str	w0, [sp, #1228]
	ldr	w0, [sp, #1232]
	ldr	w1, [sp, #1336]
	bl	_mm_add_epi32
	str	w0, [sp, #1224]
	ldr	w0, [sp, #1228]
	ldr	w1, [sp, #1332]
	bl	_mm_add_epi32
	str	w0, [sp, #1220]
	ldr	w0, [sp, #1232]
	ldr	w1, [sp, #1336]
	bl	_mm_sub_epi32
	str	w0, [sp, #1216]
	ldr	w0, [sp, #1228]
	ldr	w1, [sp, #1332]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #1212]
	ldr	w0, [sp, #1224]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #804]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1220]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #804]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	stur	w0, [x29, #-40]
	ldr	w0, [sp, #1216]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #808]                  // 4-byte Folded Reload
	str	w0, [sp, #812]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1212]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #812]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-44]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-44]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-44]
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-48]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-32]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-48]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-48]
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-52]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-36]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-52]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-40]
	ldur	w1, [x29, #-56]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-40]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-56]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-56]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-36]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-36]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-36]
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-40]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-32]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-40]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-40]
	ldur	w8, [x29, #-44]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-52]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-44]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-52]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-48]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-48]
	ldur	w1, [x29, #-56]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-48]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-56]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-56]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-32]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-32]
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-40]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-36]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-40]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-40]
	ldur	w8, [x29, #-44]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-48]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-44]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-48]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-48]
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-60]
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-56]
	bl	_mm_unpacklo_epi16
	stur	w0, [x29, #-52]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-56]
	bl	_mm_unpackhi_epi16
	stur	w0, [x29, #-56]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-52]
	bl	_mm_unpacklo_epi16
	str	w0, [sp, #1208]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-52]
	bl	_mm_unpackhi_epi16
	str	w0, [sp, #1204]
	ldr	w0, [sp, #1208]
	ldur	w1, [x29, #-64]
	bl	_mm_madd_epi16
	str	w0, [sp, #1200]
	ldr	w0, [sp, #1204]
	ldur	w1, [x29, #-64]
	bl	_mm_madd_epi16
	str	w0, [sp, #1196]
	ldr	w0, [sp, #1208]
	ldur	w1, [x29, #-68]
	bl	_mm_madd_epi16
	str	w0, [sp, #1192]
	ldr	w0, [sp, #1204]
	ldur	w1, [x29, #-68]
	bl	_mm_madd_epi16
	str	w0, [sp, #1188]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	_mm_add_epi16
	str	w0, [sp, #1184]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	_mm_sub_epi16
	str	w0, [sp, #1180]
	bl	_mm_setzero_si128
	ldr	w1, [sp, #1184]
	bl	_mm_unpacklo_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	str	w0, [sp, #1176]
	bl	_mm_setzero_si128
	ldr	w1, [sp, #1184]
	bl	_mm_unpackhi_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	str	w0, [sp, #1172]
	bl	_mm_setzero_si128
	ldr	w1, [sp, #1180]
	bl	_mm_unpacklo_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	str	w0, [sp, #1168]
	bl	_mm_setzero_si128
	ldr	w1, [sp, #1180]
	bl	_mm_unpackhi_epi16
	ldr	w1, [sp, #816]                  // 4-byte Folded Reload
	bl	_mm_srai_epi32
	str	w0, [sp, #1164]
	ldr	w0, [sp, #1176]
	ldr	w1, [sp, #1192]
	bl	_mm_add_epi32
	str	w0, [sp, #1160]
	ldr	w0, [sp, #1172]
	ldr	w1, [sp, #1188]
	bl	_mm_add_epi32
	str	w0, [sp, #1156]
	ldr	w0, [sp, #1176]
	ldr	w1, [sp, #1192]
	bl	_mm_sub_epi32
	str	w0, [sp, #1152]
	ldr	w0, [sp, #1172]
	ldr	w1, [sp, #1188]
	bl	_mm_sub_epi32
	str	w0, [sp, #1148]
	ldr	w0, [sp, #1168]
	ldr	w1, [sp, #1200]
	bl	_mm_add_epi32
	str	w0, [sp, #1144]
	ldr	w0, [sp, #1164]
	ldr	w1, [sp, #1196]
	bl	_mm_add_epi32
	str	w0, [sp, #1140]
	ldr	w0, [sp, #1168]
	ldr	w1, [sp, #1200]
	bl	_mm_sub_epi32
	str	w0, [sp, #1136]
	ldr	w0, [sp, #1164]
	ldr	w1, [sp, #1196]
	bl	_mm_sub_epi32
	str	w0, [sp, #1132]
	ldur	w0, [x29, #-56]
	ldur	w1, [x29, #-40]
	bl	_mm_unpacklo_epi16
	str	w0, [sp, #1128]
	ldur	w0, [x29, #-56]
	ldur	w1, [x29, #-40]
	bl	_mm_unpackhi_epi16
	str	w0, [sp, #1124]
	ldr	w0, [sp, #1128]
	ldur	w1, [x29, #-80]
	bl	_mm_madd_epi16
	str	w0, [sp, #1120]
	ldr	w0, [sp, #1124]
	ldur	w1, [x29, #-80]
	bl	_mm_madd_epi16
	str	w0, [sp, #1116]
	ldr	w0, [sp, #1128]
	ldur	w1, [x29, #-84]
	bl	_mm_madd_epi16
	str	w0, [sp, #1112]
	ldr	w0, [sp, #1124]
	ldur	w1, [x29, #-84]
	bl	_mm_madd_epi16
	str	w0, [sp, #1108]
	ldur	w0, [x29, #-48]
	ldur	w1, [x29, #-32]
	bl	_mm_unpacklo_epi16
	str	w0, [sp, #1104]
	ldur	w0, [x29, #-48]
	ldur	w1, [x29, #-32]
	bl	_mm_unpackhi_epi16
	str	w0, [sp, #1100]
	ldr	w0, [sp, #1104]
	ldur	w1, [x29, #-88]
	bl	_mm_madd_epi16
	str	w0, [sp, #1096]
	ldr	w0, [sp, #1100]
	ldur	w1, [x29, #-88]
	bl	_mm_madd_epi16
	str	w0, [sp, #1092]
	ldr	w0, [sp, #1104]
	ldur	w1, [x29, #-92]
	bl	_mm_madd_epi16
	str	w0, [sp, #1088]
	ldr	w0, [sp, #1100]
	ldur	w1, [x29, #-92]
	bl	_mm_madd_epi16
	str	w0, [sp, #1084]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-56]
	bl	_mm_add_epi16
	str	w0, [sp, #1080]
	ldur	w0, [x29, #-40]
	ldur	w1, [x29, #-48]
	bl	_mm_add_epi16
	str	w0, [sp, #1076]
	ldr	w0, [sp, #1080]
	ldr	w1, [sp, #1076]
	bl	_mm_unpacklo_epi16
	str	w0, [sp, #1072]
	ldr	w0, [sp, #1080]
	ldr	w1, [sp, #1076]
	bl	_mm_unpackhi_epi16
	str	w0, [sp, #1068]
	ldr	w0, [sp, #1072]
	ldur	w1, [x29, #-72]
	bl	_mm_madd_epi16
	str	w0, [sp, #1064]
	ldr	w0, [sp, #1068]
	ldur	w1, [x29, #-72]
	bl	_mm_madd_epi16
	str	w0, [sp, #1060]
	ldr	w0, [sp, #1072]
	ldur	w1, [x29, #-76]
	bl	_mm_madd_epi16
	str	w0, [sp, #1056]
	ldr	w0, [sp, #1068]
	ldur	w1, [x29, #-76]
	bl	_mm_madd_epi16
	str	w0, [sp, #1052]
	ldr	w0, [sp, #1120]
	ldr	w1, [sp, #1064]
	bl	_mm_add_epi32
	str	w0, [sp, #1048]
	ldr	w0, [sp, #1116]
	ldr	w1, [sp, #1060]
	bl	_mm_add_epi32
	str	w0, [sp, #1044]
	ldr	w0, [sp, #1096]
	ldr	w1, [sp, #1056]
	bl	_mm_add_epi32
	str	w0, [sp, #1040]
	ldr	w0, [sp, #1092]
	ldr	w1, [sp, #1052]
	bl	_mm_add_epi32
	str	w0, [sp, #1036]
	ldr	w0, [sp, #1112]
	ldr	w1, [sp, #1056]
	bl	_mm_add_epi32
	str	w0, [sp, #1032]
	ldr	w0, [sp, #1108]
	ldr	w1, [sp, #1052]
	bl	_mm_add_epi32
	str	w0, [sp, #1028]
	ldr	w0, [sp, #1088]
	ldr	w1, [sp, #1064]
	bl	_mm_add_epi32
	str	w0, [sp, #1024]
	ldr	w0, [sp, #1084]
	ldr	w1, [sp, #1060]
	bl	_mm_add_epi32
	str	w0, [sp, #1020]
	ldr	w0, [sp, #1160]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #1016]
	ldr	w0, [sp, #1156]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #1012]
	ldr	w0, [sp, #1016]
	ldr	w1, [sp, #1024]
	bl	_mm_add_epi32
	str	w0, [sp, #1008]
	ldr	w0, [sp, #1012]
	ldr	w1, [sp, #1020]
	bl	_mm_add_epi32
	str	w0, [sp, #1004]
	ldr	w0, [sp, #1016]
	ldr	w1, [sp, #1024]
	bl	_mm_sub_epi32
	str	w0, [sp, #1000]
	ldr	w0, [sp, #1012]
	ldr	w1, [sp, #1020]
	bl	_mm_sub_epi32
	str	w0, [sp, #996]
	ldr	w0, [sp, #1008]
	mov	w1, #17
	str	w1, [sp, #848]                  // 4-byte Folded Spill
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #820]                  // 4-byte Folded Spill
	ldr	w0, [sp, #1004]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #820]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldr	w0, [sp, #1000]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #824]                  // 4-byte Folded Spill
	ldr	w0, [sp, #996]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #824]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-56]
	ldr	w0, [sp, #1144]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #992]
	ldr	w0, [sp, #1140]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #988]
	ldr	w0, [sp, #992]
	ldr	w1, [sp, #1032]
	bl	_mm_add_epi32
	str	w0, [sp, #984]
	ldr	w0, [sp, #988]
	ldr	w1, [sp, #1028]
	bl	_mm_add_epi32
	str	w0, [sp, #980]
	ldr	w0, [sp, #992]
	ldr	w1, [sp, #1032]
	bl	_mm_sub_epi32
	str	w0, [sp, #976]
	ldr	w0, [sp, #988]
	ldr	w1, [sp, #1028]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #972]
	ldr	w0, [sp, #984]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #828]                  // 4-byte Folded Spill
	ldr	w0, [sp, #980]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #828]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	stur	w0, [x29, #-32]
	ldr	w0, [sp, #976]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #832]                  // 4-byte Folded Spill
	ldr	w0, [sp, #972]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #832]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-52]
	ldr	w0, [sp, #1136]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #968]
	ldr	w0, [sp, #1132]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #964]
	ldr	w0, [sp, #968]
	ldr	w1, [sp, #1040]
	bl	_mm_add_epi32
	str	w0, [sp, #960]
	ldr	w0, [sp, #964]
	ldr	w1, [sp, #1036]
	bl	_mm_add_epi32
	str	w0, [sp, #956]
	ldr	w0, [sp, #968]
	ldr	w1, [sp, #1040]
	bl	_mm_sub_epi32
	str	w0, [sp, #952]
	ldr	w0, [sp, #964]
	ldr	w1, [sp, #1036]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #948]
	ldr	w0, [sp, #960]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #836]                  // 4-byte Folded Spill
	ldr	w0, [sp, #956]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #836]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	stur	w0, [x29, #-36]
	ldr	w0, [sp, #952]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #840]                  // 4-byte Folded Spill
	ldr	w0, [sp, #948]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #840]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-48]
	ldr	w0, [sp, #1152]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #944]
	ldr	w0, [sp, #1148]
	ldur	w1, [x29, #-100]
	bl	_mm_add_epi32
	str	w0, [sp, #940]
	ldr	w0, [sp, #944]
	ldr	w1, [sp, #1048]
	bl	_mm_add_epi32
	str	w0, [sp, #936]
	ldr	w0, [sp, #940]
	ldr	w1, [sp, #1044]
	bl	_mm_add_epi32
	str	w0, [sp, #932]
	ldr	w0, [sp, #944]
	ldr	w1, [sp, #1048]
	bl	_mm_sub_epi32
	str	w0, [sp, #928]
	ldr	w0, [sp, #940]
	ldr	w1, [sp, #1044]
	bl	_mm_sub_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #924]
	ldr	w0, [sp, #936]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #844]                  // 4-byte Folded Spill
	ldr	w0, [sp, #932]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #844]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	stur	w0, [x29, #-40]
	ldr	w0, [sp, #928]
	bl	_mm_srai_epi32
	ldr	w1, [sp, #848]                  // 4-byte Folded Reload
	str	w0, [sp, #852]                  // 4-byte Folded Spill
	ldr	w0, [sp, #924]
	bl	_mm_srai_epi32
	mov	w1, w0
	ldr	w0, [sp, #852]                  // 4-byte Folded Reload
	bl	_mm_packs_epi32
	stur	w0, [x29, #-44]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	bl	_mm_packus_epi16
	str	w0, [sp, #920]
	ldur	w0, [x29, #-36]
	ldur	w1, [x29, #-40]
	bl	_mm_packus_epi16
	str	w0, [sp, #916]
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-48]
	bl	_mm_packus_epi16
	str	w0, [sp, #912]
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-56]
	bl	_mm_packus_epi16
	str	w0, [sp, #908]
	ldr	w8, [sp, #920]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #920]
	ldr	w1, [sp, #912]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #920]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #912]
	bl	_mm_unpackhi_epi8
	str	w0, [sp, #912]
	ldr	w8, [sp, #916]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #916]
	ldr	w1, [sp, #908]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #916]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #908]
	bl	_mm_unpackhi_epi8
	str	w0, [sp, #908]
	ldr	w8, [sp, #920]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #920]
	ldr	w1, [sp, #916]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #920]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #916]
	bl	_mm_unpackhi_epi8
	str	w0, [sp, #916]
	ldr	w8, [sp, #912]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #912]
	ldr	w1, [sp, #908]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #912]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #908]
	bl	_mm_unpackhi_epi8
	str	w0, [sp, #908]
	ldr	w8, [sp, #920]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #920]
	ldr	w1, [sp, #912]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #920]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #912]
	bl	_mm_unpackhi_epi8
	str	w0, [sp, #912]
	ldr	w8, [sp, #916]
	stur	w8, [x29, #-60]
	ldr	w0, [sp, #916]
	ldr	w1, [sp, #908]
	bl	_mm_unpacklo_epi8
	str	w0, [sp, #916]
	ldur	w0, [x29, #-60]
	ldr	w1, [sp, #908]
	bl	_mm_unpackhi_epi8
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	str	w0, [sp, #908]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #920]
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #856]                  // 8-byte Folded Spill
	ldr	w0, [sp, #920]
	mov	w1, #78
	str	w1, [sp, #892]                  // 4-byte Folded Spill
	bl	_mm_shuffle_epi32
	mov	w1, w0
	ldr	x0, [sp, #856]                  // 8-byte Folded Reload
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #912]
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldr	w1, [sp, #892]                  // 4-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #864]                  // 8-byte Folded Spill
	ldr	w0, [sp, #912]
	bl	_mm_shuffle_epi32
	mov	w1, w0
	ldr	x0, [sp, #864]                  // 8-byte Folded Reload
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #916]
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldr	w1, [sp, #892]                  // 4-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #872]                  // 8-byte Folded Spill
	ldr	w0, [sp, #916]
	bl	_mm_shuffle_epi32
	mov	w1, w0
	ldr	x0, [sp, #872]                  // 8-byte Folded Reload
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #908]
	bl	_mm_storel_epi64
	ldr	x8, [sp, #880]                  // 8-byte Folded Reload
	ldr	w1, [sp, #892]                  // 4-byte Folded Reload
	ldursw	x10, [x29, #-12]
	ldr	x9, [x8, #16]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #896]                  // 8-byte Folded Spill
	ldr	w0, [sp, #908]
	bl	_mm_shuffle_epi32
	mov	w1, w0
	ldr	x0, [sp, #896]                  // 8-byte Folded Reload
	bl	_mm_storel_epi64
	add	sp, sp, #1600
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stbi__idct_simd, .Lfunc_end0-stbi__idct_simd
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__idct_simd
	.addrsig_sym _mm_setr_epi16
	.addrsig_sym stbi__f2f
	.addrsig_sym _mm_set1_epi32
	.addrsig_sym _mm_load_si128
	.addrsig_sym _mm_unpacklo_epi16
	.addrsig_sym _mm_unpackhi_epi16
	.addrsig_sym _mm_madd_epi16
	.addrsig_sym _mm_add_epi16
	.addrsig_sym _mm_sub_epi16
	.addrsig_sym _mm_srai_epi32
	.addrsig_sym _mm_setzero_si128
	.addrsig_sym _mm_add_epi32
	.addrsig_sym _mm_sub_epi32
	.addrsig_sym _mm_packs_epi32
	.addrsig_sym _mm_packus_epi16
	.addrsig_sym _mm_unpacklo_epi8
	.addrsig_sym _mm_unpackhi_epi8
	.addrsig_sym _mm_storel_epi64
	.addrsig_sym _mm_shuffle_epi32