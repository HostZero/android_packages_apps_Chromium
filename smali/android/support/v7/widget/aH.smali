.class final Landroid/support/v7/widget/aH;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9226
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 9236
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 9237
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aI;

    invoke-virtual {v0}, Landroid/support/v7/widget/aI;->onChanged()V

    .line 9236
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9239
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 9270
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 9271
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aI;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/aI;->onItemRangeRemoved(II)V

    .line 9270
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9273
    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 9250
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 9251
    iget-object v0, p0, Landroid/support/v7/widget/aH;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aI;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Landroid/support/v7/widget/aI;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 9250
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9253
    :cond_0
    return-void
.end method
