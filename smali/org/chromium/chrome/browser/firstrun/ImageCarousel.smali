.class public Lorg/chromium/chrome/browser/firstrun/ImageCarousel;
.super Landroid/widget/FrameLayout;
.source "ImageCarousel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final BACKGROUND_IMAGE_ALPHA:Landroid/util/Property;

.field private static final BITMAP_OFFSETS:[I

.field private static final ORDER_OFFSETS:[I

.field private static final POSITION_OFFSETS:[I

.field private static final POSITION_PROPERTY:Landroid/util/Property;


# instance fields
.field private mAccountSelected:Z

.field private mCarouselWidth:I

.field private mCheckmark:Landroid/widget/ImageView;

.field private mFadeInOutAnimator:Landroid/animation/Animator;

.field private mFlingScalingFactor:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageWidth:I

.field private mImages:[Landroid/graphics/Bitmap;

.field private mLastPosition:I

.field private mListener:Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;

.field private mNeedsPositionUpdates:Z

.field private mPosition:F

.field private mScrollAnimator:Landroid/animation/Animator;

.field private mScrollScalingFactor:F

.field private mScrollingDisabled:Z

.field private mTranslationFactor:F

.field private mViews:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->ORDER_OFFSETS:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->POSITION_OFFSETS:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->BITMAP_OFFSETS:[I

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->POSITION_PROPERTY:Landroid/util/Property;

    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->BACKGROUND_IMAGE_ALPHA:Landroid/util/Property;

    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x0
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x0
        -0x1
        0x2
        0x1
    .end array-data

    .line 97
    :array_2
    .array-data 4
        0x2
        0x1
        -0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mLastPosition:I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    .line 169
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;F)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setPosition(F)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private getCenterPosition()I
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method private setLayoutParamsForCheckmark(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 429
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->signin_checkmark_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 430
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 432
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 433
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 435
    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 436
    return-void
.end method

.method private setPosition(F)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 401
    const v0, -0x42333333    # -0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 402
    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 403
    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    .line 409
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getCenterPosition()I

    move-result v0

    .line 410
    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mLastPosition:I

    if-eq v0, v1, :cond_1

    .line 411
    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mLastPosition:I

    .line 412
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mListener:Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mListener:Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;->onPositionChanged(I)V

    .line 419
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->updateImageViews()V

    .line 420
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->invalidate()V

    .line 421
    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v0, v0

    int-to-float v0, v0

    rem-float v0, p1, v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    goto :goto_0
.end method

.method private updateBitmap(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 388
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getChildDrawingOrder(II)I

    move-result v0

    .line 390
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ne v1, v3, :cond_1

    if-lez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-gt v0, v3, :cond_0

    .line 393
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;

    aget-object v0, v1, v0

    .line 394
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->BITMAP_OFFSETS:[I

    aget v3, v3, p1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateImageViews()V
    .locals 10

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 360
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mAccountSelected:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getCenterPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 362
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    .line 364
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->updateBitmap(I)V

    .line 366
    iget v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    sget-object v3, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->POSITION_OFFSETS:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 370
    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mTranslationFactor:F

    neg-float v3, v3

    float-to-double v4, v2

    mul-double/2addr v4, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 376
    float-to-double v4, v2

    mul-double/2addr v4, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    const v4, 0x3f2aaaab

    add-float/2addr v3, v4

    .line 377
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 378
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 382
    float-to-double v2, v2

    mul-double/2addr v2, v8

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 359
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 287
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 290
    :goto_0
    return p2

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget-object v1, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->ORDER_OFFSETS:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    rem-int/lit8 p2, v0, 0x4

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 261
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->fre_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    .line 262
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 263
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 264
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    iget v4, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 269
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->signin_image_carousel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCarouselWidth:I

    .line 273
    const v0, 0x3eeb851f    # 0.46f

    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCarouselWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollScalingFactor:F

    .line 274
    const v0, 0x41133333    # 9.2f

    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCarouselWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFlingScalingFactor:F

    .line 275
    const v0, 0x3f23d70a    # 0.64f

    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mTranslationFactor:F

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setChildrenDrawingOrderEnabled(Z)V

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setPosition(F)V

    .line 279
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 345
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    .line 346
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFlingScalingFactor:F

    div-float v1, p3, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    .line 347
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 335
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    .line 336
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    iget v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollScalingFactor:F

    div-float v1, p3, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setPosition(F)V

    .line 337
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCarouselWidth:I

    iget v4, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 320
    iget v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    sub-float/2addr v2, v5

    invoke-virtual {p0, v2, v1, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    .line 326
    :goto_0
    return v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCarouselWidth:I

    iget v4, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImageWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 323
    iget v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    add-float/2addr v2, v5

    invoke-virtual {p0, v2, v1, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 295
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollingDisabled:Z

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 300
    :cond_3
    iget v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    goto :goto_0
.end method

.method public scrollTo(FZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 180
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mNeedsPositionUpdates:Z

    .line 181
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 183
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 184
    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ne v3, v4, :cond_3

    .line 185
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    .line 186
    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    .line 188
    :goto_0
    sget-object v1, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->POSITION_PROPERTY:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mPosition:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 190
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 192
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setImages([Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 205
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 216
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mAccountSelected:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollingDisabled:Z

    .line 217
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    .line 221
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->updateImageViews()V

    .line 222
    return-void

    .line 207
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    .line 208
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollingDisabled:Z

    goto :goto_0

    .line 211
    :pswitch_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollingDisabled:Z

    .line 212
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mImages:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mListener:Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;

    .line 199
    return-void
.end method

.method public setSignedInMode(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mAccountSelected:Z

    if-ne p1, v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mScrollingDisabled:Z

    .line 233
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mAccountSelected:Z

    .line 234
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getCenterPosition()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setPosition(F)V

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 237
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->verify_checkmark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setLayoutParamsForCheckmark(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->addView(Landroid/view/View;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFadeInOutAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFadeInOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 244
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    if-eqz p1, :cond_3

    .line 246
    new-array v1, v7, [Landroid/animation/Animator;

    sget-object v2, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->BACKGROUND_IMAGE_ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    :goto_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFadeInOutAnimator:Landroid/animation/Animator;

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFadeInOutAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mFadeInOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 249
    :cond_3
    new-array v1, v7, [Landroid/animation/Animator;

    sget-object v2, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->BACKGROUND_IMAGE_ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mCheckmark:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 246
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 249
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
