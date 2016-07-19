.class public final Landroid/support/v7/widget/aZ;
.super Landroid/support/v4/view/a;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field final b:Landroid/support/v4/view/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 79
    new-instance v0, Landroid/support/v7/widget/ba;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ba;-><init>(Landroid/support/v7/widget/aZ;)V

    iput-object v0, p0, Landroid/support/v7/widget/aZ;->b:Landroid/support/v4/view/a;

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/aZ;)Z
    .locals 1

    .prologue
    .line 30
    .line 11039
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    .line 30
    return v0
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 10039
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/aN;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 57
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/CharSequence;)V

    .line 9039
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    .line 58
    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v2

    .line 9554
    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    .line 9584
    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9586
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    .line 9587
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/h;->i(Z)V

    .line 9589
    :cond_1
    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9591
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    .line 9592
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/h;->i(Z)V

    .line 9716
    :cond_3
    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v1

    .line 9735
    :goto_0
    iget-object v3, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v3

    if-nez v3, :cond_9

    .line 9594
    :cond_5
    :goto_1
    invoke-static {v0, v1, v4, v4}, Landroid/support/v4/view/a/r;->a(IIZI)Landroid/support/v4/view/a/r;

    move-result-object v0

    .line 9600
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(Ljava/lang/Object;)V

    .line 61
    :cond_6
    return-void

    .line 9719
    :cond_7
    invoke-virtual {v2}, Landroid/support/v7/widget/aN;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 9738
    :cond_9
    invoke-virtual {v2}, Landroid/support/v7/widget/aN;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v2, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v1

    goto :goto_1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 8796
    :cond_0
    :goto_0
    return v1

    .line 8039
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    .line 47
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/aZ;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v4

    .line 8757
    iget-object v0, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v0, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    .line 8773
    iget-object v0, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8777
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 8795
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 8798
    :cond_2
    iget-object v1, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 48
    goto :goto_0

    .line 8779
    :sswitch_0
    iget-object v0, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8780
    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->i()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->k()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->m()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 8782
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8783
    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->h()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->j()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->l()I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v3, v3

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    .line 8787
    :sswitch_1
    iget-object v0, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8788
    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->i()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->k()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->m()I

    move-result v3

    sub-int/2addr v0, v3

    .line 8790
    :goto_3
    iget-object v3, v4, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8791
    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->h()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->j()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/aN;->l()I

    move-result v5

    sub-int/2addr v3, v5

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 8777
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
