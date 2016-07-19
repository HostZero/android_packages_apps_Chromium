.class Lorg/chromium/content/browser/ContentViewCore$7;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 2646
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$7;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 2655
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$7;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$7;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onContextMenuClosed()V

    .line 2656
    :cond_0
    return-void
.end method

.method public paste()V
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$7;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->paste()V

    .line 2650
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$7;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # invokes: Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2651
    return-void
.end method
