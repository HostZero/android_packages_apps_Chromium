.class final Landroid/support/v7/widget/h;
.super Landroid/support/v7/internal/view/menu/v;
.source "ActionMenuPresenter.java"


# instance fields
.field private synthetic c:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 698
    iput-object p1, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    .line 699
    const/4 v4, 0x1

    const v5, 0x7f010072

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    .line 700
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->a(I)V

    .line 701
    iget-object v0, p1, Landroid/support/v7/widget/a;->e:Landroid/support/v7/widget/b;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 702
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/v;->onDismiss()V

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->d(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)Landroid/support/v7/widget/h;

    .line 711
    return-void
.end method
