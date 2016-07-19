.class final Landroid/support/v7/widget/aa;
.super Landroid/support/v7/widget/ad;
.source "DefaultItemAnimator.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/ab;

.field private synthetic b:Landroid/support/v4/view/aP;

.field private synthetic c:Landroid/view/View;

.field private synthetic d:Landroid/support/v7/widget/S;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/ab;Landroid/support/v4/view/aP;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    iput-object p1, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v7/widget/S;

    iput-object p2, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ab;

    iput-object p3, p0, Landroid/support/v7/widget/aa;->b:Landroid/support/v4/view/aP;

    iput-object p4, p0, Landroid/support/v7/widget/aa;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ad;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/aa;->b:Landroid/support/v4/view/aP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/aa;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/aa;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/aa;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v7/widget/S;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ab;

    iget-object v1, v1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    .line 1291
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ab;

    iget-object v1, v1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->e(Landroid/support/v7/widget/S;)V

    .line 385
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method
