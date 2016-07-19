.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "CustomTabActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

.field final synthetic val$params:Lorg/chromium/content_public/browser/LoadUrlParams;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->val$params:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 472
    if-nez p3, :cond_0

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->val$params:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 474
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/WebContents;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method
