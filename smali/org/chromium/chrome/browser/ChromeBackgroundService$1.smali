.class Lorg/chromium/chrome/browser/ChromeBackgroundService$1;
.super Ljava/lang/Object;
.source "ChromeBackgroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeBackgroundService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Lcom/google/android/gms/gcm/TaskParams;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeBackgroundService;Lcom/google/android/gms/gcm/TaskParams;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->this$0:Lorg/chromium/chrome/browser/ChromeBackgroundService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$params:Lcom/google/android/gms/gcm/TaskParams;

    iput-object p3, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$params:Lcom/google/android/gms/gcm/TaskParams;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 52
    const-string/jumbo v0, "BackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown task tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$params:Lcom/google/android/gms/gcm/TaskParams;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_1
    return-void

    .line 40
    :sswitch_0
    const-string/jumbo v3, "BackgroundSync Event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "FetchSnippetsWifiCharging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "FetchSnippetsWifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "FetchSnippetsFallback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->this$0:Lorg/chromium/chrome/browser/ChromeBackgroundService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/ChromeBackgroundService;->handleBackgroundSyncEvent(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->access$000(Lorg/chromium/chrome/browser/ChromeBackgroundService;Landroid/content/Context;)V

    goto :goto_1

    .line 48
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->this$0:Lorg/chromium/chrome/browser/ChromeBackgroundService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/ChromeBackgroundService;->handleFetchSnippets(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->access$100(Lorg/chromium/chrome/browser/ChromeBackgroundService;Landroid/content/Context;)V

    goto :goto_1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a51af8a -> :sswitch_1
        -0x56dec11b -> :sswitch_2
        0x245cceb2 -> :sswitch_3
        0x296054a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
