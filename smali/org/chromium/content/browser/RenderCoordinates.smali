.class public Lorg/chromium/content/browser/RenderCoordinates;
.super Ljava/lang/Object;
.source "RenderCoordinates.java"


# instance fields
.field private mContentHeightCss:F

.field private mContentOffsetYPix:F

.field private mContentWidthCss:F

.field private mDeviceScaleFactor:F

.field private mHasFrameInfo:Z

.field private mLastFrameViewportHeightCss:F

.field private mLastFrameViewportWidthCss:F

.field private mMaxPageScaleFactor:F

.field private mMinPageScaleFactor:F

.field private mPageScaleFactor:F

.field private mScrollXCss:F

.field private mScrollYCss:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    .line 33
    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    .line 34
    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    .line 95
    return-void
.end method


# virtual methods
.method public fromDipToPix(F)F
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public fromLocalCssToPix(F)F
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public fromPixToDip(F)F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    div-float v0, p1, v0

    return v0
.end method

.method public fromPixToLocalCss(F)F
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    iget v1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    mul-float/2addr v0, v1

    div-float v0, p1, v0

    return v0
.end method

.method public getContentHeightCss()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    return v0
.end method

.method public getContentHeightPix()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getContentHeightPixInt()I
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentOffsetYPix()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    return v0
.end method

.method public getContentWidthCss()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    return v0
.end method

.method public getContentWidthPix()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getContentWidthPixInt()I
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getDeviceScaleFactor()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    return v0
.end method

.method public getLastFrameViewportHeightPix()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getLastFrameViewportHeightPixInt()I
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLastFrameViewportWidthPix()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getLastFrameViewportWidthPixInt()I
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMaxPageScaleFactor()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    return v0
.end method

.method public getMinPageScaleFactor()F
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    return v0
.end method

.method public getPageScaleFactor()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    return v0
.end method

.method public getScrollXPix()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getScrollXPixInt()I
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    return v0
.end method

.method public getScrollYPix()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getScrollYPixInt()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hasFrameInfo()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mHasFrameInfo:Z

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mHasFrameInfo:Z

    .line 48
    return-void
.end method

.method setDeviceScaleFactor(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    .line 57
    return-void
.end method

.method public setFrameInfoForTest(FF)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    .line 87
    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    .line 88
    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    .line 89
    return-void
.end method

.method updateContentSizeCss(FF)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    .line 52
    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    .line 53
    return-void
.end method

.method updateFrameInfo(FFFFFFFFFF)V
    .locals 1

    .prologue
    .line 65
    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    .line 66
    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    .line 67
    iput p7, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    .line 68
    iput p8, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    .line 69
    iput p9, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    .line 70
    iput p10, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    .line 72
    invoke-virtual {p0, p3, p4}, Lorg/chromium/content/browser/RenderCoordinates;->updateContentSizeCss(FF)V

    .line 73
    iput p5, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportWidthCss:F

    .line 74
    iput p6, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportHeightCss:F

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mHasFrameInfo:Z

    .line 77
    return-void
.end method
