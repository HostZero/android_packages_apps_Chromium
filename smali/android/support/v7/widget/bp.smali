.class public abstract Landroid/support/v7/widget/bp;
.super Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bp;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/aY;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/aY;IIII)Z
.end method

.method public final a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
    .locals 7

    .prologue
    .line 69
    iget v2, p2, Landroid/support/v7/widget/aK;->a:I

    .line 70
    iget v3, p2, Landroid/support/v7/widget/aK;->b:I

    .line 71
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 72
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 73
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 74
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/aY;IIII)Z

    move-result v0

    .line 86
    :goto_2
    return v0

    .line 72
    :cond_1
    iget v4, p3, Landroid/support/v7/widget/aK;->a:I

    goto :goto_0

    .line 73
    :cond_2
    iget v5, p3, Landroid/support/v7/widget/aK;->b:I

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/aY;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;IIII)Z
.end method

.method public final a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
    .locals 7

    .prologue
    .line 130
    iget v3, p3, Landroid/support/v7/widget/aK;->a:I

    .line 131
    iget v4, p3, Landroid/support/v7/widget/aK;->b:I

    .line 133
    invoke-virtual {p2}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v5, p3, Landroid/support/v7/widget/aK;->a:I

    .line 135
    iget v6, p3, Landroid/support/v7/widget/aK;->b:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;IIII)Z

    move-result v0

    return v0

    .line 137
    :cond_0
    iget v5, p4, Landroid/support/v7/widget/aK;->a:I

    .line 138
    iget v6, p4, Landroid/support/v7/widget/aK;->b:I

    goto :goto_0
.end method

.method public abstract b(Landroid/support/v7/widget/aY;)Z
.end method

.method public final b(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
    .locals 6

    .prologue
    .line 93
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/support/v7/widget/aK;->a:I

    iget v1, p3, Landroid/support/v7/widget/aK;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/support/v7/widget/aK;->b:I

    iget v1, p3, Landroid/support/v7/widget/aK;->b:I

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    iget v2, p2, Landroid/support/v7/widget/aK;->a:I

    iget v3, p2, Landroid/support/v7/widget/aK;->b:I

    iget v4, p3, Landroid/support/v7/widget/aK;->a:I

    iget v5, p3, Landroid/support/v7/widget/aK;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/aY;IIII)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->b(Landroid/support/v7/widget/aY;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
    .locals 6

    .prologue
    .line 112
    iget v0, p2, Landroid/support/v7/widget/aK;->a:I

    iget v1, p3, Landroid/support/v7/widget/aK;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/support/v7/widget/aK;->b:I

    iget v1, p3, Landroid/support/v7/widget/aK;->b:I

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    iget v2, p2, Landroid/support/v7/widget/aK;->a:I

    iget v3, p2, Landroid/support/v7/widget/aK;->b:I

    iget v4, p3, Landroid/support/v7/widget/aK;->a:I

    iget v5, p3, Landroid/support/v7/widget/aK;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/aY;IIII)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 1266
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Landroid/support/v7/widget/aY;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/support/v7/widget/bp;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
