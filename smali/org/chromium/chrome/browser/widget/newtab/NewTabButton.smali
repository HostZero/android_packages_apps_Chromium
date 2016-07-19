.class public Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;
.super Landroid/widget/Button;
.source "NewTabButton.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;


# instance fields
.field private final mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIncognito:Z

.field private final mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTransitionAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "alpha"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_new_tab_white:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_new_tab_incognito:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIsIncognito:Z

    .line 66
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->invalidate()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 82
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    if-nez v0, :cond_0

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getHeight()I

    move-result v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIsIncognito:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getHeight()I

    move-result v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 73
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 74
    invoke-super {p0, v0, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 75
    return-void
.end method

.method public setIsIncognito(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    .line 123
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIsIncognito:Z

    if-ne v0, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIsIncognito:Z

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 132
    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mIncognitoDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    goto :goto_1

    .line 132
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 140
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    sget-object v3, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 144
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 148
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 149
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 150
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->mTransitionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 141
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 146
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
