.class public final Lcom/google/ipc/invalidation/ticl/a/q;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/q;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/q;->a:Lcom/google/ipc/invalidation/ticl/a/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 96
    return-void
.end method

.method static a()Lcom/google/a/a/a/q;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/google/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/q;-><init>()V

    .line 137
    return-object v0
.end method

.method static a(Lcom/google/a/a/a/q;)Lcom/google/ipc/invalidation/ticl/a/q;
    .locals 1

    .prologue
    .line 127
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/q;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "<StopDowncall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 113
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 114
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 100
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v1, p1, Lcom/google/ipc/invalidation/ticl/a/q;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
