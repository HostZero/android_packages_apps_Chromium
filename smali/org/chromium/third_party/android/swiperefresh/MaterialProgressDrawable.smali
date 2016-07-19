.class Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field static final DEFAULT:I = 0x1

.field static final LARGE:I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->COLORS:[I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 459
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$3;-><init>(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 117
    iput-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 120
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    .line 121
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 123
    invoke-virtual {p0, v3}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 124
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setupAnimators()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->applyFinishTranslation(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)F
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 4

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    .line 358
    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 360
    invoke-direct {p0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result v1

    .line 361
    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    .line 364
    invoke-virtual {p2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 365
    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 366
    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 368
    invoke-virtual {p2, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 369
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 8

    .prologue
    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    ushr-int/lit8 v1, v0, 0x18

    .line 321
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 322
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 323
    and-int/lit16 v0, v0, 0xff

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 326
    ushr-int/lit8 v5, v4, 0x18

    .line 327
    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 328
    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 329
    and-int/lit16 v4, v4, 0xff

    .line 331
    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    sub-int v5, v6, v2

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int v2, v7, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sub-int v2, v4, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F
    .locals 6

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 227
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 224
    goto :goto_0

    :cond_1
    move v0, v1

    .line 227
    goto :goto_0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    .line 130
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 131
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    .line 134
    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    .line 135
    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 136
    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 137
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 138
    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 139
    iget-wide v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 140
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    .line 373
    new-instance v1, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;-><init>(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    .line 425
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 426
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 427
    sget-object v2, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    new-instance v2, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;-><init>(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    iput-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 457
    return-void
.end method

.method private updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    .line 343
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 347
    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColor(I)V

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 233
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 234
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 236
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v6, v7, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 237
    :cond_0
    iget v3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 238
    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v3, p1, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 239
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 240
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 277
    :goto_0
    if-ge v2, v4, :cond_1

    .line 278
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 279
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 283
    :goto_1
    return v0

    .line 277
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 246
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 171
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 198
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 209
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 210
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 191
    return-void
.end method

.method setRotation(F)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotation:F

    .line 260
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->invalidateSelf()V

    .line 261
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 181
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 182
    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 164
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 289
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 291
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    .line 293
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 294
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 297
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 298
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 299
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setRotation(F)V

    .line 307
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 308
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 309
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 310
    return-void
.end method

.method public updateSizes(I)V
    .locals 14

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 150
    if-nez p1, :cond_0

    .line 151
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
