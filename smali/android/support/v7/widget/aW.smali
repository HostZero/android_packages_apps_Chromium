.class public final Landroid/support/v7/widget/aW;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9340
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aW;->b:I

    .line 9347
    iput v1, p0, Landroid/support/v7/widget/aW;->a:I

    .line 9352
    iput v1, p0, Landroid/support/v7/widget/aW;->c:I

    .line 9358
    iput v1, p0, Landroid/support/v7/widget/aW;->d:I

    .line 9360
    iput-boolean v1, p0, Landroid/support/v7/widget/aW;->e:Z

    .line 9362
    iput-boolean v1, p0, Landroid/support/v7/widget/aW;->f:Z

    .line 9364
    iput-boolean v1, p0, Landroid/support/v7/widget/aW;->g:Z

    .line 9366
    iput-boolean v1, p0, Landroid/support/v7/widget/aW;->h:Z

    .line 9368
    iput-boolean v1, p0, Landroid/support/v7/widget/aW;->i:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/aW;I)I
    .locals 1

    .prologue
    .line 9338
    iget v0, p0, Landroid/support/v7/widget/aW;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aW;->d:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/aW;)Z
    .locals 1

    .prologue
    .line 9338
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->h:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/aW;Z)Z
    .locals 0

    .prologue
    .line 9338
    iput-boolean p1, p0, Landroid/support/v7/widget/aW;->e:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/aW;I)I
    .locals 1

    .prologue
    .line 9338
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aW;->d:I

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aW;)Z
    .locals 1

    .prologue
    .line 9338
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->g:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aW;Z)Z
    .locals 0

    .prologue
    .line 9338
    iput-boolean p1, p0, Landroid/support/v7/widget/aW;->f:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/aW;I)I
    .locals 0

    .prologue
    .line 9338
    iput p1, p0, Landroid/support/v7/widget/aW;->c:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/aW;)Z
    .locals 1

    .prologue
    .line 9338
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/aW;Z)Z
    .locals 0

    .prologue
    .line 9338
    iput-boolean p1, p0, Landroid/support/v7/widget/aW;->g:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/aW;)Z
    .locals 1

    .prologue
    .line 9338
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->e:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/aW;Z)Z
    .locals 0

    .prologue
    .line 9338
    iput-boolean p1, p0, Landroid/support/v7/widget/aW;->h:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/aW;)Z
    .locals 1

    .prologue
    .line 9338
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->f:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/aW;Z)Z
    .locals 0

    .prologue
    .line 9338
    iput-boolean p1, p0, Landroid/support/v7/widget/aW;->i:Z

    return p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 9381
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 9392
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->h:Z

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 9465
    iget v0, p0, Landroid/support/v7/widget/aW;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 9501
    iget-boolean v0, p0, Landroid/support/v7/widget/aW;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aW;->c:I

    iget v1, p0, Landroid/support/v7/widget/aW;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aW;->a:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/aW;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aW;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aW;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aW;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aW;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aW;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aW;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aW;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
