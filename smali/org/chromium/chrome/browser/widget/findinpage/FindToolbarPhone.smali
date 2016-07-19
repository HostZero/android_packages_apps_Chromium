.class public Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;
.source "FindToolbarPhone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->isViewAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->setVisibility(I)V

    .line 33
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->activate()V

    goto :goto_0
.end method

.method public deactivate(Z)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate(Z)V

    .line 39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->setVisibility(I)V

    .line 40
    return-void
.end method

.method protected getStatusColor(ZZ)I
    .locals 2

    .prologue
    .line 68
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->find_in_page_results_status_white_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getStatusColor(ZZ)I

    move-result v0

    goto :goto_0
.end method

.method protected updateVisualsForTabModel(Z)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    sget v0, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 50
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 51
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mCloseFindButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 52
    sget v0, Lorg/chromium/chrome/R$color;->find_in_page_query_white_color:I

    .line 62
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setTextColor(I)V

    .line 64
    return-void

    .line 54
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->setBackgroundColor(I)V

    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 58
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 59
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarPhone;->mCloseFindButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 60
    sget v0, Lorg/chromium/chrome/R$color;->find_in_page_query_color:I

    goto :goto_0
.end method
