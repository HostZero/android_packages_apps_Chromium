.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "LayoutManagerChrome.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadFinished(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 274
    return-void
.end method

.method public onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabLoadStarted(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$300(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 249
    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabLoadFinished(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 254
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadFinished(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 269
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadFinished(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 264
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadStarted(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V

    .line 259
    return-void
.end method
