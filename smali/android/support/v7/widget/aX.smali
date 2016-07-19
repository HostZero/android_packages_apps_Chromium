.class final Landroid/support/v7/widget/aX;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/support/v4/widget/W;

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:Z

.field private synthetic g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3776
    iput-object p1, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3767
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aX;->d:Landroid/view/animation/Interpolator;

    .line 3771
    iput-boolean v1, p0, Landroid/support/v7/widget/aX;->e:Z

    .line 3774
    iput-boolean v1, p0, Landroid/support/v7/widget/aX;->f:Z

    .line 3777
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/W;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    .line 3778
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 3904
    iget-boolean v0, p0, Landroid/support/v7/widget/aX;->e:Z

    if-eqz v0, :cond_0

    .line 3905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aX;->f:Z

    .line 3910
    :goto_0
    return-void

    .line 3907
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3908
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 3913
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3914
    iput v1, p0, Landroid/support/v7/widget/aX;->b:I

    iput v1, p0, Landroid/support/v7/widget/aX;->a:I

    .line 3915
    iget-object v0, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/W;->a(IIIIIIII)V

    .line 3917
    invoke-virtual {p0}, Landroid/support/v7/widget/aX;->a()V

    .line 3918
    return-void
.end method

.method public final a(IIII)V
    .locals 12

    .prologue
    .line 3925
    .line 4935
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4936
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4937
    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    .line 4938
    :goto_0
    const/4 v1, 0x0

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4939
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4940
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4941
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4942
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v8, v1

    div-float/2addr v5, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4943
    int-to-float v7, v6

    int-to-float v6, v6

    .line 5929
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 5930
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 5931
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 4943
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4947
    if-lez v4, :cond_3

    .line 4948
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4953
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5957
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 5961
    iget-object v1, p0, Landroid/support/v7/widget/aX;->d:Landroid/view/animation/Interpolator;

    if-eq v1, v0, :cond_0

    .line 5962
    iput-object v0, p0, Landroid/support/v7/widget/aX;->d:Landroid/view/animation/Interpolator;

    .line 5963
    iget-object v1, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/widget/W;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    .line 5965
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 5966
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aX;->b:I

    iput v0, p0, Landroid/support/v7/widget/aX;->a:I

    .line 5967
    iget-object v0, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/W;->a(IIIII)V

    .line 5968
    invoke-virtual {p0}, Landroid/support/v7/widget/aX;->a()V

    .line 3926
    return-void

    .line 4937
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4940
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4950
    :cond_3
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4951
    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_4
    move v0, v3

    .line 4950
    goto :goto_3
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3973
    iget-object v0, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    invoke-virtual {v0}, Landroid/support/v4/widget/W;->h()V

    .line 3974
    return-void
.end method

.method public final run()V
    .locals 14

    .prologue
    .line 3782
    .line 4892
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aX;->f:Z

    .line 4893
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aX;->e:Z

    .line 3783
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 3786
    iget-object v7, p0, Landroid/support/v7/widget/aX;->c:Landroid/support/v4/widget/W;

    .line 3787
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    .line 3788
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3789
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->b()I

    move-result v8

    .line 3790
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->c()I

    move-result v9

    .line 3791
    iget v0, p0, Landroid/support/v7/widget/aX;->a:I

    sub-int v10, v8, v0

    .line 3792
    iget v0, p0, Landroid/support/v7/widget/aX;->b:I

    sub-int v11, v9, v0

    .line 3793
    const/4 v3, 0x0

    .line 3794
    const/4 v1, 0x0

    .line 3795
    iput v8, p0, Landroid/support/v7/widget/aX;->a:I

    .line 3796
    iput v9, p0, Landroid/support/v7/widget/aX;->b:I

    .line 3797
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 3798
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/aG;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aG;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3799
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3800
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;)V

    .line 3801
    const-string/jumbo v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/e/a;->a(Ljava/lang/String;)V

    .line 3802
    if-eqz v10, :cond_0

    .line 3803
    iget-object v2, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v2, v10, v3, v4}, Landroid/support/v7/widget/aN;->a(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v3

    .line 3804
    sub-int v2, v10, v3

    .line 3806
    :cond_0
    if-eqz v11, :cond_1

    .line 3807
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aR;

    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/aW;

    invoke-virtual {v0, v11, v1, v4}, Landroid/support/v7/widget/aN;->b(ILandroid/support/v7/widget/aR;Landroid/support/v7/widget/aW;)I

    move-result v1

    .line 3808
    sub-int v0, v11, v1

    .line 3810
    :cond_1
    invoke-static {}, Landroid/support/v4/e/a;->a()V

    .line 3811
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)V

    .line 3813
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)V

    .line 3814
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_2
    move v13, v2

    move v2, v1

    move v1, v13

    .line 3829
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3830
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3832
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 3834
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V
    invoke-static {v4, v10, v11}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3836
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    .line 3837
    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->f()F

    move-result v4

    float-to-int v5, v4

    .line 3839
    const/4 v4, 0x0

    .line 3840
    if-eq v1, v8, :cond_1b

    .line 3841
    if-gez v1, :cond_13

    neg-int v4, v5

    :goto_0
    move v6, v4

    .line 3844
    :goto_1
    const/4 v4, 0x0

    .line 3845
    if-eq v0, v9, :cond_1a

    .line 3846
    if-gez v0, :cond_15

    neg-int v5, v5

    .line 3849
    :cond_6
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v12, 0x2

    if-eq v4, v12, :cond_7

    .line 3851
    iget-object v4, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 3853
    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v8, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/W;->d()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v9, :cond_9

    invoke-virtual {v7}, Landroid/support/v4/widget/W;->e()I

    move-result v0

    if-nez v0, :cond_a

    .line 3855
    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->h()V

    .line 3858
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    .line 3859
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3862
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3863
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3866
    :cond_d
    if-eqz v11, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    if-ne v2, v11, :cond_16

    const/4 v0, 0x1

    move v1, v0

    .line 3868
    :goto_3
    if-eqz v10, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/aN;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aN;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    if-ne v3, v10, :cond_17

    const/4 v0, 0x1

    .line 3870
    :goto_4
    if-nez v10, :cond_e

    if-eqz v11, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_18

    :cond_f
    const/4 v0, 0x1

    .line 3873
    :goto_5
    invoke-virtual {v7}, Landroid/support/v4/widget/W;->a()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_19

    .line 3874
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/aX;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4897
    :cond_11
    :goto_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aX;->e:Z

    .line 4898
    iget-boolean v0, p0, Landroid/support/v7/widget/aX;->f:Z

    if-eqz v0, :cond_12

    .line 4899
    invoke-virtual {p0}, Landroid/support/v7/widget/aX;->a()V

    .line 3889
    :cond_12
    return-void

    .line 3841
    :cond_13
    if-lez v1, :cond_14

    move v4, v5

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3846
    :cond_15
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3866
    :cond_16
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    .line 3868
    :cond_17
    const/4 v0, 0x0

    goto :goto_4

    .line 3870
    :cond_18
    const/4 v0, 0x0

    goto :goto_5

    .line 3876
    :cond_19
    invoke-virtual {p0}, Landroid/support/v7/widget/aX;->a()V

    goto :goto_6

    :cond_1a
    move v5, v4

    goto/16 :goto_2

    :cond_1b
    move v6, v4

    goto/16 :goto_1
.end method
