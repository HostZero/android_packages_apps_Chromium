.class public abstract Landroid/support/v7/widget/aM;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 7926
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 7927
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aW;)V
    .locals 1

    .prologue
    .line 7950
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 9764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 7950
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v7/widget/aM;->getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 7952
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7896
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aW;)V
    .locals 0

    .prologue
    .line 7887
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aM;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 7888
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7917
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aW;)V
    .locals 0

    .prologue
    .line 7908
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aM;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 7909
    return-void
.end method
