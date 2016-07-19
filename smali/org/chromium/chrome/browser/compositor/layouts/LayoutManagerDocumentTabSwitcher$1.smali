.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher$1;
.super Ljava/lang/Object;
.source "LayoutManagerDocumentTabSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->showOverview(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;Z)V

    .line 208
    return-void
.end method
