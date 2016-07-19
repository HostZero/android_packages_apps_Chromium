.class public Lorg/chromium/chrome/browser/firstrun/FirstRunView;
.super Landroid/widget/FrameLayout;
.source "FirstRunView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentWrapper:Landroid/widget/LinearLayout;

.field private mImageAndContent:Landroid/widget/LinearLayout;

.field private mMainLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected isDynamicPaddingEnabled()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected isHorizontalModeEnabled()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    sget v0, Lorg/chromium/chrome/R$id;->fre_main_layout:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mMainLayout:Landroid/view/View;

    .line 41
    sget v0, Lorg/chromium/chrome/R$id;->fre_image_and_content:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lorg/chromium/chrome/R$id;->fre_content_wrapper:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mContentWrapper:Landroid/widget/LinearLayout;

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x0

    .line 58
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mContentWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->isHorizontalModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-float v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/chromium/chrome/R$dimen;->signin_image_carousel_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    if-le v1, v4, :cond_2

    .line 73
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$dimen;->fre_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 77
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/chromium/chrome/R$dimen;->fre_title_text_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$dimen;->fre_vertical_spacing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$dimen;->fre_image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 99
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->isDynamicPaddingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    div-int/lit8 v4, v4, 0x2

    sub-int v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 102
    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mMainLayout:Landroid/view/View;

    iget-object v4, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-static {v2, v1, v3, v4, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 112
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mContentWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 115
    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->mImageAndContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 88
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$dimen;->fre_vertical_spacing:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 92
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$dimen;->fre_title_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/chromium/chrome/R$dimen;->fre_vertical_spacing:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/chromium/chrome/R$dimen;->fre_image_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/chromium/chrome/R$dimen;->fre_vertical_spacing:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_0
.end method
