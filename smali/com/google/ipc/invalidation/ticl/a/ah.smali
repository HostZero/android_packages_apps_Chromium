.class public final Lcom/google/ipc/invalidation/ticl/a/ah;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ag;

.field private final b:Lcom/google/ipc/invalidation/ticl/a/ap;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ag;Lcom/google/ipc/invalidation/ticl/a/ap;)V
    .locals 1

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2130
    const-string/jumbo v0, "registration"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2131
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    .line 2132
    const-string/jumbo v0, "status"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2133
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    .line 2134
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/z;)Lcom/google/ipc/invalidation/ticl/a/ah;
    .locals 3

    .prologue
    .line 2173
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ah;

    iget-object v1, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Lcom/google/a/a/a/a/y;)Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ap;->a(Lcom/google/a/a/a/a/H;)Lcom/google/ipc/invalidation/ticl/a/ap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ah;-><init>(Lcom/google/ipc/invalidation/ticl/a/ag;Lcom/google/ipc/invalidation/ticl/a/ap;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/ag;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2156
    const-string/jumbo v0, "<RegistrationStatus:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2157
    const-string/jumbo v0, " registration="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2158
    const-string/jumbo v0, " status="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2159
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2160
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2151
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2152
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/ap;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2141
    if-ne p0, p1, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return v0

    .line 2142
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ah;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2143
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ah;

    .line 2144
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ah;->a:Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ah;->b:Lcom/google/ipc/invalidation/ticl/a/ap;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
