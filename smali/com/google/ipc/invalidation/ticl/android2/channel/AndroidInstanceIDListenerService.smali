.class public Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;
.super Lcom/google/android/gms/iid/b;
.source "AndroidInstanceIDListenerService.java"


# static fields
.field private static final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "InstanceIDListener"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/iid/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Received token refresh request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a()V

    .line 37
    return-void
.end method
