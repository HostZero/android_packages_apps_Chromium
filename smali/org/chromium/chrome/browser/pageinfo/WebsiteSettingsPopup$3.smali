.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "WebsiteSettingsPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDismissWithoutAnimation:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$302(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Z)Z

    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$500(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$500(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 384
    return-void
.end method
