.class public Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;
.super Landroid/widget/LinearLayout;
.source "NewTabPageToolbar.java"


# instance fields
.field private mBookmarksButton:Landroid/view/ViewGroup;

.field private mInterestsButton:Landroid/view/ViewGroup;

.field private mRecentTabsButton:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private initButton(II)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v2

    .line 63
    invoke-static {v1, v2, v3, v3, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public getBookmarksButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mBookmarksButton:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getInterestsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mInterestsButton:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRecentTabsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mRecentTabsButton:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    sget v0, Lorg/chromium/chrome/R$id;->bookmarks_button:I

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_star:I

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->initButton(II)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mBookmarksButton:Landroid/view/ViewGroup;

    .line 49
    sget v0, Lorg/chromium/chrome/R$id;->recent_tabs_button:I

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_recents:I

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->initButton(II)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mRecentTabsButton:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mBookmarksButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->ntp_bookmarks:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mBookmarksButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_ntp_toolbar_btn_bookmarks:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->interests_button:I

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_star_filled:I

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->initButton(II)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->mInterestsButton:Landroid/view/ViewGroup;

    .line 56
    return-void
.end method
