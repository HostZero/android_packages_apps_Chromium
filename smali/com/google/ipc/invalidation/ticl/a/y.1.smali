.class public final Lcom/google/ipc/invalidation/ticl/a/y;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 874
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/y;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/y;->a:Lcom/google/ipc/invalidation/ticl/a/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 878
    return-void
.end method

.method static a()Lcom/google/a/a/a/y;
    .locals 1

    .prologue
    .line 918
    new-instance v0, Lcom/google/a/a/a/y;

    invoke-direct {v0}, Lcom/google/a/a/a/y;-><init>()V

    .line 919
    return-object v0
.end method

.method static a(Lcom/google/a/a/a/y;)Lcom/google/ipc/invalidation/ticl/a/y;
    .locals 1

    .prologue
    .line 909
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/y;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 1

    .prologue
    .line 894
    const-string/jumbo v0, "<ReadyUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 895
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 896
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 882
    if-ne p0, p1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    instance-of v1, p1, Lcom/google/ipc/invalidation/ticl/a/y;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
