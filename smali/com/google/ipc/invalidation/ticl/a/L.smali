.class public final Lcom/google/ipc/invalidation/ticl/a/L;
.super Landroid/support/v4/app/d;
.source "ClientConstants.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/ar;

.field public static final b:Lcom/google/ipc/invalidation/ticl/a/ad;

.field public static final c:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 43
    const v0, 0x1337a24

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(II)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/L;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 44
    invoke-static {v3, v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(II)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/ad;->a(Lcom/google/ipc/invalidation/ticl/a/ar;)Lcom/google/ipc/invalidation/ticl/a/ad;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/L;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    .line 46
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(II)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/ad;->a(Lcom/google/ipc/invalidation/ticl/a/ar;)Lcom/google/ipc/invalidation/ticl/a/ad;

    .line 48
    sput v1, Lcom/google/ipc/invalidation/ticl/a/L;->d:I

    .line 49
    sget-object v0, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(ILcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/L;->c:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 50
    return-void
.end method
