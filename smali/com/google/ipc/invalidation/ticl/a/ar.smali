.class public final Lcom/google/ipc/invalidation/ticl/a/ar;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 44
    const-string/jumbo v0, "major_version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string/jumbo v0, "major_version"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    .line 47
    const-string/jumbo v0, "minor_version"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string/jumbo v0, "minor_version"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    .line 50
    return-void
.end method

.method public static a(II)Lcom/google/ipc/invalidation/ticl/a/ar;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ar;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;
    .locals 3

    .prologue
    .line 89
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v1, p0, Lcom/google/a/a/a/a/J;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/J;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ar;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "<Version:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 73
    const-string/jumbo v0, " major_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 74
    const-string/jumbo v0, " minor_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 75
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 76
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method final c()Lcom/google/a/a/a/a/J;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    .line 100
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/J;->a:Ljava/lang/Integer;

    .line 101
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/J;->b:Ljava/lang/Integer;

    .line 102
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ar;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 60
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ar;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ar;->b:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
