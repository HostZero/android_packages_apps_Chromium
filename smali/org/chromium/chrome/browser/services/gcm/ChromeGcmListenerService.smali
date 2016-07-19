.class public Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "ChromeGcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private pushMessageReceived(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "ChromeGcmListener"

    const-string/jumbo v1, "Received push message with no subtype"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;-><init>(Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeletedMessages()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "ChromeGcmListener"

    const-string/jumbo v1, "Push messages were deleted, but we can\'t tell the Service Worker as we don\'tknow what subtype (app ID) it occurred for."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Landroid/os/Bundle;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->pushMessageReceived(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "ChromeGcmListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Message sent successfully. Message id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->recordGcmUpstreamHistogram(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "ChromeGcmListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error in sending message. Message id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->recordGcmUpstreamHistogram(Landroid/content/Context;I)V

    .line 44
    return-void
.end method
