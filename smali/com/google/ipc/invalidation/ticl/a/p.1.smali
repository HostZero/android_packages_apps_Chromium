.class public final Lcom/google/ipc/invalidation/ticl/a/p;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/p;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/p;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/p;->a:Lcom/google/ipc/invalidation/ticl/a/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 43
    return-void
.end method

.method static a()Lcom/google/a/a/a/p;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/google/a/a/a/p;

    invoke-direct {v0}, Lcom/google/a/a/a/p;-><init>()V

    .line 84
    return-object v0
.end method

.method static a(Lcom/google/a/a/a/p;)Lcom/google/ipc/invalidation/ticl/a/p;
    .locals 1

    .prologue
    .line 74
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/p;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/p;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "<StartDowncall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 60
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 61
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    instance-of v1, p1, Lcom/google/ipc/invalidation/ticl/a/p;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
