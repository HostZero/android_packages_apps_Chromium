.class Lorg/chromium/content/browser/ContentView$1;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentView;

.field final synthetic val$resultHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentView$1;->val$resultHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iget-object v2, v2, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iget-object v2, v2, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "rect"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v1, "html"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentView$1;->val$resultHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string/jumbo v1, "cr.ContentView"

    const-string/jumbo v2, "Error calling handler for smart clip data: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
