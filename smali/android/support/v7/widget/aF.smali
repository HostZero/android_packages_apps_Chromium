.class final Landroid/support/v7/widget/aF;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/o;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 720
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    return-void

    .line 722
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    goto :goto_0

    .line 725
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    goto :goto_0

    .line 728
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    goto :goto_0

    .line 732
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/widget/aY;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 680
    iget-object v1, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/aY;

    move-result-object v1

    .line 681
    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-object v0

    .line 686
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    iget-object v3, v1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/P;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 692
    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-static {v0, p2}, Landroid/support/v7/widget/aW;->a(Landroid/support/v7/widget/aW;I)I

    .line 700
    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 711
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 712
    return-void
.end method

.method public final a(Landroid/support/v7/widget/p;)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aF;->c(Landroid/support/v7/widget/p;)V

    .line 717
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 706
    return-void
.end method

.method public final b(Landroid/support/v7/widget/p;)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aF;->c(Landroid/support/v7/widget/p;)V

    .line 740
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 745
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 746
    return-void
.end method

.method public final d(II)V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 752
    iget-object v0, p0, Landroid/support/v7/widget/aF;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 753
    return-void
.end method
