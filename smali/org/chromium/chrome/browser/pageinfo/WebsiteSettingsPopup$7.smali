.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$1000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/16 v1, 0xa

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->recordAction(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$800(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;I)V

    .line 745
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$1000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->show(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    .line 747
    :cond_0
    return-void
.end method
