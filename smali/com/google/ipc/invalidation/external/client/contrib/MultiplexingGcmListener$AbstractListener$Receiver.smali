.class public abstract Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiplexingGcmListener.java"


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getServiceClass()Ljava/lang/Class;
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener$Receiver;->getServiceClass()Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-class v1, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service class is not a subclass of AbstractListener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    # invokes: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->getWakelockKey(Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->access$000(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.listener.WAKELOCK_NAME"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/o;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;I)V

    .line 172
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    return-void
.end method
