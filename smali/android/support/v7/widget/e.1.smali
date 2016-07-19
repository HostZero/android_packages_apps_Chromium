.class final Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/support/v7/widget/h;

.field private synthetic b:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p2, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/h;

    .line 778
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->e()V

    .line 782
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->h(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 783
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/h;

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)Landroid/support/v7/widget/h;

    .line 786
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/e;)Landroid/support/v7/widget/e;

    .line 787
    return-void
.end method
