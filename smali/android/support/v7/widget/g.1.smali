.class final Landroid/support/v7/widget/g;
.super Landroid/support/v7/widget/an;
.source "ActionMenuPresenter.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/f;Landroid/view/View;Landroid/support/v7/widget/a;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()Landroid/support/v7/widget/aj;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 645
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->e()Z

    .line 646
    const/4 v0, 0x1

    goto :goto_0
.end method
