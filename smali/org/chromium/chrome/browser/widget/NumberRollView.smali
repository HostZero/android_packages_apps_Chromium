.class public Lorg/chromium/chrome/browser/widget/NumberRollView;
.super Landroid/widget/FrameLayout;
.source "NumberRollView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NUMBER_PROPERTY:Landroid/util/Property;


# instance fields
.field private mDownNumber:Landroid/widget/TextView;

.field private mLastRollAnimator:Landroid/animation/Animator;

.field private mNumber:F

.field private mUpNumber:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/widget/NumberRollView$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/widget/NumberRollView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->NUMBER_PROPERTY:Landroid/util/Property;

    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/NumberRollView;F)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumberRoll(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/NumberRollView;)F
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->getNumberRoll()F

    move-result v0

    return v0
.end method

.method private getNumberRoll()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mNumber:F

    return v0
.end method

.method private setNumberRoll(F)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 95
    iput p1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mNumber:F

    .line 96
    float-to-int v0, p1

    .line 97
    add-int/lit8 v1, v0, 0x1

    .line 99
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 100
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    rem-float v0, p1, v6

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v6

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 109
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 111
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 112
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    sub-float v0, v6, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->up:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    .line 59
    sget v0, Lorg/chromium/chrome/R$id;->down:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    .line 61
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mUpNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mDownNumber:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mNumber:F

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumberRoll(F)V

    .line 65
    return-void
.end method

.method public setNumber(IZ)V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mLastRollAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mLastRollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    .line 75
    sget-object v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->NUMBER_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 78
    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/NumberRollView;->mLastRollAnimator:Landroid/animation/Animator;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumberRoll(F)V

    goto :goto_0
.end method
