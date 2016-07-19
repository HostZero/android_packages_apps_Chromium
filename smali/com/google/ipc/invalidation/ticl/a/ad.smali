.class public final Lcom/google/ipc/invalidation/ticl/a/ad;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ar;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 114
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 116
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/v;)Lcom/google/ipc/invalidation/ticl/a/ad;
    .locals 2

    .prologue
    .line 150
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ad;

    iget-object v1, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ad;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;)Lcom/google/ipc/invalidation/ticl/a/ad;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/ad;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/ar;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "<ProtocolVersion:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 135
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 136
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 137
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 130
    return v0
.end method

.method final c()Lcom/google/a/a/a/a/v;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/google/a/a/a/a/v;

    invoke-direct {v0}, Lcom/google/a/a/a/a/v;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    .line 161
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 121
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/ad;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ad;

    .line 124
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/ad;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
