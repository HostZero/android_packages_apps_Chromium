.class final Landroid/support/v7/widget/aD;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/bC;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/aY;)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    .line 8273
    iget-object v0, v0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/P;->a(Landroid/view/View;)V

    .line 7518
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/aR;->a(Landroid/view/View;)V

    .line 442
    return-void
.end method

.method public final a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aR;->b(Landroid/support/v7/widget/aY;)V

    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V

    .line 417
    return-void
.end method

.method public final b(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$800(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V

    .line 422
    return-void
.end method

.method public final c(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aY;->setIsRecyclable(Z)V

    .line 428
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1000(Landroid/support/v7/widget/RecyclerView;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/aD;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1000(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
