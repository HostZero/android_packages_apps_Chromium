.class public final Lcom/google/ipc/invalidation/ticl/a/T;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3086
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 3087
    const-string/jumbo v0, "code"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/T;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3088
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    .line 3089
    const-string/jumbo v0, "description"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/T;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3090
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    .line 3091
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/m;)Lcom/google/ipc/invalidation/ticl/a/T;
    .locals 3

    .prologue
    .line 3130
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 3131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/T;

    iget-object v1, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/T;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3093
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 3113
    const-string/jumbo v0, "<ErrorMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 3114
    const-string/jumbo v0, " code="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 3115
    const-string/jumbo v0, " description="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 3116
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 3117
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 3107
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 3108
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3109
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3098
    if-ne p0, p1, :cond_1

    .line 3101
    :cond_0
    :goto_0
    return v0

    .line 3099
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/T;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3100
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/T;

    .line 3101
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/T;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/T;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/T;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
