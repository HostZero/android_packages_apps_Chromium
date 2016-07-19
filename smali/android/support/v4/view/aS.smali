.class Landroid/support/v4/view/aS;
.super Landroid/support/v4/view/aQ;
.source "ViewPropertyAnimatorCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v4/view/aQ;-><init>()V

    .line 524
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)J
    .locals 2

    .prologue
    .line 387
    .line 1042
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    .line 387
    return-wide v0
.end method

.method public final a(Landroid/support/v4/view/aP;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 462
    .line 1102
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 463
    return-void
.end method

.method public final a(Landroid/support/v4/view/aP;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 372
    .line 1030
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 373
    return-void
.end method

.method public a(Landroid/support/v4/view/aP;Landroid/view/View;Landroid/support/v4/view/bc;)V
    .locals 3

    .prologue
    .line 502
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    new-instance v0, Landroid/support/v4/view/aT;

    invoke-direct {v0, p1}, Landroid/support/v4/view/aT;-><init>(Landroid/support/v4/view/aP;)V

    .line 1136
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/v4/view/aZ;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/view/aZ;-><init>(Landroid/support/v4/view/bc;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 504
    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 2

    .prologue
    .line 367
    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 368
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 392
    .line 1046
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 393
    return-void
.end method

.method public final b(Landroid/support/v4/view/aP;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 497
    .line 1130
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 498
    return-void
.end method

.method public final b(Landroid/support/v4/view/aP;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 377
    .line 1034
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 378
    return-void
.end method

.method public final b(Landroid/view/View;J)V
    .locals 2

    .prologue
    .line 397
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 398
    return-void
.end method

.method public final c(Landroid/support/v4/view/aP;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 382
    .line 1038
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 383
    return-void
.end method

.method public final d(Landroid/support/v4/view/aP;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 442
    .line 1086
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 443
    return-void
.end method

.method public final e(Landroid/support/v4/view/aP;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 452
    .line 1094
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 453
    return-void
.end method
