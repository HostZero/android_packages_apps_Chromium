.class final Landroid/support/v7/widget/ba;
.super Landroid/support/v4/view/a;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/aZ;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aZ;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    invoke-static {v0}, Landroid/support/v7/widget/aZ;->a(Landroid/support/v7/widget/aZ;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    iget-object v0, v0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    iget-object v0, v0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v2

    .line 8638
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 8640
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/P;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8641
    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    .line 8662
    invoke-virtual {v2}, Landroid/support/v7/widget/aN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v0

    .line 8663
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/widget/aN;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 8664
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/s;->a(IIIIZZ)Landroid/support/v4/view/a/s;

    move-result-object v0

    .line 8667
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 8662
    goto :goto_0

    :cond_2
    move v2, v4

    .line 8663
    goto :goto_1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    invoke-static {v1}, Landroid/support/v7/widget/aZ;->a(Landroid/support/v7/widget/aZ;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    iget-object v1, v1, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Landroid/support/v7/widget/ba;->a:Landroid/support/v7/widget/aZ;

    iget-object v1, v1, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v1

    .line 8804
    iget-object v2, v1, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v1, v1, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    goto :goto_0
.end method
