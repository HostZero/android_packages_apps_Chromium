.class final Landroid/support/v7/internal/widget/Q;
.super Landroid/support/v4/view/bd;
.source "ToolbarWidgetWrapper.java"


# instance fields
.field private a:Z

.field private synthetic b:I

.field private synthetic c:Landroid/support/v7/internal/widget/O;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/O;I)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/internal/widget/Q;->c:Landroid/support/v7/internal/widget/O;

    iput p2, p0, Landroid/support/v7/internal/widget/Q;->b:I

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/Q;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/Q;->a:Z

    .line 613
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/Q;->a:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->c:Landroid/support/v7/internal/widget/O;

    invoke-static {v0}, Landroid/support/v7/internal/widget/O;->a(Landroid/support/v7/internal/widget/O;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/widget/Q;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 608
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->c:Landroid/support/v7/internal/widget/O;

    invoke-static {v0}, Landroid/support/v7/internal/widget/O;->a(Landroid/support/v7/internal/widget/O;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 601
    return-void
.end method
