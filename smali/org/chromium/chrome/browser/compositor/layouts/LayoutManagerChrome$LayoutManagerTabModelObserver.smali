.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "LayoutManagerChrome.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;


# direct methods
.method protected constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 102
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p2, v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v4

    .line 104
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 106
    :goto_0
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mLastContentWidthDp:F

    .line 108
    :goto_1
    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p2, v3, :cond_4

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    .line 111
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mPxToDp:F

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mLastTapX:I

    int-to-float v3, v3

    mul-float v6, v2, v3

    .line 112
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mPxToDp:F

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mLastTapY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v7, v2, v0

    .line 115
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v2

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V

    .line 118
    :cond_1
    return-void

    .line 104
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 106
    goto :goto_1

    :cond_4
    move v7, v2

    move v6, v0

    goto :goto_2
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosed(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 123
    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabMoved(IIIZ)V
    invoke-static {v0, v1, p3, p2, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IIIZ)V

    .line 143
    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-virtual {v0, v1, p3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabSelected(IIZ)V

    .line 88
    :cond_0
    return-void
.end method

.method public tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosureCommitted(IZ)V

    .line 138
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosureCancelled(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 133
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosed(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 128
    return-void
.end method

.method public willAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_REPARENTING:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabCreating(ILjava/lang/String;Z)V

    goto :goto_0
.end method
