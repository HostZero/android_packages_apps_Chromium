.class public Lorg/chromium/chrome/browser/widget/FloatLabelLayout;
.super Landroid/widget/LinearLayout;
.source "FloatLabelLayout.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mHint:Ljava/lang/CharSequence;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v6, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setOrientation(I)V

    .line 80
    sget-object v0, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    sget v1, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelPaddingLeft:I

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->dipsToPix(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 85
    sget v2, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelPaddingTop:I

    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->dipsToPix(F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 88
    sget v3, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelPaddingRight:I

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->dipsToPix(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 91
    sget v4, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelPaddingBottom:I

    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->dipsToPix(F)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 94
    sget v5, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelHint:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    .line 96
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    .line 97
    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 101
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 102
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;F)V

    .line 104
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    sget v2, Lorg/chromium/chrome/R$styleable;->FloatLabelLayout_floatLabelTextAppearance:I

    const v3, 0x1030046

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7, v7}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->addView(Landroid/view/View;II)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x10c000d

    :goto_0
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    return-void

    .line 111
    :cond_0
    const v0, 0x10a0006

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private dipsToPix(F)I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private hideLabel(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    .line 266
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 267
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 268
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 270
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/aP;->d(F)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/aP;->e(F)Landroid/support/v4/view/aP;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;-><init>(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->updateLabelVisibility(Z)V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$1;-><init>(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$2;-><init>(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    :cond_2
    return-void
.end method

.method private showLabel(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    .line 243
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 244
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->e(F)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->d(F)Landroid/support/v4/view/aP;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 257
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLabelVisibility(Z)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 184
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    .line 186
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 188
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->showLabel(Z)V

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->hideLabel(Z)V

    goto :goto_1
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 119
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method public focusWithoutAnimation()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 136
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->showLabel(Z)V

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method
