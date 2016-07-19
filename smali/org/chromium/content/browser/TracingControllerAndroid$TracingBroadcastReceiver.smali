.class Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TracingControllerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/TracingControllerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/TracingControllerAndroid;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GPU_PROFILER_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    const-string/jumbo v0, "categories"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    # invokes: Lorg/chromium/content/browser/TracingControllerAndroid;->nativeGetDefaultCategories()Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/content/browser/TracingControllerAndroid;->access$000(Lorg/chromium/content/browser/TracingControllerAndroid;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    const-string/jumbo v1, "continuous"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "record-until-full"

    .line 288
    :goto_1
    const-string/jumbo v2, "file"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_2

    .line 290
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v3, v2, v4, v0, v1}, Lorg/chromium/content/browser/TracingControllerAndroid;->startTracing(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 301
    :goto_2
    return-void

    .line 283
    :cond_0
    const-string/jumbo v1, "_DEFAULT_CHROME_CATEGORIES"

    iget-object v2, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    # invokes: Lorg/chromium/content/browser/TracingControllerAndroid;->nativeGetDefaultCategories()Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/content/browser/TracingControllerAndroid;->access$000(Lorg/chromium/content/browser/TracingControllerAndroid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const-string/jumbo v1, "record-continuously"

    goto :goto_1

    .line 292
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v2, v4, v0, v1}, Lorg/chromium/content/browser/TracingControllerAndroid;->startTracing(ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 294
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GPU_PROFILER_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v0}, Lorg/chromium/content/browser/TracingControllerAndroid;->stopTracing()V

    goto :goto_2

    .line 296
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GPU_PROFILER_LIST_CATEGORIES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v0}, Lorg/chromium/content/browser/TracingControllerAndroid;->getCategoryGroups()V

    goto :goto_2

    .line 299
    :cond_5
    const-string/jumbo v0, "cr.TracingController"

    const-string/jumbo v1, "Unexpected intent: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
