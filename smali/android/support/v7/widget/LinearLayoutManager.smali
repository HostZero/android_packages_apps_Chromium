.class public final Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/aN;
.source "LinearLayoutManager.java"


# instance fields
.field a:Landroid/support/v7/widget/ax;

.field private d:I

.field private e:Landroid/support/v7/widget/ah;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field private n:Landroid/support/v7/widget/af;


# direct methods
.method private constructor <init>(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/support/v7/widget/aN;-><init>()V

    .line 95
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 102
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 109
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:Z

    .line 115
    iput-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 127
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 131
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/af;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    .line 9324
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 9325
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-eq v3, v0, :cond_0

    .line 9328
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    .line 9329
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    .line 9330
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()V

    .line 9372
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 9373
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eq v1, v0, :cond_1

    .line 9376
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 9377
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()V

    .line 157
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 146
    return-void
.end method

.method private a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 850
    if-lez v0, :cond_1

    .line 851
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v0

    neg-int v0, v0

    .line 856
    add-int v1, p1, v0

    .line 857
    if-eqz p4, :cond_0

    .line 859
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 860
    if-lez v1, :cond_0

    .line 861
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ax;->a(I)V

    .line 862
    add-int/2addr v0, v1

    .line 865
    :cond_0
    :goto_0
    return v0

    .line 853
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I
    .locals 12

    .prologue
    .line 1321
    iget v6, p2, Landroid/support/v7/widget/ah;->c:I

    .line 1322
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1324
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    if-gez v0, :cond_0

    .line 1325
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    iget v1, p2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1327
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;)V

    .line 1329
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    iget v1, p2, Landroid/support/v7/widget/ah;->h:I

    add-int/2addr v0, v1

    .line 1330
    new-instance v7, Landroid/support/v7/widget/ag;

    invoke-direct {v7}, Landroid/support/v7/widget/ag;-><init>()V

    move v5, v0

    .line 1331
    :goto_0
    if-lez v5, :cond_5

    .line 19948
    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    if-ltz v0, :cond_6

    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {p3}, Landroid/support/v7/widget/aW;->d()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    .line 1331
    :goto_1
    if-eqz v0, :cond_5

    .line 20203
    const/4 v0, 0x0

    iput v0, v7, Landroid/support/v7/widget/ag;->a:I

    .line 20204
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->b:Z

    .line 20205
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->c:Z

    .line 20206
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->d:Z

    .line 20370
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/aR;)Landroid/view/View;

    move-result-object v8

    .line 20371
    if-nez v8, :cond_7

    .line 20377
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->b:Z

    .line 1334
    :goto_2
    iget-boolean v0, v7, Landroid/support/v7/widget/ag;->b:Z

    if-nez v0, :cond_5

    .line 1337
    iget v0, p2, Landroid/support/v7/widget/ah;->b:I

    iget v1, v7, Landroid/support/v7/widget/ag;->a:I

    iget v2, p2, Landroid/support/v7/widget/ah;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->b:I

    .line 1344
    iget-boolean v0, v7, Landroid/support/v7/widget/ag;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-object v0, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1346
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    iget v1, v7, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->c:I

    .line 1348
    iget v0, v7, Landroid/support/v7/widget/ag;->a:I

    sub-int v0, v5, v0

    .line 1351
    :goto_3
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    .line 1352
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    iget v2, v7, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1353
    iget v1, p2, Landroid/support/v7/widget/ah;->c:I

    if-gez v1, :cond_3

    .line 1354
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    iget v2, p2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1356
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;)V

    .line 1358
    :cond_4
    if-eqz p4, :cond_13

    iget-boolean v1, v7, Landroid/support/v7/widget/ag;->d:Z

    if-eqz v1, :cond_13

    .line 1365
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    sub-int v0, v6, v0

    return v0

    .line 19948
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 20380
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 20381
    iget-object v1, p2, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-nez v1, :cond_c

    .line 20382
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iget v1, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    :goto_4
    if-ne v2, v1, :cond_b

    .line 21195
    const/4 v1, -0x1

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/aN;->b(Landroid/view/View;I)V

    .line 22855
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 22857
    iget-object v2, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 22858
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    .line 22859
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    .line 22861
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->h()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->j()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->l()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/aO;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/aO;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    iget v9, v1, Landroid/support/v7/widget/aO;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->c()Z

    move-result v10

    invoke-static {v4, v3, v9, v10}, Landroid/support/v7/widget/aN;->a(IIIZ)I

    move-result v3

    .line 22865
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->i()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->k()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->m()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/aO;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/aO;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    iget v1, v1, Landroid/support/v7/widget/aO;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->d()Z

    move-result v9

    invoke-static {v4, v2, v1, v9}, Landroid/support/v7/widget/aN;->a(IIIZ)I

    move-result v1

    .line 22869
    invoke-virtual {v8, v3, v1}, Landroid/view/View;->measure(II)V

    .line 20397
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/ag;->a:I

    .line 20399
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 20400
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 20401
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    sub-int/2addr v1, v2

    .line 20402
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/ax;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 20407
    :goto_6
    iget v3, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 20408
    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    .line 20409
    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v7, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v3, v9

    move v11, v3

    move v3, v2

    move v2, v11

    .line 20428
    :goto_7
    iget v9, v0, Landroid/support/v7/widget/aO;->leftMargin:I

    add-int/2addr v3, v9

    iget v9, v0, Landroid/support/v7/widget/aO;->topMargin:I

    add-int/2addr v2, v9

    iget v9, v0, Landroid/support/v7/widget/aO;->rightMargin:I

    sub-int v9, v1, v9

    iget v1, v0, Landroid/support/v7/widget/aO;->bottomMargin:I

    sub-int/2addr v4, v1

    .line 22970
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    iget-object v1, v1, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 22971
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-virtual {v8, v3, v2, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 23736
    iget-object v1, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v1}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v1

    .line 20436
    if-nez v1, :cond_8

    .line 23747
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isUpdated()Z

    move-result v0

    .line 20436
    if-eqz v0, :cond_9

    .line 20437
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->c:Z

    .line 20439
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v7, Landroid/support/v7/widget/ag;->d:Z

    goto/16 :goto_2

    .line 20382
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 20386
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 20389
    :cond_c
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iget v1, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_8
    if-ne v2, v1, :cond_e

    .line 22166
    const/4 v1, -0x1

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 20389
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 20393
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 20404
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()I

    move-result v2

    .line 20405
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ax;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_6

    .line 20411
    :cond_10
    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    .line 20412
    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v7, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v4, v9

    move v11, v3

    move v3, v2

    move v2, v11

    goto :goto_7

    .line 20415
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v2

    .line 20416
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ax;->d(Landroid/view/View;)I

    move-result v1

    add-int v4, v2, v1

    .line 20418
    iget v1, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    .line 20419
    iget v1, p2, Landroid/support/v7/widget/ah;->b:I

    .line 20420
    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v7, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v3, v9

    goto/16 :goto_7

    .line 20422
    :cond_12
    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    .line 20423
    iget v1, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v7, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v1, v9

    goto/16 :goto_7

    :cond_13
    move v5, v0

    goto/16 :goto_0

    :cond_14
    move v0, v5

    goto/16 :goto_3
.end method

.method private a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1580
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1583
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v5

    .line 1584
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v6

    .line 1585
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1586
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1587
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 1588
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1589
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1590
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 24736
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v0

    .line 1590
    if-eqz v0, :cond_1

    .line 1591
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1586
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1585
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1594
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1596
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1597
    goto :goto_2

    .line 1604
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1689
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1690
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v3

    .line 1691
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v4

    .line 1692
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1693
    :goto_0
    const/4 v2, 0x0

    .line 1694
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1695
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1696
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v5

    .line 1697
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v6

    .line 1698
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1699
    if-eqz p3, :cond_0

    .line 1700
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1710
    :cond_0
    :goto_2
    return-object v1

    .line 1692
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1702
    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    .line 1694
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1710
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1508
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    .line 1509
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    .line 899
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ah;->e:I

    .line 901
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 902
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v1, v0, Landroid/support/v7/widget/ah;->f:I

    .line 903
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p2, v0, Landroid/support/v7/widget/ah;->b:I

    .line 904
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ah;->g:I

    .line 905
    return-void

    :cond_0
    move v0, v1

    .line 899
    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/aW;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1118
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/aW;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ah;->h:I

    .line 1119
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p1, v2, Landroid/support/v7/widget/ah;->f:I

    .line 1121
    if-ne p1, v1, :cond_2

    .line 1122
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v2, Landroid/support/v7/widget/ah;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4}, Landroid/support/v7/widget/ax;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/ah;->h:I

    .line 1124
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Landroid/view/View;

    move-result-object v2

    .line 1126
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/ah;->e:I

    .line 1128
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ah;->b:I

    .line 1131
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1144
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p2, v1, Landroid/support/v7/widget/ah;->c:I

    .line 1145
    if-eqz p3, :cond_0

    .line 1146
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v1, Landroid/support/v7/widget/ah;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/ah;->c:I

    .line 1148
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v0, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1149
    return-void

    :cond_1
    move v0, v1

    .line 1126
    goto :goto_0

    .line 1135
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Landroid/view/View;

    move-result-object v2

    .line 1136
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v4, v3, Landroid/support/v7/widget/ah;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5}, Landroid/support/v7/widget/ax;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ah;->h:I

    .line 1137
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/ah;->e:I

    .line 1139
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ah;->b:I

    .line 1141
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1137
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/aR;II)V
    .locals 1

    .prologue
    .line 1191
    if-ne p2, p3, :cond_1

    .line 1206
    :cond_0
    return-void

    .line 1197
    :cond_1
    if-le p3, p2, :cond_2

    .line 1198
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1199
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/aR;)V

    .line 1198
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1202
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1203
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/aR;)V

    .line 1202
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1297
    iget-boolean v0, p2, Landroid/support/v7/widget/ah;->a:Z

    if-nez v0, :cond_1

    .line 19240
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1301
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    .line 18256
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v2

    .line 18257
    if-ltz v0, :cond_0

    .line 18264
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->e()I

    move-result v3

    sub-int/2addr v3, v0

    .line 18265
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 18266
    :goto_1
    if-ge v0, v2, :cond_0

    .line 18267
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    .line 18268
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 18269
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;II)V

    goto :goto_0

    .line 18266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18274
    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 18275
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 18276
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 18277
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;II)V

    goto :goto_0

    .line 18274
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1303
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/ah;->g:I

    .line 19217
    if-ltz v2, :cond_0

    .line 19226
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v3

    .line 19227
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_7

    .line 19228
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    .line 19229
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 19230
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    .line 19231
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;II)V

    goto :goto_0

    .line 19228
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 19236
    :goto_4
    if-ge v0, v3, :cond_0

    .line 19237
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    .line 19238
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    .line 19239
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;II)V

    goto :goto_0

    .line 19236
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private a(Landroid/support/v7/widget/af;)V
    .locals 2

    .prologue
    .line 894
    iget v0, p1, Landroid/support/v7/widget/af;->a:I

    iget v1, p1, Landroid/support/v7/widget/af;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 895
    return-void
.end method

.method private b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I
    .locals 4

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 875
    if-lez v0, :cond_1

    .line 877
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v0

    neg-int v0, v0

    .line 881
    add-int v1, p1, v0

    .line 882
    if-eqz p4, :cond_0

    .line 884
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 885
    if-lez v1, :cond_0

    .line 886
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ax;->a(I)V

    .line 887
    sub-int/2addr v0, v1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 879
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1526
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    .line 1527
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1530
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 914
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ah;->e:I

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v1, v0, Landroid/support/v7/widget/ah;->f:I

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p2, v0, Landroid/support/v7/widget/ah;->b:I

    .line 918
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ah;->g:I

    .line 920
    return-void

    :cond_0
    move v0, v1

    .line 914
    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/af;)V
    .locals 2

    .prologue
    .line 908
    iget v0, p1, Landroid/support/v7/widget/af;->a:I

    iget v1, p1, Landroid/support/v7/widget/af;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 909
    return-void
.end method

.method private c(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1565
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1152
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1174
    :goto_0
    return p1

    .line 1155
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput-boolean v1, v0, Landroid/support/v7/widget/ah;->a:Z

    .line 1156
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1157
    if-lez p1, :cond_2

    move v0, v1

    .line 1158
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1159
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/aW;)V

    .line 1160
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1161
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1162
    if-gez v1, :cond_3

    move p1, v2

    .line 1166
    goto :goto_0

    .line 1157
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1168
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1169
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->a(I)V

    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput p1, v0, Landroid/support/v7/widget/ah;->i:I

    goto :goto_0
.end method

.method private d(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1574
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->f()I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/aW;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1052
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 18044
    :cond_0
    :goto_0
    return v2

    .line 1055
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1056
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 18032
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 18036
    invoke-static {v4}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v6

    invoke-static {v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 18038
    invoke-static {v4}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v7

    invoke-static {v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18040
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 18043
    :goto_3
    if-eqz v1, :cond_0

    .line 18046
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 18048
    invoke-static {v4}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v5

    invoke-static {v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v0

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 18050
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 18052
    int-to-float v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->c()I

    move-result v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1056
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 18040
    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3
.end method

.method private i(Landroid/support/v7/widget/aW;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1063
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 18068
    :cond_0
    :goto_0
    return v2

    .line 1066
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1067
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    .line 18063
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 18067
    if-nez v1, :cond_4

    .line 18068
    invoke-static {v4}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1067
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 18070
    :cond_4
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 18072
    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->f()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/aW;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1074
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 18087
    :cond_0
    :goto_0
    return v2

    .line 1077
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1078
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    .line 18082
    invoke-virtual {p0}, Landroid/support/v7/widget/aN;->g()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 18086
    if-nez v1, :cond_4

    .line 18087
    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1078
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 18090
    :cond_4
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 18092
    invoke-static {v4}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Landroid/support/v7/widget/aN;->a(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 18096
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/aW;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 1078
    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 340
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 343
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 345
    return-void

    .line 343
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 923
    .line 15137
    iget-object v1, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 923
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    if-nez v0, :cond_0

    .line 15941
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 928
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    .line 930
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    if-nez v0, :cond_1

    .line 931
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    .line 16177
    packed-switch v0, :pswitch_data_0

    .line 16183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16194
    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/ay;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ay;-><init>(Landroid/support/v7/widget/aN;)V

    .line 931
    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    .line 933
    :cond_1
    return-void

    .line 16270
    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/az;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/aN;)V

    goto :goto_0

    .line 16177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private q()Landroid/view/View;
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Landroid/view/View;
    .locals 1

    .prologue
    .line 1496
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I
    .locals 2

    .prologue
    .line 1003
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1004
    const/4 v0, 0x0

    .line 1006
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/aO;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 180
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/aO;-><init>(II)V

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    .line 386
    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 390
    sub-int v1, p1, v1

    .line 391
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 392
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 398
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/aN;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 261
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 262
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()V

    .line 270
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aR;)V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/aN;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aR;)V

    .line 219
    return-void
.end method

.method public final a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)V
    .locals 12

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 465
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->d()I

    move-result v0

    if-nez v0, :cond_1

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/aR;)V

    .line 619
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 474
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ah;->a:Z

    .line 477
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()V

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    .line 10107
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/af;->a:I

    .line 10108
    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/af;->b:I

    .line 10109
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/af;->c:Z

    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/af;->c:Z

    .line 482
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    .line 10762
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    .line 10763
    :cond_3
    const/4 v0, 0x0

    .line 10693
    :goto_1
    if-nez v0, :cond_6

    .line 11721
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-eqz v0, :cond_20

    .line 12650
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1b

    .line 12651
    const/4 v0, 0x0

    .line 11725
    :cond_4
    :goto_2
    if-eqz v0, :cond_1f

    invoke-static {v1, v0, p2}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/af;Landroid/view/View;Landroid/support/v7/widget/aW;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 13138
    iget-object v2, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->b()I

    move-result v2

    .line 13139
    if-ltz v2, :cond_1d

    .line 13140
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->a(Landroid/view/View;)V

    .line 11727
    :cond_5
    :goto_3
    const/4 v0, 0x1

    .line 10700
    :goto_4
    if-nez v0, :cond_6

    .line 10709
    invoke-virtual {v1}, Landroid/support/v7/widget/af;->a()V

    .line 10710
    const/4 v0, 0x0

    iput v0, v1, Landroid/support/v7/widget/af;->a:I

    .line 491
    :cond_6
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/aW;)I

    move-result v0

    .line 494
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->i:I

    if-ltz v1, :cond_27

    .line 496
    const/4 v1, 0x0

    .line 501
    :goto_5
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 502
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->g()I

    move-result v2

    add-int/2addr v0, v2

    .line 503
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_7

    .line 508
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    .line 509
    if-eqz v2, :cond_7

    .line 512
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v3, :cond_28

    .line 513
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->d()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 515
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int/2addr v2, v3

    .line 521
    :goto_6
    if-lez v2, :cond_29

    .line 522
    add-int/2addr v1, v2

    .line 531
    :cond_7
    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;)V

    .line 533
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    iget-boolean v2, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v2, :cond_2a

    .line 535
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/af;)V

    .line 536
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v1, v2, Landroid/support/v7/widget/ah;->h:I

    .line 537
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 538
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->b:I

    .line 539
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v2, Landroid/support/v7/widget/ah;->d:I

    .line 540
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    if-lez v2, :cond_8

    .line 541
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v0, v2

    .line 544
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/af;)V

    .line 545
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v0, v2, Landroid/support/v7/widget/ah;->h:I

    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v0, Landroid/support/v7/widget/ah;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v4, v4, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/support/v7/widget/ah;->d:I

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v0, Landroid/support/v7/widget/ah;->b:I

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->c:I

    if-lez v0, :cond_36

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->c:I

    .line 553
    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 554
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v0, v1, Landroid/support/v7/widget/ah;->h:I

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->b:I

    :goto_8
    move v1, v0

    move v0, v2

    .line 588
    :cond_9
    :goto_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v2

    if-lez v2, :cond_35

    .line 592
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v2, :cond_2c

    .line 593
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I

    move-result v2

    .line 594
    add-int/2addr v1, v2

    .line 595
    add-int/2addr v0, v2

    .line 596
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I

    move-result v2

    .line 597
    add-int/2addr v1, v2

    .line 598
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 13642
    :goto_a
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->e()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 609
    :cond_a
    :goto_b
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 610
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 611
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->a()V

    .line 614
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    goto/16 :goto_0

    .line 10766
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->d()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 10767
    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 10768
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 10772
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 10777
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    iput v0, v1, Landroid/support/v7/widget/af;->a:I

    .line 10778
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10781
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    .line 10782
    iget-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_f

    .line 10783
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    .line 10789
    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10786
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    goto :goto_c

    .line 10792
    :cond_10
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_19

    .line 10793
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v0

    .line 10794
    if-eqz v0, :cond_15

    .line 10795
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v2

    .line 10796
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->f()I

    move-result v3

    if-le v2, v3, :cond_11

    .line 10798
    invoke-virtual {v1}, Landroid/support/v7/widget/af;->a()V

    .line 10840
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10801
    :cond_11
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 10803
    if-gez v2, :cond_12

    .line 10804
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    .line 10805
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    goto :goto_d

    .line 10808
    :cond_12
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 10810
    if-gez v2, :cond_13

    .line 10811
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    .line 10812
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    goto :goto_d

    .line 10815
    :cond_13
    iget-boolean v2, v1, Landroid/support/v7/widget/af;->c:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_e
    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    .line 10828
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10815
    :cond_14
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_e

    .line 10820
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-lez v0, :cond_16

    .line 10822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 10823
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    if-ge v2, v0, :cond_17

    const/4 v0, 0x1

    :goto_10
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-ne v0, v2, :cond_18

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    .line 10826
    :cond_16
    invoke-virtual {v1}, Landroid/support/v7/widget/af;->a()V

    goto :goto_f

    .line 10823
    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    goto :goto_11

    .line 10831
    :cond_19
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    .line 10833
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_1a

    .line 10834
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_d

    .line 10837
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_d

    .line 12653
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 12654
    if-eqz v0, :cond_1c

    iget-object v2, p0, Landroid/support/v7/widget/aN;->b:Landroid/support/v7/widget/P;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/P;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12655
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 13143
    :cond_1d
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v3

    iput v3, v1, Landroid/support/v7/widget/af;->a:I

    .line 13144
    iget-boolean v3, v1, Landroid/support/v7/widget/af;->c:Z

    if-eqz v3, :cond_1e

    .line 13145
    iget-object v3, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->d()I

    move-result v3

    sub-int v2, v3, v2

    .line 13146
    iget-object v3, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v3

    .line 13147
    sub-int/2addr v2, v3

    .line 13148
    iget-object v3, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->d()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/support/v7/widget/af;->b:I

    .line 13150
    if-lez v2, :cond_5

    .line 13151
    iget-object v3, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v3

    .line 13152
    iget v4, v1, Landroid/support/v7/widget/af;->b:I

    sub-int v3, v4, v3

    .line 13153
    iget-object v4, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4}, Landroid/support/v7/widget/ax;->c()I

    move-result v4

    .line 13154
    iget-object v5, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v4

    .line 13156
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 13157
    sub-int v0, v3, v0

    .line 13158
    if-gez v0, :cond_5

    .line 13160
    iget v3, v1, Landroid/support/v7/widget/af;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_3

    .line 13164
    :cond_1e
    iget-object v3, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v3

    .line 13165
    iget-object v4, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v4}, Landroid/support/v7/widget/ax;->c()I

    move-result v4

    sub-int v4, v3, v4

    .line 13166
    iput v3, v1, Landroid/support/v7/widget/af;->b:I

    .line 13167
    if-lez v4, :cond_5

    .line 13168
    iget-object v5, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 13170
    iget-object v5, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5}, Landroid/support/v7/widget/ax;->d()I

    move-result v5

    sub-int v2, v5, v2

    .line 13172
    iget-object v5, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    .line 13174
    iget-object v2, v1, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->d()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v2, v0

    .line 13176
    sub-int/2addr v0, v3

    .line 13177
    if-gez v0, :cond_5

    .line 13178
    iget v2, v1, Landroid/support/v7/widget/af;->b:I

    neg-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_3

    .line 11729
    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_21

    .line 11754
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 11732
    :cond_21
    iget-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_24

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    .line 11735
    :goto_12
    if-eqz v0, :cond_20

    .line 11736
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->a(Landroid/view/View;)V

    .line 11739
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->a()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->e()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 11741
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->d()I

    move-result v3

    if-ge v2, v3, :cond_22

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->c()I

    move-result v2

    if-ge v0, v2, :cond_25

    :cond_22
    const/4 v0, 0x1

    .line 11746
    :goto_13
    if-eqz v0, :cond_23

    .line 11747
    iget-boolean v0, v1, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    :goto_14
    iput v0, v1, Landroid/support/v7/widget/af;->b:I

    .line 11752
    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 11732
    :cond_24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    .line 11741
    :cond_25
    const/4 v0, 0x0

    goto :goto_13

    .line 11747
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    goto :goto_14

    .line 499
    :cond_27
    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_5

    .line 517
    :cond_28
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3}, Landroid/support/v7/widget/ax;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 519
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int v2, v3, v2

    goto/16 :goto_6

    .line 524
    :cond_29
    sub-int/2addr v0, v2

    goto/16 :goto_7

    .line 560
    :cond_2a
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/af;)V

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v0, v2, Landroid/support/v7/widget/ah;->h:I

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->b:I

    .line 564
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->d:I

    .line 565
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->c:I

    if-lez v3, :cond_2b

    .line 566
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v1, v3

    .line 569
    :cond_2b
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/af;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/af;)V

    .line 570
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v1, v3, Landroid/support/v7/widget/ah;->h:I

    .line 571
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v1, Landroid/support/v7/widget/ah;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v4, v4, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/support/v7/widget/ah;->d:I

    .line 572
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 573
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->b:I

    .line 575
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->c:I

    if-lez v3, :cond_9

    .line 576
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->c:I

    .line 578
    invoke-direct {p0, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v3, v0, Landroid/support/v7/widget/ah;->h:I

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->b:I

    goto/16 :goto_9

    .line 600
    :cond_2c
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I

    move-result v2

    .line 601
    add-int/2addr v1, v2

    .line 602
    add-int/2addr v0, v2

    .line 603
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;Z)I

    move-result v2

    .line 604
    add-int/2addr v1, v2

    .line 605
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_a

    .line 13647
    :cond_2d
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 13648
    invoke-virtual {p1}, Landroid/support/v7/widget/aR;->b()Ljava/util/List;

    move-result-object v7

    .line 13649
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 13650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v9

    .line 13651
    const/4 v0, 0x0

    move v6, v0

    :goto_15
    if-ge v6, v8, :cond_31

    .line 13652
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 13653
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_34

    .line 13656
    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v3

    .line 13657
    if-ge v3, v9, :cond_2e

    const/4 v3, 0x1

    :goto_16
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eq v3, v10, :cond_2f

    const/4 v3, -0x1

    .line 13659
    :goto_17
    const/4 v10, -0x1

    if-ne v3, v10, :cond_30

    .line 13660
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    .line 13651
    :goto_18
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v0

    goto :goto_15

    .line 13657
    :cond_2e
    const/4 v3, 0x0

    goto :goto_16

    :cond_2f
    const/4 v3, 0x1

    goto :goto_17

    .line 13662
    :cond_30
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ax;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_18

    .line 13670
    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput-object v7, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    .line 13671
    if-lez v5, :cond_32

    .line 13672
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Landroid/view/View;

    move-result-object v0

    .line 13673
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 13674
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v5, v0, Landroid/support/v7/widget/ah;->h:I

    .line 13675
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    .line 13676
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    .line 13990
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ah;->a(Landroid/view/View;)V

    .line 13677
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 13680
    :cond_32
    if-lez v4, :cond_33

    .line 13681
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Landroid/view/View;

    move-result-object v0

    .line 13682
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 13683
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v4, v0, Landroid/support/v7/widget/ah;->h:I

    .line 13684
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ah;->c:I

    .line 13685
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    .line 14990
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->a(Landroid/view/View;)V

    .line 13686
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 13688
    :cond_33
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    goto/16 :goto_b

    :cond_34
    move v0, v4

    move v3, v5

    goto :goto_18

    :cond_35
    move v2, v1

    move v1, v0

    goto/16 :goto_a

    :cond_36
    move v0, v1

    goto/16 :goto_8
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 223
    invoke-super {p0, p1}, Landroid/support/v7/widget/aN;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 224
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/D;

    move-result-object v2

    .line 9626
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    invoke-direct {p0, v3, v0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 9627
    if-nez v0, :cond_1

    move v0, v1

    .line 227
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/D;->b(I)V

    .line 9666
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 9667
    if-nez v0, :cond_2

    .line 228
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v4/view/a/D;->c(I)V

    .line 230
    :cond_0
    return-void

    .line 9627
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 9667
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1180
    invoke-super {p0, p1}, Landroid/support/v7/widget/aN;->a(Ljava/lang/String;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public final b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 256
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v1

    if-lez v1, :cond_2

    .line 239
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 240
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    xor-int/2addr v1, v2

    .line 241
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 242
    if-eqz v1, :cond_1

    .line 243
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Landroid/view/View;

    move-result-object v1

    .line 244
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 246
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Landroid/view/View;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 250
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 10070
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 960
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 961
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 962
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 17070
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 965
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()V

    .line 966
    return-void
.end method

.method public final c(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method

.method public final c(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    .line 1716
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()V

    .line 1717
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return-object v0

    .line 25453
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1722
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1725
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1727
    if-ne v3, v4, :cond_6

    .line 1728
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1732
    :goto_2
    if-eqz v2, :cond_0

    .line 1739
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1740
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v7}, Landroid/support/v7/widget/ax;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1741
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/aW;)V

    .line 1742
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput v6, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1743
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    iput-boolean v8, v1, Landroid/support/v7/widget/ah;->a:Z

    .line 1744
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/aW;Z)I

    .line 1746
    if-ne v3, v4, :cond_7

    .line 1747
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Landroid/view/View;

    move-result-object v1

    .line 1751
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1754
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 25455
    goto :goto_1

    :sswitch_1
    move v3, v5

    .line 25457
    goto :goto_1

    .line 25459
    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    .line 25462
    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    .line 25465
    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    .line 25468
    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1730
    :cond_6
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1749
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 25453
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/aW;)I
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/aW;)I

    move-result v0

    return v0
.end method
