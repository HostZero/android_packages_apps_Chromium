.class public final Lcom/google/ipc/invalidation/ticl/a/B;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/b/c;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1223
    const-string/jumbo v0, "prefix"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/B;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1224
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    .line 1225
    const-string/jumbo v0, "length"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/B;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    .line 1227
    return-void
.end method

.method static a(Lcom/google/a/a/a/B;)Lcom/google/ipc/invalidation/ticl/a/B;
    .locals 3

    .prologue
    .line 1266
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1267
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/B;

    iget-object v1, p0, Lcom/google/a/a/a/B;->a:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/B;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;I)Lcom/google/ipc/invalidation/ticl/a/B;
    .locals 2

    .prologue
    .line 1215
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/B;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/a/B;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1249
    const-string/jumbo v0, "<ReissueRegistrationsUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1250
    const-string/jumbo v0, " prefix="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1251
    const-string/jumbo v0, " length="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1252
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1253
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1244
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    add-int/2addr v0, v1

    .line 1245
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    return v0
.end method

.method final d()Lcom/google/a/a/a/B;
    .locals 2

    .prologue
    .line 1276
    new-instance v0, Lcom/google/a/a/a/B;

    invoke-direct {v0}, Lcom/google/a/a/a/B;-><init>()V

    .line 1277
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/B;->a:[B

    .line 1278
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    .line 1279
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1234
    if-ne p0, p1, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return v0

    .line 1235
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/B;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1236
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/B;

    .line 1237
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/B;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/B;->b:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
