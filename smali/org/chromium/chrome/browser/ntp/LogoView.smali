.class public Lorg/chromium/chrome/browser/ntp/LogoView;
.super Landroid/widget/FrameLayout;
.source "LogoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sDefaultLogo:Ljava/lang/ref/WeakReference;


# instance fields
.field private mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

.field private mAnimatedLogoMatrix:Landroid/graphics/Matrix;

.field private mFadeAnimation:Landroid/animation/ObjectAnimator;

.field private mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

.field private mLogo:Landroid/graphics/Bitmap;

.field private mLogoIsDefault:Z

.field private mLogoMatrix:Landroid/graphics/Matrix;

.field private mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

.field private mNewLogo:Landroid/graphics/Bitmap;

.field private mNewLogoIsDefault:Z

.field private mNewLogoMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mTransitionAmount:F

.field private final mTransitionProperty:Landroid/util/Property;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/ntp/LogoView$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/ntp/LogoView$1;-><init>(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionProperty:Landroid/util/Property;

    .line 96
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getDefaultLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoMatrix:Landroid/graphics/Matrix;

    .line 98
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoIsDefault:Z

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/ntp/LogoView;->setClickable(Z)V

    .line 107
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/ntp/LogoView;->setWillNotDraw(Z)V

    .line 109
    new-instance v0, Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/widget/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/LoadingView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->addView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/LogoView;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/ntp/LogoView;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    return p1
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/LogoView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/LogoView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/ntp/LogoView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoIsDefault:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ntp/LogoView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private getDefaultLogo()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lorg/chromium/chrome/browser/ntp/LogoView;->sDefaultLogo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 252
    :goto_0
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->google_logo:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/chromium/chrome/browser/ntp/LogoView;->sDefaultLogo:Ljava/lang/ref/WeakReference;

    .line 256
    :cond_0
    return-object v0

    .line 251
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/ntp/LogoView;->sDefaultLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private isTransitioning()Z
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMatrix(IILandroid/graphics/Matrix;Z)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 234
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getWidth()I

    move-result v1

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getHeight()I

    move-result v2

    .line 237
    int-to-float v0, v1

    int-to-float v3, p1

    div-float/2addr v0, v3

    int-to-float v3, v2

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 238
    if-eqz p4, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 240
    :cond_0
    int-to-float v1, v1

    int-to-float v3, p1

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 241
    int-to-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 243
    invoke-virtual {p3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 244
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    return-void
.end method

.method private updateLogo(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 180
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    .line 181
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    .line 182
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMatrix(IILandroid/graphics/Matrix;Z)V

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionProperty:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/LogoView$2;

    invoke-direct {v1, p0, p2}, Lorg/chromium/chrome/browser/ntp/LogoView$2;-><init>(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 216
    return-void

    .line 185
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public endFadeAnimation()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    .line 132
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->invalidate()V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAnimatedLogoShowing()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 324
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->isAnimatedLogoShowing()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->onLogoClicked(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x43ff0000    # 510.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->isAnimatedLogoShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 279
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    .line 280
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v0, p1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    sub-float v1, v3, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 307
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_3

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMatrix(IILandroid/graphics/Matrix;Z)V

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoMatrix:Landroid/graphics/Matrix;

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoIsDefault:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMatrix(IILandroid/graphics/Matrix;Z)V

    .line 315
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMatrix(IILandroid/graphics/Matrix;Z)V

    .line 320
    :cond_3
    return-void
.end method

.method public playAnimatedLogo(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->hideLoadingUI()V

    .line 146
    new-instance v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p1, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;-><init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoMatrix:Landroid/graphics/Matrix;

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMatrix(IILandroid/graphics/Matrix;Z)V

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v0, p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    invoke-virtual {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->start()V

    .line 153
    return-void
.end method

.method public setMananger(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    .line 122
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->showLoadingUI()V

    .line 160
    return-void
.end method

.method public updateLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getDefaultLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->updateLogo(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->altText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :goto_1
    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0, v4}, Lorg/chromium/chrome/browser/ntp/LogoView;->updateLogo(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/LogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessibility_google_doodle:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->altText:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->mAnimatedLogoDrawable:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
