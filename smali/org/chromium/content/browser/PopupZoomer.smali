.class Lorg/chromium/content/browser/PopupZoomer;
.super Landroid/view/View;
.source "PopupZoomer.java"


# static fields
.field private static sOverlayCornerRadius:F

.field private static sOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private static sOverlayPadding:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mBottomExtrusion:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftExtrusion:F

.field private mMaxScrollX:F

.field private mMaxScrollY:F

.field private mMinScrollX:F

.field private mMinScrollY:F

.field private mNeedsToInitDimensions:Z

.field private mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

.field private mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

.field private mPopupScrollX:F

.field private mPopupScrollY:F

.field private mRightExtrusion:F

.field private mScale:F

.field private mShiftX:F

.field private mShiftY:F

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowing:Z

.field private mTargetBounds:Landroid/graphics/Rect;

.field private mTimeLeft:J

.field private mTopExtrusion:F

.field private final mTouch:Landroid/graphics/PointF;

.field private mViewClipRect:Landroid/graphics/RectF;

.field private mZoomedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    .line 68
    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    .line 80
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 84
    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 85
    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    .line 90
    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 106
    iput v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    iput v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    .line 179
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/PopupZoomer;->setFocusable(Z)V

    .line 181
    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/PopupZoomer;->setFocusableInTouchMode(Z)V

    .line 183
    new-instance v0, Lorg/chromium/content/browser/PopupZoomer$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$1;-><init>(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 230
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/PopupZoomer;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/PopupZoomer;FF)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->scroll(FF)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/PopupZoomer;FF)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static constrain(FFF)F
    .locals 1

    .prologue
    .line 164
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0

    .prologue
    .line 168
    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private convertTouchPoint(FF)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 529
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    sub-float v0, p1, v0

    .line 530
    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    sub-float v1, p2, v1

    .line 531
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 532
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 533
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static getOverlayCornerRadius(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 132
    sget v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/content/R$dimen;->link_preview_overlay_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    sget v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    return v0

    .line 137
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr.PopupZoomer"

    const-string/jumbo v1, "No corner radius resource for PopupZoomer overlay found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    goto :goto_0
.end method

.method private static getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/content/R$drawable;->ondemand_overlay:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    .line 158
    sget-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 160
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr.PopupZoomer"

    const-string/jumbo v1, "No drawable resource for PopupZoomer overlay found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private hideImmediately()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 297
    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerHidden(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 302
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 305
    return-void
.end method

.method private initDimensions()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, 0x41c80000    # 25.0f

    .line 327
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    .line 332
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 333
    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 334
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 335
    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 336
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    .line 337
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v0

    .line 338
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v1

    .line 340
    new-instance v2, Landroid/graphics/RectF;

    add-int/lit8 v3, v0, -0x19

    int-to-float v3, v3

    add-int/lit8 v4, v1, -0x19

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    .line 348
    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 349
    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 355
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_8

    .line 356
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 357
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 358
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 364
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    .line 365
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v5, v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 366
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 367
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 376
    :cond_3
    :goto_2
    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    iput v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    .line 377
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 378
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    .line 380
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 381
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    .line 383
    :cond_5
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 384
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    .line 386
    :cond_6
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 387
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    .line 390
    :cond_7
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 392
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    .line 393
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    .line 394
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    .line 395
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    .line 398
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    div-float/2addr v0, v1

    add-float/2addr v0, v7

    .line 400
    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    div-float/2addr v1, v2

    add-float/2addr v1, v7

    .line 403
    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    sub-float/2addr v2, v3

    .line 404
    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    iget v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    sub-float/2addr v3, v4

    .line 405
    mul-float/2addr v0, v2

    neg-float v0, v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 406
    mul-float v0, v3, v1

    neg-float v0, v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 408
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 409
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 412
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    goto/16 :goto_0

    .line 359
    :cond_8
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-int/lit8 v3, v0, -0x19

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 360
    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 361
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 362
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 368
    :cond_9
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v2, v1, -0x19

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 369
    add-int/lit8 v0, v1, -0x19

    int-to-float v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 370
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 371
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2
.end method

.method private isTouchOutsideArea(FF)Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scroll(FF)V
    .locals 3

    .prologue
    .line 271
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 272
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v0, p2

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 273
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 274
    return-void
.end method

.method private setTargetBounds(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    .line 324
    return-void
.end method

.method private startAnimation(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 277
    iput-boolean v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 278
    iput-boolean p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 279
    iput-wide v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 280
    if-eqz p1, :cond_1

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 282
    iput-boolean v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    .line 283
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 291
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    .line 292
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 293
    return-void

    .line 287
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 289
    iget-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    goto :goto_0
.end method


# virtual methods
.method protected acceptZeroSizeView()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public hide(Z)V
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 518
    :cond_0
    if-eqz p1, :cond_1

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0

    .line 521
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 424
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->acceptZeroSizeView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    if-eqz v0, :cond_3

    .line 428
    iput-boolean v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    .line 429
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->initDimensions()V

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    .line 436
    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    .line 437
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_4

    .line 438
    iput-boolean v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 439
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 440
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0

    .line 444
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 449
    :cond_5
    iget-boolean v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-eqz v1, :cond_6

    .line 450
    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 459
    :goto_1
    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 466
    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v2, v4, v2

    add-float/2addr v1, v2

    .line 471
    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    neg-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v2, v3

    .line 472
    iget v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    neg-float v3, v3

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v3, v4

    .line 475
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 476
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 477
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 478
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 479
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 484
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 485
    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 486
    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 488
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sget-object v3, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    sget-object v4, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    sget-object v5, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    sget-object v6, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 495
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0xff

    invoke-static {v0, v7, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(III)I

    move-result v0

    .line 496
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 497
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 452
    :cond_6
    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 258
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 260
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 261
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayCornerRadius(Landroid/content/Context;)F

    move-result v3

    .line 262
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 263
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 264
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 265
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 268
    return-void
.end method

.method public setLastTouch(FF)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 319
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 320
    return-void
.end method

.method public setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    .line 238
    return-void
.end method

.method public setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    .line 245
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/PopupZoomer;->setTargetBounds(Landroid/graphics/Rect;)V

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0
.end method
