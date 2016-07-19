.class Lorg/chromium/chrome/browser/document/DocumentActivity$5;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$5;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$5;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$5;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getPersistentFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$5;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;

    .line 691
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->toggleOverview()V

    goto :goto_0
.end method
