.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "BookmarkSearchView.java"


# instance fields
.field mResultEmptySwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    .line 65
    sget v0, Lorg/chromium/chrome/R$id;->result_empty_switcher:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->mResultEmptySwitcher:Landroid/widget/ViewSwitcher;

    .line 66
    return-void
.end method

.method showEmpty()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_history_list:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showNext()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->mResultEmptySwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_result_list:I

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->mResultEmptySwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 85
    :cond_1
    return-void
.end method

.method showHistory()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_history_list:I

    if-ne v0, v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showNext()V

    goto :goto_0
.end method

.method showResult()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_history_list:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showNext()V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->mResultEmptySwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_search_empty_view:I

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->mResultEmptySwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 78
    :cond_1
    return-void
.end method
