.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "LayoutManagerChrome.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabModelSwitched(Z)V

    .line 237
    return-void
.end method
