.class public Lorg/chromium/ui/widget/ButtonCompat;
.super Landroid/widget/Button;
.source "ButtonCompat.java"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatOverlay:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/ButtonCompat;->setButtonColor(I)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/ButtonCompat;->setRaised(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1, p2}, Lorg/chromium/ui/widget/ButtonCompat;->getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public static createBorderlessButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/widget/Button;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lorg/chromium/ui/R$style;->ButtonCompatBorderlessOverlay:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getBackgroundColorPreL()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const v6, 0x3f59999a    # 0.85f

    .line 151
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    .line 152
    const v5, 0x10100a7

    if-eq v4, v5, :cond_0

    const v5, 0x101009c

    if-eq v4, v5, :cond_0

    const v5, 0x10100a1

    if-ne v4, v5, :cond_1

    .line 155
    :cond_0
    iget v0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 166
    :goto_1
    return v0

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget v3, v1, v0

    .line 162
    const v4, 0x101009e

    if-ne v3, v4, :cond_3

    .line 163
    iget v0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    goto :goto_1

    .line 161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_4
    const/high16 v0, 0x1f000000

    goto :goto_1
.end method

.method private static getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    sget-object v0, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    return v1
.end method

.method private updateButtonBackgroundL()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v0, v6, [[I

    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v4, [I

    aput-object v2, v0, v5

    new-array v2, v6, [I

    const/high16 v3, 0x1f000000

    aput v3, v2, v4

    iget v3, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    aput v3, v2, v5

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 139
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 143
    return-void
.end method

.method private updateButtonBackgroundPreL()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 147
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackgroundColorPreL()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    .line 132
    :cond_0
    return-void
.end method

.method public setButtonColor(I)V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    if-ne p1, v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iput p1, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 89
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundL()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    goto :goto_0
.end method

.method public setRaised(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 102
    :cond_0
    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010448

    aput v3, v2, v4

    const v3, 0x1030258

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 109
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 119
    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/ButtonCompat;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_0

    .line 121
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setElevation(F)V

    .line 122
    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/ButtonCompat;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_0
.end method
