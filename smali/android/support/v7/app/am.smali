.class final Landroid/support/v7/app/am;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    iget-object v3, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Z)Z

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Landroid/support/v7/app/aw;

    iget-object v3, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    iget-object v4, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v4}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v5}, Landroid/support/v7/app/aj;->d(Landroid/support/v7/app/aj;)Landroid/support/v7/media/t;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/media/t;->b()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/app/aw;-><init>(Landroid/support/v7/app/aj;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;Z)Z

    .line 348
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->f(Landroid/support/v7/app/aj;)V

    .line 349
    return-void

    :cond_0
    move v0, v2

    .line 338
    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->e(Landroid/support/v7/app/aj;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_1
.end method
