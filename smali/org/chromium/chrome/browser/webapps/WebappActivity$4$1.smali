.class Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;
.super Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
.source "WebappActivity.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$4;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity$4;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;->this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$4;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method


# virtual methods
.method public isHidingTopControlsEnabled()Z
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;->isShowingTopControlsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingTopControlsEnabled()Z
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->isShowingTopControlsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;->this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$4;

    iget-object v0, v0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->shouldShowTopControls(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
