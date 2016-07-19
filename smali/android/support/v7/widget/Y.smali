.class final Landroid/support/v7/widget/Y;
.super Landroid/support/v7/widget/ad;
.source "DefaultItemAnimator.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/aY;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Landroid/support/v4/view/aP;

.field private synthetic e:Landroid/support/v7/widget/S;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;IILandroid/support/v4/view/aP;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Landroid/support/v7/widget/Y;->e:Landroid/support/v7/widget/S;

    iput-object p2, p0, Landroid/support/v7/widget/Y;->a:Landroid/support/v7/widget/aY;

    iput p3, p0, Landroid/support/v7/widget/Y;->b:I

    iput p4, p0, Landroid/support/v7/widget/Y;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/Y;->d:Landroid/support/v4/view/aP;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ad;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget v0, p0, Landroid/support/v7/widget/Y;->b:I

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 295
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Y;->c:I

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/Y;->d:Landroid/support/v4/view/aP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/Y;->e:Landroid/support/v7/widget/S;

    iget-object v1, p0, Landroid/support/v7/widget/Y;->a:Landroid/support/v7/widget/aY;

    .line 1266
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/Y;->e:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->g(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Y;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/Y;->e:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->e(Landroid/support/v7/widget/S;)V

    .line 305
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method
