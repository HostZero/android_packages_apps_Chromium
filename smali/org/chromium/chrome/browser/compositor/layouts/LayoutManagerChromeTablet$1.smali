.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "LayoutManagerChromeTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->updateTitle(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 154
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->updateTitle(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 159
    return-void
.end method
