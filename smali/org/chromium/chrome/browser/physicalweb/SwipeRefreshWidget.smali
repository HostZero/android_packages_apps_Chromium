.class public Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;
.super Landroid/support/v4/widget/ab;
.source "SwipeRefreshWidget.java"


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 29
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_urls_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    if-ge v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
