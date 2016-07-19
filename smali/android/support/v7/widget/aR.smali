.class public final Landroid/support/v7/widget/aR;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;

.field private final e:Ljava/util/List;

.field private f:I

.field private g:Landroid/support/v7/widget/aQ;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4184
    iput-object p1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    .line 4186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    .line 4188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    .line 4190
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aR;->e:Ljava/util/List;

    .line 4193
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/aR;->f:I

    return-void
.end method

.method private a(IIZ)Landroid/support/v7/widget/aY;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4797
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 4800
    :goto_0
    if-ge v3, v4, :cond_3

    .line 4801
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4802
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-static {v5}, Landroid/support/v7/widget/aW;->e(Landroid/support/v7/widget/aW;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4810
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aY;->addFlags(I)V

    .line 4852
    :cond_1
    :goto_1
    return-object v0

    .line 4800
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 4815
    :cond_3
    if-nez p3, :cond_7

    .line 4816
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    .line 9207
    iget-object v0, v4, Landroid/support/v7/widget/P;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 9208
    :goto_2
    if-ge v3, v5, :cond_5

    .line 9209
    iget-object v0, v4, Landroid/support/v7/widget/P;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 9210
    iget-object v6, v4, Landroid/support/v7/widget/P;->a:Landroid/support/v7/widget/R;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/R;->b(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v6

    .line 9211
    invoke-virtual {v6}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v6}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v3, v0

    .line 4817
    :goto_3
    if-eqz v3, :cond_7

    .line 4820
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4821
    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/P;->e(Landroid/view/View;)V

    .line 4822
    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/P;->b(Landroid/view/View;)I

    move-result v1

    .line 4823
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 4824
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9208
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v3, v1

    .line 9216
    goto :goto_3

    .line 4827
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/P;->d(I)V

    .line 4828
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/aR;->c(Landroid/view/View;)V

    .line 4829
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aY;->addFlags(I)V

    goto :goto_1

    .line 4836
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4837
    :goto_4
    if-ge v2, v3, :cond_9

    .line 4838
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4841
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_8

    .line 4842
    if-nez p3, :cond_1

    .line 4843
    iget-object v1, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4837
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    .line 4852
    goto/16 :goto_1
.end method

.method private a(JIZ)Landroid/support/v7/widget/aY;
    .locals 5

    .prologue
    .line 4857
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4858
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4859
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4860
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4861
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 4862
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aY;->addFlags(I)V

    .line 4863
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4872
    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v1}, Landroid/support/v7/widget/aW;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4873
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/aY;->setFlags(II)V

    .line 4904
    :cond_0
    :goto_1
    return-object v0

    .line 4878
    :cond_1
    if-nez p4, :cond_2

    .line 4882
    iget-object v2, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4883
    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4884
    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aR;->b(Landroid/view/View;)V

    .line 4858
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4890
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4891
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 4892
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4893
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 4894
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_4

    .line 4895
    if-nez p4, :cond_0

    .line 4896
    iget-object v2, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4899
    :cond_4
    if-nez p4, :cond_5

    .line 4900
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aR;->a(I)V

    .line 4891
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 4904
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/aR;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 4184
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4528
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4529
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4530
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4531
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/aR;->a(Landroid/view/ViewGroup;Z)V

    .line 4528
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4534
    :cond_1
    if-nez p2, :cond_2

    .line 4546
    :goto_1
    return-void

    .line 4538
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4539
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4540
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4542
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4543
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4544
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(I)Landroid/support/v7/widget/aY;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 4759
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 4784
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 4763
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4764
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4765
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 4766
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/aY;->addFlags(I)V

    goto :goto_0

    .line 4763
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4771
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4772
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    .line 8469
    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/n;->a(II)I

    move-result v0

    .line 4773
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 4774
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/aG;->getItemId(I)J

    move-result-wide v6

    .line 4775
    :goto_2
    if-ge v2, v4, :cond_5

    .line 4776
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4777
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemId()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 4778
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/aY;->addFlags(I)V

    goto :goto_0

    .line 4775
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 4784
    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/aY;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4677
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 7908
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mRecyclerListener$3ad7ba4f:Landroid/support/v7/app/z;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$5100$5185bdfe(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/app/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7909
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mRecyclerListener$3ad7ba4f:Landroid/support/v7/app/z;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$5100$5185bdfe(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/app/z;

    .line 7911
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7912
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aG;->onViewRecycled(Landroid/support/v7/widget/aY;)V

    .line 7914
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    if-eqz v0, :cond_2

    .line 7915
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bA;->c(Landroid/support/v7/widget/aY;)V

    .line 4679
    :cond_2
    iput-object v1, p1, Landroid/support/v7/widget/aY;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4680
    invoke-virtual {p0}, Landroid/support/v7/widget/aR;->e()Landroid/support/v7/widget/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aQ;->a(Landroid/support/v7/widget/aY;)V

    .line 4681
    return-void
.end method


# virtual methods
.method final a(IZ)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4363
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0}, Landroid/support/v7/widget/aW;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4364
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v2}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4370
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4371
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aR;->b(I)Landroid/support/v7/widget/aY;

    move-result-object v4

    .line 4372
    if-eqz v4, :cond_3

    move v0, v1

    :goto_0
    move-object v11, v4

    move v4, v0

    move-object v0, v11

    .line 4375
    :goto_1
    if-nez v0, :cond_1b

    .line 4376
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/support/v7/widget/aR;->a(IIZ)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4377
    if-eqz v0, :cond_1b

    .line 5243
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5246
    iget v5, v0, Landroid/support/v7/widget/aY;->mPosition:I

    if-ltz v5, :cond_2

    iget v5, v0, Landroid/support/v7/widget/aY;->mPosition:I

    iget-object v6, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 5247
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v2

    .line 4372
    goto :goto_0

    .line 5250
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v5}, Landroid/support/v7/widget/aW;->a()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5252
    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v5

    iget v6, v0, Landroid/support/v7/widget/aY;->mPosition:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/aG;->getItemViewType(I)I

    move-result v5

    .line 5253
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemViewType()I

    move-result v6

    if-eq v5, v6, :cond_7

    move v5, v2

    .line 4378
    :goto_2
    if-nez v5, :cond_b

    .line 4383
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aY;->addFlags(I)V

    .line 4384
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4385
    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4386
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->unScrap()V

    .line 4390
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aR;->a(Landroid/support/v7/widget/aY;)V

    move-object v0, v3

    move v3, v4

    .line 4398
    :goto_4
    if-nez v0, :cond_1a

    .line 4399
    iget-object v4, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/n;->b(I)I

    move-result v4

    .line 4400
    if-ltz v4, :cond_6

    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v5

    if-lt v4, v5, :cond_c

    .line 4401
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v2}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5257
    :cond_7
    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5258
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getItemId()J

    move-result-wide v6

    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v5

    iget v8, v0, Landroid/support/v7/widget/aY;->mPosition:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/aG;->getItemId(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    move v5, v1

    goto/16 :goto_2

    :cond_8
    move v5, v2

    goto/16 :goto_2

    :cond_9
    move v5, v1

    .line 5260
    goto/16 :goto_2

    .line 4387
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4388
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearReturnedFromScrapFlag()V

    goto/16 :goto_3

    :cond_b
    move v3, v1

    .line 4394
    goto/16 :goto_4

    .line 4406
    :cond_c
    iget-object v5, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aG;->getItemViewType(I)I

    move-result v5

    .line 4408
    iget-object v6, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4409
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aG;->getItemId(I)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v5, v2}, Landroid/support/v7/widget/aR;->a(JIZ)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4410
    if-eqz v0, :cond_d

    .line 4412
    iput v4, v0, Landroid/support/v7/widget/aY;->mPosition:I

    move v3, v1

    .line 4433
    :cond_d
    if-nez v0, :cond_f

    .line 4440
    invoke-virtual {p0}, Landroid/support/v7/widget/aR;->e()Landroid/support/v7/widget/aQ;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aQ;->a(I)Landroid/support/v7/widget/aY;

    move-result-object v4

    .line 4441
    if-eqz v4, :cond_e

    .line 4442
    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->resetInternal()V

    .line 4443
    # getter for: Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5522
    iget-object v0, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 5523
    iget-object v0, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/aR;->a(Landroid/view/ViewGroup;Z)V

    :cond_e
    move-object v0, v4

    .line 4448
    :cond_f
    if-nez v0, :cond_1a

    .line 4449
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/aG;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;

    move-result-object v0

    move-object v4, v0

    move v5, v3

    .line 4459
    :goto_5
    if-eqz v5, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/aY;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4461
    invoke-virtual {v4, v2, v10}, Landroid/support/v7/widget/aY;->setFlags(II)V

    .line 4462
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-static {v0}, Landroid/support/v7/widget/aW;->b(Landroid/support/v7/widget/aW;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4463
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e(Landroid/support/v7/widget/aY;)I

    .line 4466
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d(Landroid/support/v7/widget/aY;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 4468
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;)V
    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->access$4500(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;)V

    .line 4473
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4475
    iput p1, v4, Landroid/support/v7/widget/aY;->mPreLayoutPosition:I

    move v3, v2

    .line 4491
    :goto_6
    iget-object v0, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4493
    if-nez v0, :cond_16

    .line 4494
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 4495
    iget-object v6, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4502
    :goto_7
    iput-object v4, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    .line 4503
    if-eqz v5, :cond_18

    if-eqz v3, :cond_18

    :goto_8
    iput-boolean v1, v0, Landroid/support/v7/widget/aO;->d:Z

    .line 4504
    iget-object v0, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    return-object v0

    .line 4476
    :cond_11
    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4481
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->b(I)I

    move-result v0

    .line 4482
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v4, Landroid/support/v7/widget/aY;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4483
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/aG;->bindViewHolder(Landroid/support/v7/widget/aY;I)V

    .line 4484
    iget-object v0, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 6508
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6509
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_13

    .line 6511
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 6514
    :cond_13
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 6515
    iget-object v3, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aZ;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$4600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aZ;

    move-result-object v3

    .line 7076
    iget-object v3, v3, Landroid/support/v7/widget/aZ;->b:Landroid/support/v4/view/a;

    .line 6515
    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 4486
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4487
    iput p1, v4, Landroid/support/v7/widget/aY;->mPreLayoutPosition:I

    :cond_15
    move v3, v1

    goto :goto_6

    .line 4496
    :cond_16
    iget-object v6, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 4497
    iget-object v6, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 4498
    iget-object v6, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 4500
    :cond_17
    check-cast v0, Landroid/support/v7/widget/aO;

    goto :goto_7

    :cond_18
    move v1, v2

    .line 4503
    goto :goto_8

    :cond_19
    move v3, v2

    goto/16 :goto_6

    :cond_1a
    move-object v4, v0

    move v5, v3

    goto/16 :goto_5

    :cond_1b
    move v3, v4

    goto/16 :goto_4

    :cond_1c
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 4206
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4207
    invoke-virtual {p0}, Landroid/support/v7/widget/aR;->c()V

    .line 4208
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 4609
    invoke-direct {p0, v0}, Landroid/support/v7/widget/aR;->c(Landroid/support/v7/widget/aY;)V

    .line 4610
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4611
    return-void
.end method

.method final a(Landroid/support/v7/widget/aY;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4619
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4620
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4626
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4631
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4636
    :cond_4
    # invokes: Landroid/support/v7/widget/aY;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Landroid/support/v7/widget/aY;->access$4700(Landroid/support/v7/widget/aY;)Z

    move-result v3

    .line 4638
    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aG;->onFailedToRecycleView(Landroid/support/v7/widget/aY;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 4647
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isRecyclable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4648
    :cond_5
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aY;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 4651
    iget-object v2, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4652
    iget v4, p0, Landroid/support/v7/widget/aR;->f:I

    if-ne v2, v4, :cond_6

    if-lez v2, :cond_6

    .line 4653
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aR;->a(I)V

    .line 4655
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/aR;->f:I

    if-ge v2, v4, :cond_a

    .line 4656
    iget-object v2, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 4660
    :goto_2
    if-nez v2, :cond_9

    .line 4661
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aR;->c(Landroid/support/v7/widget/aY;)V

    move v1, v0

    move v0, v2

    .line 4670
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bA;->c(Landroid/support/v7/widget/aY;)V

    .line 4671
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 4672
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/aY;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4674
    :cond_7
    return-void

    :cond_8
    move v2, v1

    .line 4638
    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4561
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4562
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4563
    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4565
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4566
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->unScrap()V

    .line 4570
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aR;->a(Landroid/support/v7/widget/aY;)V

    .line 4571
    return-void

    .line 4567
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4568
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 4229
    iget-object v0, p0, Landroid/support/v7/widget/aR;->e:Ljava/util/List;

    return-object v0
.end method

.method final b(Landroid/support/v7/widget/aY;)V
    .locals 1

    .prologue
    .line 4731
    # getter for: Landroid/support/v7/widget/aY;->mInChangeScrap:Z
    invoke-static {p1}, Landroid/support/v7/widget/aY;->access$4900(Landroid/support/v7/widget/aY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4732
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4736
    :goto_0
    const/4 v0, 0x0

    # setter for: Landroid/support/v7/widget/aY;->mScrapContainer:Landroid/support/v7/widget/aR;
    invoke-static {p1, v0}, Landroid/support/v7/widget/aY;->access$4802(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aR;)Landroid/support/v7/widget/aR;

    .line 4737
    const/4 v0, 0x0

    # setter for: Landroid/support/v7/widget/aY;->mInChangeScrap:Z
    invoke-static {p1, v0}, Landroid/support/v7/widget/aY;->access$4902(Landroid/support/v7/widget/aY;Z)Z

    .line 4738
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->clearReturnedFromScrapFlag()V

    .line 4739
    return-void

    .line 4734
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4689
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4690
    const/4 v1, 0x0

    # setter for: Landroid/support/v7/widget/aY;->mScrapContainer:Landroid/support/v7/widget/aR;
    invoke-static {v0, v1}, Landroid/support/v7/widget/aY;->access$4802(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aR;)Landroid/support/v7/widget/aR;

    .line 4691
    const/4 v1, 0x0

    # setter for: Landroid/support/v7/widget/aY;->mInChangeScrap:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/aY;->access$4902(Landroid/support/v7/widget/aY;Z)Z

    .line 4692
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearReturnedFromScrapFlag()V

    .line 4693
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aR;->a(Landroid/support/v7/widget/aY;)V

    .line 4694
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 4583
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4584
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4585
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aR;->a(I)V

    .line 4584
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4587
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4588
    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4706
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 4707
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/aY;)Z
    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->access$5000(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aY;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4708
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/aR;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4713
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/aY;->setScrapContainer(Landroid/support/v7/widget/aR;Z)V

    .line 4714
    iget-object v1, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4722
    :goto_0
    return-void

    .line 4716
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    .line 4719
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/aY;->setScrapContainer(Landroid/support/v7/widget/aR;Z)V

    .line 4720
    iget-object v1, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 4750
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4751
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4752
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4754
    :cond_0
    return-void
.end method

.method final e()Landroid/support/v7/widget/aQ;
    .locals 1

    .prologue
    .line 5012
    iget-object v0, p0, Landroid/support/v7/widget/aR;->g:Landroid/support/v7/widget/aQ;

    if-nez v0, :cond_0

    .line 5013
    new-instance v0, Landroid/support/v7/widget/aQ;

    invoke-direct {v0}, Landroid/support/v7/widget/aQ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aR;->g:Landroid/support/v7/widget/aQ;

    .line 5015
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aR;->g:Landroid/support/v7/widget/aQ;

    return-object v0
.end method

.method final f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5064
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5065
    :goto_0
    if-ge v2, v3, :cond_0

    .line 5066
    iget-object v0, p0, Landroid/support/v7/widget/aR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 5067
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearOldPosition()V

    .line 5065
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5069
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5070
    :goto_1
    if-ge v2, v3, :cond_1

    .line 5071
    iget-object v0, p0, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearOldPosition()V

    .line 5070
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5073
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5074
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5075
    :goto_2
    if-ge v1, v2, :cond_2

    .line 5076
    iget-object v0, p0, Landroid/support/v7/widget/aR;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->clearOldPosition()V

    .line 5075
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5079
    :cond_2
    return-void
.end method
