.class final Lcom/google/ipc/invalidation/b/k;
.super Ljava/lang/Object;
.source "LazyString.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/b/l;

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/b/l;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/ipc/invalidation/b/k;->a:Lcom/google/ipc/invalidation/b/l;

    iput-object p2, p0, Lcom/google/ipc/invalidation/b/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/google/ipc/invalidation/b/r;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/b/r;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/google/ipc/invalidation/b/k;->a:Lcom/google/ipc/invalidation/b/l;

    iget-object v2, p0, Lcom/google/ipc/invalidation/b/k;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/ipc/invalidation/b/l;->a(Lcom/google/ipc/invalidation/b/r;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
