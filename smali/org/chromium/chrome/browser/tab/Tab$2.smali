.class Lorg/chromium/chrome/browser/tab/Tab$2;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "Tab.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyCertificateFailure(Lorg/chromium/content_public/browser/WebContents;Landroid/content/Context;)V

    .line 539
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 540
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 3

    .prologue
    .line 544
    if-nez p2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->didStartPageLoad(Ljava/lang/String;Z)V

    .line 552
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/tab/Tab;->scheduleEnableFullscreenLoadDelayIfNecessary()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->access$400(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 554
    if-eqz p3, :cond_0

    .line 556
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$2;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->didFinishPageLoad()V

    goto :goto_0
.end method
