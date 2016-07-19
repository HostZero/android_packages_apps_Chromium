.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;
.super Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;
.source "DataReductionPromoView.java"


# instance fields
.field private mFrameHeightMargin:I

.field private mIllustration:Landroid/view/View;

.field private mIllustrationPaddingBottom:I

.field private mIllustrationPaddingSide:I

.field private mMaxChildWidth:I

.field private mMaxChildWidthHorizontal:I

.field private mPromoContent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->data_reduction_promo_screen_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mMaxChildWidth:I

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->data_reduction_promo_screen_width_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mMaxChildWidthHorizontal:I

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->data_reduction_promo_illustration_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustrationPaddingBottom:I

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44
    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustrationPaddingSide:I

    .line 45
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mFrameHeightMargin:I

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->onFinishInflate()V

    .line 51
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_illustration:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustration:Landroid/view/View;

    .line 52
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_promo_content:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mPromoContent:Landroid/widget/LinearLayout;

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 60
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustration:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_0

    if-le v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mPromoContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mMaxChildWidthHorizontal:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->setMaxChildWidth(I)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustration:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustrationPaddingSide:I

    invoke-static {v0, v3, v3, v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 71
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mFrameHeightMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->setMaxChildHeight(I)V

    .line 72
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->onMeasure(II)V

    .line 73
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mPromoContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mMaxChildWidth:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->setMaxChildWidth(I)V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustration:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoView;->mIllustrationPaddingBottom:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
