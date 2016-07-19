.class public final Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v0, "com.google.ipc.invalidation.android_listener.REGISTRATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.ipc.invalidation.android_listener.SCHEDULED_TASK"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    invoke-static {p1, p2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->issueAndroidListenerIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    :cond_1
    return-void
.end method
