.class final Landroid/support/v7/widget/X;
.super Landroid/support/v7/widget/ad;
.source "DefaultItemAnimator.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/aY;

.field private synthetic b:Landroid/support/v4/view/aP;

.field private synthetic c:Landroid/support/v7/widget/S;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;Landroid/support/v4/view/aP;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Landroid/support/v7/widget/X;->c:Landroid/support/v7/widget/S;

    iput-object p2, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/aY;

    iput-object p3, p0, Landroid/support/v7/widget/X;->b:Landroid/support/v4/view/aP;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ad;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 235
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/X;->b:Landroid/support/v4/view/aP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/X;->c:Landroid/support/v7/widget/S;

    iget-object v1, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/aY;

    .line 1276
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/X;->c:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->f(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/X;->c:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->e(Landroid/support/v7/widget/S;)V

    .line 243
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
