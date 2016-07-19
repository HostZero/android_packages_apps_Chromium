.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "LayoutManagerDocument.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onBackgroundColorChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->initLayoutTabFromHost(I)V

    .line 168
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->initLayoutTabFromHost(I)V

    .line 163
    return-void
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->initLayoutTabFromHost(I)V

    .line 173
    return-void
.end method
