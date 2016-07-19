.class public Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$GCMReceiver;
.super Lcom/google/android/a/b;
.source "MultiplexingGcmListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
