.class public Lorg/chromium/ui/gfx/ViewConfigurationHelper;
.super Ljava/lang/Object;
.source "ViewConfigurationHelper.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mDensity:F

.field private mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 38
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    .line 39
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->updateNativeViewConfigurationIfNecessary()V

    return-void
.end method

.method private static createWithListener(Landroid/content/Context;)Lorg/chromium/ui/gfx/ViewConfigurationHelper;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-direct {v0, p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-direct {v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->registerListener()V

    .line 160
    return-object v0
.end method

.method private getDoubleTapSlop()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getLongPressTimeout()I
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getMaximumFlingVelocity()F
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getMinScalingSpan()F
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getScaledMinScalingSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getMinScalingTouchMajor()F
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getScaledMinScalingTouchMajor()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getMinimumFlingVelocity()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getScaledMinScalingSpan()I
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    const-string/jumbo v0, "config_minScalingSpan"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 125
    if-nez v0, :cond_0

    sget v0, Lorg/chromium/ui/R$dimen;->config_min_scaling_span:I

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "MinScalingSpan resource lookup failed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 130
    :cond_1
    const/4 v0, 0x5

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private getScaledMinScalingTouchMajor()I
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    const-string/jumbo v0, "config_minScalingTouchMajor"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    if-nez v0, :cond_0

    sget v0, Lorg/chromium/ui/R$dimen;->config_min_scaling_touch_major:I

    .line 141
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "MinScalingTouchMajor resource lookup failed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 144
    :cond_1
    const/4 v0, 0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static getScrollFriction()F
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    return v0
.end method

.method private static getTapTimeout()I
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method private getTouchSlop()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private native nativeUpdateSharedViewConfiguration(FFFFFF)V
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;

    invoke-direct {v1, p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;-><init>(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 54
    return-void
.end method

.method private toDips(I)F
    .locals 2

    .prologue
    .line 153
    int-to-float v0, p1

    iget v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    div-float/2addr v0, v1

    return v0
.end method

.method private updateNativeViewConfigurationIfNecessary()V
    .locals 7

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    if-ne v1, v0, :cond_0

    .line 60
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    iget-object v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 65
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    .line 66
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMaximumFlingVelocity()F

    move-result v1

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinimumFlingVelocity()F

    move-result v2

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getTouchSlop()F

    move-result v3

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getDoubleTapSlop()F

    move-result v4

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinScalingSpan()F

    move-result v5

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinScalingTouchMajor()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->nativeUpdateSharedViewConfiguration(FFFFFF)V

    .line 69
    :cond_2
    return-void
.end method
