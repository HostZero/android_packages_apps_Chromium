.class final Landroid/support/v4/view/aT;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/bc;


# instance fields
.field private a:Landroid/support/v4/view/aP;


# direct methods
.method constructor <init>(Landroid/support/v4/view/aP;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    .line 530
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 571
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 572
    const/4 v1, 0x0

    .line 573
    instance-of v2, v0, Landroid/support/v4/view/bc;

    if-eqz v2, :cond_1

    .line 574
    check-cast v0, Landroid/support/v4/view/bc;

    .line 576
    :goto_0
    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0, p1}, Landroid/support/v4/view/bc;->onAnimationCancel(Landroid/view/View;)V

    .line 579
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->c(Landroid/support/v4/view/aP;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->c(Landroid/support/v4/view/aP;)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 554
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/aP;I)I

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->b(Landroid/support/v4/view/aP;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->b(Landroid/support/v4/view/aP;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 561
    instance-of v2, v0, Landroid/support/v4/view/bc;

    if-eqz v2, :cond_3

    .line 562
    check-cast v0, Landroid/support/v4/view/bc;

    .line 564
    :goto_0
    if-eqz v0, :cond_2

    .line 565
    invoke-interface {v0, p1}, Landroid/support/v4/view/bc;->onAnimationEnd(Landroid/view/View;)V

    .line 567
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->c(Landroid/support/v4/view/aP;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 535
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 537
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/aP;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Landroid/support/v4/view/aT;->a:Landroid/support/v4/view/aP;

    invoke-static {v0}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/aP;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 540
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 542
    instance-of v2, v0, Landroid/support/v4/view/bc;

    if-eqz v2, :cond_3

    .line 543
    check-cast v0, Landroid/support/v4/view/bc;

    .line 545
    :goto_0
    if-eqz v0, :cond_2

    .line 546
    invoke-interface {v0, p1}, Landroid/support/v4/view/bc;->onAnimationStart(Landroid/view/View;)V

    .line 548
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
