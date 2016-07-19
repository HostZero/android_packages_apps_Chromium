.class final Landroid/support/v7/widget/Z;
.super Landroid/support/v7/widget/ad;
.source "DefaultItemAnimator.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/ab;

.field private synthetic b:Landroid/support/v4/view/aP;

.field private synthetic c:Landroid/support/v7/widget/S;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/ab;Landroid/support/v4/view/aP;)V
    .locals 1

    .prologue
    .line 349
    iput-object p1, p0, Landroid/support/v7/widget/Z;->c:Landroid/support/v7/widget/S;

    iput-object p2, p0, Landroid/support/v7/widget/Z;->a:Landroid/support/v7/widget/ab;

    iput-object p3, p0, Landroid/support/v7/widget/Z;->b:Landroid/support/v4/view/aP;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ad;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/Z;->b:Landroid/support/v4/view/aP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 359
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 360
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/Z;->c:Landroid/support/v7/widget/S;

    iget-object v1, p0, Landroid/support/v7/widget/Z;->a:Landroid/support/v7/widget/ab;

    iget-object v1, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    .line 1291
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/Z;->c:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->a:Landroid/support/v7/widget/ab;

    iget-object v1, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/Z;->c:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->e(Landroid/support/v7/widget/S;)V

    .line 364
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
