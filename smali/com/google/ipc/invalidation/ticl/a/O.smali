.class public final Lcom/google/ipc/invalidation/ticl/a/O;
.super Ljava/lang/Object;
.source "ClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Boolean;

.field private l:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private m:Lcom/google/ipc/invalidation/ticl/a/ac;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/ac;)V
    .locals 0

    .prologue
    .line 2645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2646
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/O;->l:Lcom/google/ipc/invalidation/ticl/a/ar;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/O;->m:Lcom/google/ipc/invalidation/ticl/a/ac;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 15

    .prologue
    .line 2649
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/O;->l:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/O;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/O;->b:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/a/O;->c:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/a/O;->d:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/a/O;->e:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/a/O;->f:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/google/ipc/invalidation/ticl/a/O;->g:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/google/ipc/invalidation/ticl/a/O;->h:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/google/ipc/invalidation/ticl/a/O;->m:Lcom/google/ipc/invalidation/ticl/a/ac;

    iget-object v11, p0, Lcom/google/ipc/invalidation/ticl/a/O;->i:Ljava/lang/Boolean;

    iget-object v12, p0, Lcom/google/ipc/invalidation/ticl/a/O;->j:Ljava/lang/Integer;

    iget-object v13, p0, Lcom/google/ipc/invalidation/ticl/a/O;->k:Ljava/lang/Boolean;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/google/ipc/invalidation/ticl/a/N;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/a/ac;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;B)V

    return-object v0
.end method
