.class Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "ConnectionInfoPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->access$000(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->access$000(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    return-void
.end method
