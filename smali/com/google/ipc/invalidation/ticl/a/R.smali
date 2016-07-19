.class public final Lcom/google/ipc/invalidation/ticl/a/R;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 182
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 184
    const-string/jumbo v0, "platform"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "language"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "application_info"

    invoke-static {v0, p4}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    .line 190
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/k;)Lcom/google/ipc/invalidation/ticl/a/R;
    .locals 5

    .prologue
    .line 239
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/R;

    iget-object v1, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/R;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/a/R;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/R;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/a/R;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/k;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/google/a/a/a/a/k;

    invoke-direct {v0}, Lcom/google/a/a/a/a/k;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    .line 253
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    .line 256
    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 220
    const-string/jumbo v0, "<ClientVersion:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 221
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 222
    const-string/jumbo v0, " platform="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 223
    const-string/jumbo v0, " language="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 224
    const-string/jumbo v0, " application_info="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 225
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 226
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/R;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 203
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/R;

    .line 204
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/R;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/R;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/R;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/R;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
