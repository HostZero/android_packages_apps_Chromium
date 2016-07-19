.class public Lcom/google/ipc/invalidation/b/g;
.super Ljava/lang/Object;
.source "ExponentialBackoffDelayGenerator.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:Z

.field private final e:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-lez p3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "max factor must be positive"

    invoke-static {v0, v3}, Landroid/support/customtabs/a;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    iput-object v0, p0, Lcom/google/ipc/invalidation/b/g;->e:Ljava/util/Random;

    .line 53
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "initial delay must be positive"

    invoke-static {v0, v3}, Landroid/support/customtabs/a;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    iput p2, p0, Lcom/google/ipc/invalidation/b/g;->a:I

    .line 55
    mul-int v0, p2, p3

    iput v0, p0, Lcom/google/ipc/invalidation/b/g;->b:I

    .line 56
    iget v0, p0, Lcom/google/ipc/invalidation/b/g;->b:I

    if-lez v0, :cond_2

    :goto_2
    const-string/jumbo v0, "max delay must be positive"

    invoke-static {v1, v0}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/b/g;->b()V

    .line 58
    return-void

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_1

    :cond_2
    move v1, v2

    .line 56
    goto :goto_2
.end method

.method protected constructor <init>(Ljava/util/Random;IIIZ)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ipc/invalidation/b/g;-><init>(Ljava/util/Random;II)V

    .line 70
    iput p4, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    .line 71
    iput-boolean p5, p0, Lcom/google/ipc/invalidation/b/g;->d:Z

    .line 72
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/ipc/invalidation/b/g;->a:I

    iput v0, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/b/g;->d:Z

    .line 78
    return-void
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/b/g;->d:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/g;->e:Ljava/util/Random;

    iget v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 108
    iget v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    iget v2, p0, Lcom/google/ipc/invalidation/b/g;->b:I

    if-gt v1, v2, :cond_0

    .line 109
    iget v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    .line 110
    iget v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    iget v2, p0, Lcom/google/ipc/invalidation/b/g;->b:I

    if-le v1, v2, :cond_0

    .line 111
    iget v1, p0, Lcom/google/ipc/invalidation/b/g;->b:I

    iput v1, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    .line 115
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/b/g;->d:Z

    .line 116
    return v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/ipc/invalidation/b/g;->c:I

    return v0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/b/g;->d:Z

    return v0
.end method
