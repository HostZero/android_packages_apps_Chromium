.class Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "FullScreenActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/FullScreenActivity;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 152
    if-eqz p3, :cond_0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getTopControlsStateConstraints()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->updateTopControlsState(IZ)V

    .line 158
    :cond_0
    return-void
.end method
