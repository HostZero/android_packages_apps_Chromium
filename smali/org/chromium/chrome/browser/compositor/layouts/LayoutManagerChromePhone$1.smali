.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone$1;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
.source "LayoutManagerChromePhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V

    return-void
.end method


# virtual methods
.method public willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 69
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->tabClosing(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;I)V

    .line 70
    :cond_0
    return-void
.end method
