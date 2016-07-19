.class public Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;
.super Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;
.source "ClearBrowsingDataCheckBoxPreference.java"


# instance fields
.field private mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    .line 52
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->clear_browsing_data_checkbox_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 45
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v1, v3, v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->mView:Landroid/widget/LinearLayout;

    goto :goto_0
.end method
