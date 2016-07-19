.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;
.source "FindToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindToolbarHidden()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 89
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;->onFindToolbarHidden()V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public onFindToolbarShown()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 82
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;->onFindToolbarShown()V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
