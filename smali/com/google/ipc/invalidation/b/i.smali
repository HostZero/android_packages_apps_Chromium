.class public final Lcom/google/ipc/invalidation/b/i;
.super Ljava/lang/Object;
.source "LazyString.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/ipc/invalidation/b/j;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/b/j;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/ipc/invalidation/b/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/b/k;

    invoke-direct {v0, p1, p0}, Lcom/google/ipc/invalidation/b/k;-><init>(Lcom/google/ipc/invalidation/b/l;Ljava/lang/Object;)V

    goto :goto_0
.end method
