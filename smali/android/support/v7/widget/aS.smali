.class final Landroid/support/v7/widget/aS;
.super Landroid/support/v7/widget/aI;
.source "RecyclerView.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 3998
    iput-object p1, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/aI;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 3998
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aS;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 4050
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$4100(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4051
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$4200(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4056
    :goto_0
    return-void

    .line 4053
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    # setter for: Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$4302(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 4054
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4001
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4002
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4006
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-static {v0, v2}, Landroid/support/v7/widget/aW;->a(Landroid/support/v7/widget/aW;Z)Z

    .line 4007
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)V

    .line 4012
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4013
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4015
    :cond_0
    return-void

    .line 4009
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-static {v0, v2}, Landroid/support/v7/widget/aW;->a(Landroid/support/v7/widget/aW;Z)Z

    .line 4010
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 4019
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4020
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/n;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4021
    invoke-direct {p0}, Landroid/support/v7/widget/aS;->a()V

    .line 4023
    :cond_0
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 2

    .prologue
    .line 4035
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4036
    iget-object v0, p0, Landroid/support/v7/widget/aS;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/n;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    invoke-direct {p0}, Landroid/support/v7/widget/aS;->a()V

    .line 4039
    :cond_0
    return-void
.end method
