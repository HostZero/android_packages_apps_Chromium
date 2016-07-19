.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
.source "LayoutManagerChromeTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->updateTitle(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 182
    return-void
.end method
