.class public final Lcom/google/ipc/invalidation/b/b;
.super Ljava/lang/Object;
.source "Box.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/b;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/ipc/invalidation/b/b;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/b/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
