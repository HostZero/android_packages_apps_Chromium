.class public final Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidInternalScheduler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v0, p1}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    return-void
.end method
