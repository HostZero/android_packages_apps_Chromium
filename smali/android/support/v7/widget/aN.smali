.class public abstract Landroid/support/v7/widget/aN;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:Z

.field b:Landroid/support/v7/widget/P;

.field c:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5721
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aN;->a:Z

    .line 7854
    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 6885
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6889
    if-eqz p3, :cond_2

    .line 6890
    if-ltz p2, :cond_1

    .line 6911
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 6897
    goto :goto_0

    .line 6900
    :cond_2
    if-gez p2, :cond_0

    .line 6903
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 6905
    goto :goto_0

    .line 6906
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 6908
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6321
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 11764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 6321
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aO;
    .locals 1

    .prologue
    .line 6023
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/aO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aO;
    .locals 1

    .prologue
    .line 5999
    instance-of v0, p0, Landroid/support/v7/widget/aO;

    if-eqz v0, :cond_0

    .line 6000
    new-instance v0, Landroid/support/v7/widget/aO;

    check-cast p0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aO;-><init>(Landroid/support/v7/widget/aO;)V

    .line 6004
    :goto_0
    return-object v0

    .line 6001
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6002
    new-instance v0, Landroid/support/v7/widget/aO;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aO;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6004
    :cond_1
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aO;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 6211
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v2

    .line 6212
    if-nez p3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6214
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bA;->a(Landroid/support/v7/widget/aY;)V

    .line 6223
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 6224
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6225
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6226
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->unScrap()V

    .line 6230
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v7}, Landroid/support/v7/widget/P;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6255
    :cond_2
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/aO;->d:Z

    if-eqz v1, :cond_3

    .line 6259
    iget-object v1, v2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6260
    iput-boolean v7, v0, Landroid/support/v7/widget/aO;->d:Z

    .line 6262
    :cond_3
    return-void

    .line 6221
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bA;->b(Landroid/support/v7/widget/aY;)V

    goto :goto_0

    .line 6228
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 6234
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_b

    .line 6236
    iget-object v1, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/P;->b(Landroid/view/View;)I

    move-result v1

    .line 6237
    if-ne p2, v4, :cond_7

    .line 6238
    iget-object v3, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v3}, Landroid/support/v7/widget/P;->a()I

    move-result p2

    .line 6240
    :cond_7
    if-ne v1, v4, :cond_8

    .line 6241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6245
    :cond_8
    if-eq v1, p2, :cond_2

    .line 6246
    iget-object v3, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v3

    .line 9473
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v4

    .line 9474
    if-nez v4, :cond_9

    .line 9475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9478
    :cond_9
    invoke-direct {v3, v1}, Landroid/support/v7/widget/aN;->e(I)V

    .line 10442
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 11421
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v5

    .line 11422
    invoke-virtual {v5}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 11423
    iget-object v6, v3, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/bA;->a(Landroid/support/v7/widget/aY;)V

    .line 11427
    :goto_3
    iget-object v3, v3, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v5}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v5

    invoke-virtual {v3, v4, p2, v1, v5}, Landroid/support/v7/widget/P;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    .line 11425
    :cond_a
    iget-object v6, v3, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/bA;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/bA;->b(Landroid/support/v7/widget/aY;)V

    goto :goto_3

    .line 6249
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v1, p1, p2, v7}, Landroid/support/v7/widget/P;->a(Landroid/view/View;IZ)V

    .line 6250
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/aO;->c:Z

    goto/16 :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/aN;)Z
    .locals 1

    .prologue
    .line 5714
    iget-boolean v0, p0, Landroid/support/v7/widget/aN;->a:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/aN;Z)Z
    .locals 1

    .prologue
    .line 5714
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aN;->a:Z

    return v0
.end method

.method public static a(Landroid/support/v7/widget/aO;)Z
    .locals 1

    .prologue
    .line 5982
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6924
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 6925
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6938
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 6939
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7061
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 6285
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v0

    .line 6286
    if-eqz v0, :cond_0

    .line 6287
    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/P;->a(I)V

    .line 6289
    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7076
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 6401
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    .line 12408
    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/P;->d(I)V

    .line 6402
    return-void
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7091
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7106
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    iget-object v0, v0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 6040
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7387
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Landroid/support/v7/widget/aO;
.end method

.method public a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 6348
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v2

    .line 6349
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 6350
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v0

    .line 6351
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v3

    .line 6352
    if-eqz v3, :cond_1

    .line 6355
    invoke-virtual {v3}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v4}, Landroid/support/v7/widget/aW;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6360
    :cond_0
    :goto_1
    return-object v0

    .line 6349
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6360
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(ILandroid/support/v7/widget/aR;)V
    .locals 1

    .prologue
    .line 6528
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v0

    .line 6529
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aN;->d(I)V

    .line 6530
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/aR;->a(Landroid/view/View;)V

    .line 6531
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7509
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5726
    if-nez p1, :cond_0

    .line 5727
    iput-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    .line 5728
    iput-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    .line 5734
    :goto_0
    return-void

    .line 5730
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    .line 5731
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/P;

    iput-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aR;)V
    .locals 0

    .prologue
    .line 5888
    return-void
.end method

.method public final a(Landroid/support/v7/widget/aR;)V
    .locals 4

    .prologue
    .line 6750
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v0

    .line 6751
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6752
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v1

    .line 12758
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v2

    .line 12759
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12765
    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12767
    invoke-direct {p0, v0}, Landroid/support/v7/widget/aN;->d(I)V

    .line 12768
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aR;->a(Landroid/support/v7/widget/aY;)V

    .line 6751
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12770
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/aN;->e(I)V

    .line 12771
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/aR;->c(Landroid/view/View;)V

    goto :goto_1

    .line 6755
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)V
    .locals 2

    .prologue
    .line 5951
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;IZ)V

    .line 6185
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 7605
    iget-object v1, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v1, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    .line 14621
    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/D;

    move-result-object v1

    .line 14623
    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 14624
    :cond_0
    :goto_0
    return-void

    .line 14626
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/D;->a(Z)V

    .line 14631
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14632
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/D;->a(I)V

    goto :goto_0

    .line 14626
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5766
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5767
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5769
    :cond_0
    return-void
.end method

.method public b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 6057
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7432
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 7503
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 6090
    return-void
.end method

.method final b(Landroid/support/v7/widget/aR;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6785
    .line 13742
    iget-object v0, p1, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6787
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 13746
    iget-object v0, p1, Landroid/support/v7/widget/aR;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 6789
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v3

    .line 6790
    invoke-virtual {v3}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6798
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/aY;->setIsRecyclable(Z)V

    .line 6799
    invoke-virtual {v3}, Landroid/support/v7/widget/aY;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6800
    iget-object v4, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6802
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_1

    .line 6803
    iget-object v4, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c(Landroid/support/v7/widget/aY;)V

    .line 6805
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aY;->setIsRecyclable(Z)V

    .line 6806
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aR;->b(Landroid/view/View;)V

    .line 6787
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6808
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/aR;->d()V

    .line 6809
    if-lez v2, :cond_4

    .line 6810
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6812
    :cond_4
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;IZ)V

    .line 6208
    return-void
.end method

.method public c(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7372
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6549
    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/P;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 1

    .prologue
    .line 7129
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Landroid/support/v7/widget/aR;)V
    .locals 2

    .prologue
    .line 7544
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7545
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v1

    .line 7546
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aY;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/aY;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7547
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/aN;->a(ILandroid/support/v7/widget/aR;)V

    .line 7544
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7550
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 6067
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7417
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 6077
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7402
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 5792
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 7447
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 5740
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5741
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5743
    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 6540
    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v0}, Landroid/support/v7/widget/P;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 6558
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 6567
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 6576
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 6585
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 6594
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 6603
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
